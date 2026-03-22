import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import '../models/math_formula.dart';
import '../widgets/interactive_shape.dart';

class FormulaDetailScreen extends ConsumerStatefulWidget {
  final MathFormula formula;

  const FormulaDetailScreen({super.key, required this.formula});

  @override
  ConsumerState<FormulaDetailScreen> createState() =>
      _FormulaDetailScreenState();
}

class _FormulaDetailScreenState extends ConsumerState<FormulaDetailScreen> {
  late Map<String, double> currentValues;

  @override
  void initState() {
    super.initState();
    currentValues = {
      for (var v in widget.formula.variables ?? [])
        v.key!: v.defaultValue ?? v.min ?? 1.0,
    };
  }

  void _updateValue(String key, double value) {
    setState(() {
      currentValues[key] = value;
    });
  }

  String _getDynamicCalculation() {
    if (widget.formula.formulaId == 'pythagoras_01') {
      final a = currentValues['a'] ?? 3.0;
      final b = currentValues['b'] ?? 4.0;
      final cSquared = a * a + b * b;
      // To get accurate square root for displaying
      final double cVal = (cSquared > 0) ? cSquared : 0;

      // Calculate manual sqrt or simple representation
      // We will just show c = \sqrt{c^2}
      return 'c^2 = ${a.toStringAsFixed(0)}^2 + ${b.toStringAsFixed(0)}^2 \\\\ c^2 = ${(a * a).toStringAsFixed(0)} + ${(b * b).toStringAsFixed(0)} = ${cSquared.toStringAsFixed(0)} \\\\ c = \\sqrt{${cSquared.toStringAsFixed(0)}}';
    } else if (widget.formula.formulaId == 'rect_area_01') {
      final w = currentValues['w'] ?? 5.0;
      final h = currentValues['h'] ?? 10.0;
      final area = w * h;
      return 'A = ${w.toStringAsFixed(0)} \\times ${h.toStringAsFixed(0)} = ${area.toStringAsFixed(0)}';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.formula.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.formula.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            // LaTeX Ana Formül
            Center(
              child: Math.tex(
                widget.formula.latexFormula,
                textStyle: const TextStyle(fontSize: 28),
              ),
            ),
            const SizedBox(height: 24),
            // Çizim
            InteractiveShape(
              formulaId: widget.formula.formulaId,
              variableValues: currentValues,
            ),
            const SizedBox(height: 24),
            // Dinamik Hesaplama Sonucu
            Center(
              child: Math.tex(
                _getDynamicCalculation(),
                textStyle: const TextStyle(fontSize: 22, color: Colors.blue),
              ),
            ),
            const Divider(height: 48),
            // Slider Kontrolleri
            if (widget.formula.variables != null)
              ...widget.formula.variables!.map((v) {
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
                      onChanged: (val) => _updateValue(v.key!, val),
                    ),
                  ],
                );
              }),
          ],
        ),
      ),
    );
  }
}
