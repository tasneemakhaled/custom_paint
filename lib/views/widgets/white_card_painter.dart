import 'package:flutter/material.dart';
import 'dart:ui';

class WhiteCardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // create paint object to define color and style of paint
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    // create path object to define shape
    Path path = Path();

    path.moveTo(0, 0);

    // left side line
    path.lineTo(0, size.height * 0.5);

    Offset control = Offset(
      size.width * 0.5,
      size.height * 1,
    ); // how deep the curve is
    Offset right = Offset(size.width, size.height * 0.5);

    // Single smooth curve from left → right
    path.quadraticBezierTo(control.dx, control.dy, right.dx, right.dy);

    path.lineTo(size.width, 0);
    Offset center = Offset(size.width * .5, size.height / 2);
    double redius = size.width / 1.86;

    canvas.drawCircle(center, redius, paint);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
