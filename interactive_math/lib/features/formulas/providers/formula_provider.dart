import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/database/database_provider.dart';
import '../models/math_formula.dart';

final formulaRepositoryProvider = Provider<FormulaRepository>((ref) {
  final dbService = ref.watch(databaseServiceProvider);
  return FormulaRepository(dbService.isar);
});

class FormulaRepository {
  final Isar _isar;

  FormulaRepository(this._isar);

  Future<void> seedInitialFormulas() async {
    final count = await _isar.mathFormulas.count();
    if (count > 0) return; // Zaten dolu

    final pythagoras = MathFormula()
      ..formulaId = 'pythagoras_01'
      ..title = 'Pisagor Bağıntısı'
      ..gradeLevel = 8
      ..category = 'Geometri'
      ..latexFormula = r'a^2 + b^2 = c^2'
      ..description =
          'Bir dik üçgende dik kenarların uzunluklarının kareleri toplamı, hipotenüsün uzunluğunun karesine eşittir.'
      ..variables = [
        FormulaVariable()
          ..key = 'a'
          ..name = '1. Dik Kenar (a)'
          ..min = 1
          ..max = 20
          ..defaultValue = 3,
        FormulaVariable()
          ..key = 'b'
          ..name = '2. Dik Kenar (b)'
          ..min = 1
          ..max = 20
          ..defaultValue = 4,
      ]
      ..quizzes = [
        Quiz()
          ..quizId = 'q_pyth_1'
          ..question =
              "Dik kenarları 5 cm ve 12 cm olan bir dik üçgenin hipotenüsü kaç cm'dir?"
          ..options = ['10', '13', '15', '17']
          ..correctOptionIndex = 1,
      ];

    final rectangleArea = MathFormula()
      ..formulaId = 'rect_area_01'
      ..title = 'Dikdörtgenin Alanı'
      ..gradeLevel = 5
      ..category = 'Geometri'
      ..latexFormula = r'A = a \times b'
      ..description =
          'Dikdörtgenin alanı, uzun kenarı ile kısa kenarının çarpımına eşittir.'
      ..variables = [
        FormulaVariable()
          ..key = 'w'
          ..name = 'Genişlik (a)'
          ..min = 1
          ..max = 20
          ..defaultValue = 5,
        FormulaVariable()
          ..key = 'h'
          ..name = 'Yükseklik (b)'
          ..min = 1
          ..max = 20
          ..defaultValue = 10,
      ]
      ..quizzes = [
        Quiz()
          ..quizId = 'q_rect_1'
          ..question =
              'Kısa kenarı 4 cm, uzun kenarı 7 cm olan dikdörtgenin alanı kaç metrekaredir?'
          ..options = ['11', '14', '22', '28']
          ..correctOptionIndex = 3,
      ];

    await _isar.writeTxn(() async {
      await _isar.mathFormulas.putAll([pythagoras, rectangleArea]);
    });
  }

  Stream<List<MathFormula>> watchAllFormulas() {
    return _isar.mathFormulas.where().watch(fireImmediately: true);
  }

  Future<MathFormula?> getFormulaById(String formulaId) async {
    return _isar.mathFormulas.getByFormulaId(formulaId);
  }
}

final formulasStreamProvider = StreamProvider<List<MathFormula>>((ref) {
  final repo = ref.watch(formulaRepositoryProvider);
  return repo.watchAllFormulas();
});
