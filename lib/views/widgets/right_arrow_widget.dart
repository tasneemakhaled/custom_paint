import 'package:flutter/material.dart';

class RPSCustomPainterRightArrow extends CustomPainter {
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
    path_0.moveTo(size.width * 1.0031500, size.height * 0.0003000);
    path_0.cubicTo(
      size.width * 1.0030375,
      size.height * 0.7185750,
      size.width * 1.0030375,
      size.height * 0.7185750,
      size.width * 1.0030000,
      size.height * 0.9580000,
    );
    path_0.cubicTo(
      size.width * 1.0135000,
      size.height * 0.7285000,
      size.width * 0.7039500,
      size.height * 0.7491000,
      size.width * 0.7010000,
      size.height * 0.4960000,
    );
    path_0.cubicTo(
      size.width * 0.7060000,
      size.height * 0.2528000,
      size.width * 1.0025500,
      size.height * 0.2941000,
      size.width * 1.0031500,
      size.height * 0.0003000,
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
