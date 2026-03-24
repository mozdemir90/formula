import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import '../../../core/database/database_provider.dart';
import '../models/gamification.dart';

final gamificationProvider =
    StateNotifierProvider<GamificationNotifier, GamificationProgress>((ref) {
      final isar = ref.watch(databaseServiceProvider).isar;
      return GamificationNotifier(isar);
    });

class GamificationNotifier extends StateNotifier<GamificationProgress> {
  final Isar _isar;

  GamificationNotifier(this._isar) : super(GamificationProgress()) {
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    GamificationProgress? progress = await _isar.gamificationProgress
        .where()
        .findFirst();
    if (progress == null) {
      progress = GamificationProgress();
      await _isar.writeTxn(() async {
        await _isar.gamificationProgress.put(progress!);
      });
    }
    state = progress;
  }

  Future<void> markFormulaAsViewed(String formulaId) async {
    if (!state.viewedFormulaIds.contains(formulaId)) {
      final updatedViewed = List<String>.from(state.viewedFormulaIds)
        ..add(formulaId);
      final updatedBadges = List<String>.from(state.unlockedBadgeIds);

      // Kaşif Rozeti Kontrolü
      if (updatedViewed.length >= 5 &&
          !updatedBadges.contains('badge_explorer')) {
        updatedBadges.add('badge_explorer');
      }

      final newProgress = state
        ..viewedFormulaIds = updatedViewed
        ..unlockedBadgeIds = updatedBadges;
      await _updateStateAndDb(newProgress);
    }
  }

  Future<void> addXpForQuiz(String quizId, int xp) async {
    if (!state.completedQuizIds.contains(quizId)) {
      final updatedCompleted = List<String>.from(state.completedQuizIds)
        ..add(quizId);
      final newXp = state.totalXp + xp;

      final updatedBadges = List<String>.from(state.unlockedBadgeIds);
      // İlk quiz çözüldüğünde 'Çırak' rozeti verelim
      if (updatedCompleted.length == 1 &&
          !updatedBadges.contains('badge_apprentice')) {
        updatedBadges.add('badge_apprentice');
      }

      final newProgress = state
        ..completedQuizIds = updatedCompleted
        ..totalXp = newXp
        ..unlockedBadgeIds = updatedBadges;

      await _updateStateAndDb(newProgress);
    }
  }

  Future<void> _updateStateAndDb(GamificationProgress newProgress) async {
    await _isar.writeTxn(() async {
      await _isar.gamificationProgress.put(newProgress);
    });
    state = newProgress;

    // To trigger UI updates since state object reference might be the same
    state = GamificationProgress()
      ..id = newProgress.id
      ..totalXp = newProgress.totalXp
      ..unlockedBadgeIds = newProgress.unlockedBadgeIds
      ..viewedFormulaIds = newProgress.viewedFormulaIds
      ..completedQuizIds = newProgress.completedQuizIds;
  }
}
