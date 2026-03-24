import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/math_formula.dart';

class FormulaStateNotifier extends StateNotifier<Map<String, double>> {
  FormulaStateNotifier(MathFormula formula) : super(_initialize(formula));

  static Map<String, double> _initialize(MathFormula formula) {
    return {
      for (var v in formula.variables ?? [])
        v.key!: v.defaultValue ?? v.min ?? 1.0,
    };
  }

  void updateValue(String key, double value) {
    state = {...state, key: value};
  }
}

final formulaStateProvider =
    StateNotifierProvider.family<
      FormulaStateNotifier,
      Map<String, double>,
      MathFormula
    >((ref, formula) {
      return FormulaStateNotifier(formula);
    });
