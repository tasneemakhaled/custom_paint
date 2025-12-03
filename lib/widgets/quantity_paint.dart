import 'package:flutter/material.dart';

class QuantityPaint extends StatefulWidget {
  const QuantityPaint({super.key});

  @override
  State<QuantityPaint> createState() => _QuantityPaintState();
}

class _QuantityPaintState extends State<QuantityPaint> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
        MediaQuery.of(context).size.width / 2.6,
        (MediaQuery.of(context).size.height * .2).toDouble(),
      ),
      painter: RPSCustomPainter(),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8366408, size.height * 0.02857673);
    path_0.cubicTo(
      size.width * 0.8767078,
      size.height * -0.004681170,
      size.width * 0.9020751,
      size.height * -0.01036003,
      size.width * 0.9583056,
      size.height * 0.02857673,
    );
    path_0.cubicTo(
      size.width * 0.9772788,
      size.height * 0.04867865,
      size.width * 0.9858928,
      size.height * 0.06144357,
      size.width * 0.9957426,
      size.height * 0.08833889,
    );
    path_0.cubicTo(
      size.width * 1.002815,
      size.height * 0.1248301,
      size.width * 0.9978579,
      size.height * 0.1483038,
      size.width * 0.9716756,
      size.height * 0.1962026,
    );
    path_0.cubicTo(
      size.width * 0.9505335,
      size.height * 0.2112289,
      size.width * 0.9310483,
      size.height * 0.2184222,
      size.width * 0.8780885,
      size.height * 0.2282702,
    );
    path_0.cubicTo(
      size.width * 0.8281099,
      size.height * 0.2469558,
      size.width * 0.8184638,
      size.height * 0.2558465,
      size.width * 0.7978686,
      size.height * 0.2719985,
    );
    path_0.cubicTo(
      size.width * 0.7623914,
      size.height * 0.3038216,
      size.width * 0.7545523,
      size.height * 0.3224094,
      size.width * 0.7564209,
      size.height * 0.3565409,
    );
    path_0.cubicTo(
      size.width * 0.7931555,
      size.height * 0.4173392,
      size.width * 0.8027855,
      size.height * 0.4526550,
      size.width * 0.8219330,
      size.height * 0.5154211,
    );
    path_0.cubicTo(
      size.width * 0.8384048,
      size.height * 0.6040234,
      size.width * 0.8406381,
      size.height * 0.6519708,
      size.width * 0.8366408,
      size.height * 0.7355205,
    );
    path_0.cubicTo(
      size.width * 0.8127614,
      size.height * 0.8298801,
      size.width * 0.7911448,
      size.height * 0.8811550,
      size.width * 0.7403780,
      size.height * 0.9701959,
    );
    path_0.cubicTo(
      size.width * 0.5456273,
      size.height * 1.007319,
      size.width * 0.4364343,
      size.height * 1.008646,
      size.width * 0.2416836,
      size.height * 0.9701959,
    );
    path_0.cubicTo(
      size.width * 0.1096276,
      size.height * 0.8836491,
      size.width * 0.04713485,
      size.height * 0.8281287,
      size.width * 0.01172268,
      size.height * 0.6830468,
    );
    path_0.cubicTo(
      size.width * 0.0007495040,
      size.height * 0.4787485,
      size.width * -0.008543485,
      size.height * 0.3515936,
      size.width * 0.02241853,
      size.height * 0.3157281,
    );
    path_0.cubicTo(
      size.width * 0.06016408,
      size.height * 0.2745132,
      size.width * 0.07634504,
      size.height * 0.2512933,
      size.width * 0.1454209,
      size.height * 0.2107787,
    );
    path_0.cubicTo(
      size.width * 0.1905394,
      size.height * 0.1800196,
      size.width * 0.2155735,
      size.height * 0.1656222,
      size.width * 0.2577276,
      size.height * 0.1670503,
    );
    path_0.cubicTo(
      size.width * 0.3113780,
      size.height * 0.1451450,
      size.width * 0.3401046,
      size.height * 0.1420444,
      size.width * 0.3887507,
      size.height * 0.1524740,
    );
    path_0.cubicTo(
      size.width * 0.4288097,
      size.height * 0.1470436,
      size.width * 0.4511448,
      size.height * 0.1477576,
      size.width * 0.4903619,
      size.height * 0.1670503,
    );
    path_0.cubicTo(
      size.width * 0.5322708,
      size.height * 0.1808582,
      size.width * 0.5556890,
      size.height * 0.1903588,
      size.width * 0.5973217,
      size.height * 0.2107787,
    );
    path_0.cubicTo(
      size.width * 0.6314906,
      size.height * 0.2407023,
      size.width * 0.6498686,
      size.height * 0.2506661,
      size.width * 0.6802145,
      size.height * 0.2472190,
    );
    path_0.cubicTo(
      size.width * 0.7111769,
      size.height * 0.2410289,
      size.width * 0.7281448,
      size.height * 0.2330883,
      size.width * 0.7564209,
      size.height * 0.1962026,
    );
    path_0.cubicTo(
      size.width * 0.7564209,
      size.height * 0.1962026,
      size.width * 0.7902708,
      size.height * 0.1437281,
      size.width * 0.7978686,
      size.height * 0.1087456,
    );
    path_0.cubicTo(
      size.width * 0.8054665,
      size.height * 0.07376316,
      size.width * 0.8028552,
      size.height * 0.04544094,
      size.width * 0.8366408,
      size.height * 0.02857673,
    );
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_0_stroke.color = Color(0xffFFFAFA).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFFFCFC).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
