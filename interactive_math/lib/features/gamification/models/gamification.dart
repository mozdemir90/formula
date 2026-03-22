import 'package:isar/isar.dart';

part 'gamification.g.dart';

@collection
class GamificationProgress {
  Id id = Isar.autoIncrement;

  int totalXp = 0;

  List<String> unlockedBadgeIds = [];

  List<String> viewedFormulaIds = [];

  List<String> completedQuizIds = [];
}
