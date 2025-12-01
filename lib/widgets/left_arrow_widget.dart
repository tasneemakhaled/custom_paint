import 'package:flutter/material.dart';

class RPSCustomPainterLeftArrow extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0010000, size.height * 0.0220000);
    path_0.cubicTo(
      size.width * -0.0027500,
      size.height * 0.7420000,
      size.width * 0.0012500,
      size.height * 0.7540000,
      0,
      size.height * 0.9940000,
    );
    path_0.cubicTo(
      size.width * 0.0435000,
      size.height * 0.6875000,
      size.width * 0.2965000,
      size.height * 0.7025000,
      size.width * 0.2980000,
      size.height * 0.5080000,
    );
    path_0.cubicTo(
      size.width * 0.2977500,
      size.height * 0.3105000,
      size.width * 0.1457500,
      size.height * 0.3705000,
      size.width * 0.0010000,
      size.height * 0.0220000,
    );
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
