import 'package:flutter/material.dart';

class InteractiveShape extends StatelessWidget {
  final String formulaId;
  final Map<String, double> variableValues;

  const InteractiveShape({
    super.key,
    required this.formulaId,
    required this.variableValues,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: CustomPaint(
        painter: _ShapePainter(formulaId: formulaId, values: variableValues),
      ),
    );
  }
}

class _ShapePainter extends CustomPainter {
  final String formulaId;
  final Map<String, double> values;

  _ShapePainter({required this.formulaId, required this.values});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue.shade700
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    final fillPaint = Paint()
      ..color = Colors.blue.withOpacity(0.2)
      ..style = PaintingStyle.fill;

    if (formulaId == 'pythagoras_01') {
      _drawRightTriangle(canvas, size, paint, fillPaint);
    } else if (formulaId == 'rect_area_01') {
      _drawRectangle(canvas, size, paint, fillPaint);
    }
  }

  void _drawRightTriangle(
    Canvas canvas,
    Size size,
    Paint strokePaint,
    Paint fillPaint,
  ) {
    // a = dik kenar (y), b = dik kenar (x)
    final a = values['a'] ?? 3.0;
    final b = values['b'] ?? 4.0;

    // Ölçekleme (Scale to fit)
    final maxVal = (a > b ? a : b) + 2;
    final scale = size.height / maxVal;

    final pxA = b * scale;
    final pyA = a * scale;

    final offsetX = (size.width - pxA) / 2;
    final offsetY = (size.height + pyA) / 2;

    final path = Path()
      ..moveTo(offsetX, offsetY) // Sol alt köşe
      ..lineTo(offsetX + pxA, offsetY) // Sağ alt köşe (b)
      ..lineTo(offsetX, offsetY - pyA) // Sol üst köşe (a)
      ..close();

    canvas.drawPath(path, fillPaint);
    canvas.drawPath(path, strokePaint);

    // Dik açı işareti
    final rectPath = Path()
      ..moveTo(offsetX + 15, offsetY)
      ..lineTo(offsetX + 15, offsetY - 15)
      ..lineTo(offsetX, offsetY - 15);
    canvas.drawPath(rectPath, strokePaint..strokeWidth = 1.5);
  }

  void _drawRectangle(
    Canvas canvas,
    Size size,
    Paint strokePaint,
    Paint fillPaint,
  ) {
    final w = values['w'] ?? 5.0;
    final h = values['h'] ?? 10.0;

    final maxVal = (w > h ? w : h) + 2;
    final scale = size.height / maxVal;

    final pxW = w * scale;
    final pxH = h * scale;

    final offsetX = (size.width - pxW) / 2;
    final offsetY = (size.height - pxH) / 2;

    final rect = Rect.fromLTWH(offsetX, offsetY, pxW, pxH);

    canvas.drawRect(rect, fillPaint);
    canvas.drawRect(rect, strokePaint);
  }

  @override
  bool shouldRepaint(covariant _ShapePainter oldDelegate) {
    return oldDelegate.formulaId != formulaId || oldDelegate.values != values;
  }
}
