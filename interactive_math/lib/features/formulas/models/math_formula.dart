import 'package:isar/isar.dart';

part 'math_formula.g.dart';

@collection
class MathFormula {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String formulaId;

  late String title;

  late int gradeLevel;

  late String category;

  late String latexFormula;

  late String description;

  List<FormulaVariable>? variables;

  List<Quiz>? quizzes;
}

@embedded
class FormulaVariable {
  String? key;
  String? name;
  double? min;
  double? max;
  double? defaultValue;
}

@embedded
class Quiz {
  String? quizId;
  String? question;
  List<String>? options;
  int? correctOptionIndex;
}
