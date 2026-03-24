import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import '../models/math_formula.dart';
import '../providers/formula_state_provider.dart';
import '../widgets/interactive_shape.dart';
import '../../gamification/providers/gamification_provider.dart';
import '../../gamification/screens/quiz_screen.dart';

class FormulaDetailScreen extends ConsumerWidget {
  final MathFormula formula;

  const FormulaDetailScreen({super.key, required this.formula});

  String _getDynamicCalculation(Map<String, double> values) {
    if (formula.formulaId == 'pythagoras_01') {
      final a = values['a'] ?? 3.0;
      final b = values['b'] ?? 4.0;
      final cSquared = a * a + b * b;

      return 'c^2 = ${a.toStringAsFixed(0)}^2 + ${b.toStringAsFixed(0)}^2 \\\\ c^2 = ${(a * a).toStringAsFixed(0)} + ${(b * b).toStringAsFixed(0)} = ${cSquared.toStringAsFixed(0)} \\\\ c = \\sqrt{${cSquared.toStringAsFixed(0)}}';
    } else if (formula.formulaId == 'rect_area_01') {
      final w = values['w'] ?? 5.0;
      final h = values['h'] ?? 10.0;
      final area = w * h;
      return 'A = ${w.toStringAsFixed(0)} \\times ${h.toStringAsFixed(0)} = ${area.toStringAsFixed(0)}';
    }
    return '';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Sayfa açıldığında formülün incelendiğini kaydet
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(gamificationProvider.notifier)
          .markFormulaAsViewed(formula.formulaId);
    });

    final currentValues = ref.watch(formulaStateProvider(formula));
    final notifier = ref.read(formulaStateProvider(formula).notifier);

    return Scaffold(
      appBar: AppBar(title: Text(formula.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              formula.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            // LaTeX Ana Formül
            Center(
              child: Math.tex(
                formula.latexFormula,
                textStyle: const TextStyle(fontSize: 28),
              ),
            ),
            const SizedBox(height: 24),
            // Çizim
            InteractiveShape(
              formulaId: formula.formulaId,
              variableValues: currentValues,
            ),
            const SizedBox(height: 24),
            // Dinamik Hesaplama Sonucu
            Center(
              child: Math.tex(
                _getDynamicCalculation(currentValues),
                textStyle: const TextStyle(fontSize: 22, color: Colors.blue),
              ),
            ),
            const Divider(height: 48),
            // Slider Kontrolleri
            if (formula.variables != null)
              ...formula.variables!.map((v) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${v.name}: ${currentValues[v.key!]?.toStringAsFixed(0)}',
                    ),
                    Slider(
                      value: currentValues[v.key!]!,
                      min: v.min ?? 1.0,
                      max: v.max ?? 20.0,
                      divisions: ((v.max ?? 20.0) - (v.min ?? 1.0)).toInt(),
                      label: currentValues[v.key!]?.toStringAsFixed(0),
                      onChanged: (val) => notifier.updateValue(v.key!, val),
                    ),
                  ],
                );
              }),
            const SizedBox(height: 32),
            // Beni Test Et Butonu
            if (formula.quizzes != null && formula.quizzes!.isNotEmpty)
              ElevatedButton.icon(
                icon: const Icon(Icons.quiz),
                label: const Text(
                  'Beni Test Et',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.orange.shade300,
                  foregroundColor: Colors.black87,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizScreen(formula: formula),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
