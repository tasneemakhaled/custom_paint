import 'package:flutter/material.dart';

class LeftHalfCircleRightRectPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.green.shade400
      ..style = PaintingStyle.fill;
    canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));
    // circle
    Offset center = Offset(size.width / 1.7, size.height / 2);
    double redius = 25.0;

    canvas.drawCircle(center, redius, paint);
    Rect rect =
        // fromCenter => center point of rect
        Rect.fromCenter(
          center: Offset(center.dx + (redius * 2), center.dy),
          width: 100,
          height: 50,
        );

    canvas.drawRect(rect, paint);
    Offset center2 = Offset(size.width / 1, size.height / 2);
    double redius2 = 30.0;

    canvas.drawCircle(center2, redius2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
