import 'dart:ui' as ui;
import 'package:custom_paint/views/thirdd_view.dart';
import 'package:flutter/material.dart';

import 'package:custom_paint/views/fourthh_view.dart';
import 'package:custom_paint/widgets/left_arrow_widget.dart';
import 'package:custom_paint/widgets/right_arrow_widget.dart';
import 'package:custom_paint/widgets/white_card_painter.dart';

class FlowerDetails extends StatelessWidget {
  const FlowerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff166b0a),
      body: SizedBox(
        height: size.height * 0.9,
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // 1. الكارت الأبيض (الخلفية الأساسية)
            Positioned.fill(child: CustomPaint(painter: WhiteCardPainter())),

            // 2. صورة النبات
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: Image.asset(
                "assets/images/first_image.png",
                fit: BoxFit.contain,
                height: 350,
              ),
            ),

            // ==========================================================
            // 3. زرار الـ x2 (في النص تحت الكارت الأبيض مباشرة)
            // ==========================================================
            Positioned(
              bottom: 25, // نفس مستوى الزراير الجانبية تقريباً
              left: 0,
              right: 0, // عشان يتسنتر في النص
              child: Center(
                child: CustomPaint(
                  size: const Size(110, 70), // حجم الزرار (عرض وارتفاع)
                  painter: X2ButtonPainter(), // الكلاس بتاع الشكل الأخضر
                  child: Container(
                    width: 110,
                    height: 70,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(bottom: 5),
                    child: const Text(
                      "x2",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff083204), // لون النص زيتي غامق
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // ==========================================================

            // 4. الزر الأيسر (Left Button)
            Positioned(
              bottom: 50,
              left: 0,
              child: SizedBox(
                width: 180,
                height: 100,
                child: CustomPaint(
                  size: const Size(180, 100),
                  painter: RPSCustomPainterLeftArrow(),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 15),
                    child: const Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                ),
              ),
            ),

            // 5. الزر الأيمن (Right Button)
            Positioned(
              bottom: 50,
              right: 0,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return ThirdView();
                      },
                    ),
                  );
                },
                child: SizedBox(
                  width: 180,
                  height: 100,
                  child: CustomPaint(
                    size: const Size(180, 100),
                    painter: RPSCustomPainterRightArrow(),
                    child: Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 15),
                      child: const Icon(
                        Icons.home,
                        color: Colors.black,
                        size: 28,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // 6. الشكل السفلي الصغير (القفل)
            Positioned(
              bottom: -118,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 90,
                width: double.infinity,
                child: CustomPaint(
                  size: Size.infinite,
                  painter: RPSCustomPainter(),
                ),
              ),
            ),

            Positioned(
              bottom: -50,
              right: 170,
              top: 610,
              child: const Icon(Icons.lock, color: Colors.black, size: 22),
            ),
          ],
        ),
      ),
    );
  }
}

class X2ButtonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color(0xff92d588)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7493500, size.height * 0.8055000);
    path_0.cubicTo(
      size.width * 0.5664500,
      size.height * 0.7095000,
      size.width * 0.4510500,
      size.height * 0.7112500,
      size.width * 0.2654500,
      size.height * 0.8037500,
    );
    path_0.cubicTo(
      size.width * 0.1459000,
      size.height * 0.6962500,
      size.width * 0.0229000,
      size.height * 0.7191667,
      size.width * 0.2354000,
      size.height * -0.0071667,
    );
    path_0.cubicTo(
      size.width * 0.4342500,
      size.height * -0.0086667,
      size.width * 0.6080500,
      size.height * 0.0103333,
      size.width * 0.7620500,
      size.height * 0.0072500,
    );
    path_0.cubicTo(
      size.width * 0.9787500,
      size.height * 0.7820833,
      size.width * 0.8550000,
      size.height * 0.7151667,
      size.width * 0.7493500,
      size.height * 0.8055000,
    );
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    // Paint paint_stroke_0 = Paint()
    //     ..color = const Color.fromARGB(255, 33, 150, 243)
    //     ..style = PaintingStyle.stroke
    //     ..strokeWidth = size.width*0.01
    //     ..strokeCap = StrokeCap.butt
    //     ..strokeJoin = StrokeJoin.miter;

    //   canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

// ============================================================
// باقي الكلاسات بتاعتك زي ما هي
// ============================================================
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color(0xff92d588)
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(size.width * 0.3561000, size.height * 0.3980000);
    path.cubicTo(
      size.width * 0.4408500,
      size.height * 0.4078000,
      size.width * 0.4247500,
      size.height * 0.0090000,
      size.width * 0.4995000,
      size.height * 0.0100000,
    );
    path.cubicTo(
      size.width * 0.5741250,
      size.height * 0.0150000,
      size.width * 0.5270250,
      size.height * 0.3910000,
      size.width * 0.6546000,
      size.height * 0.4028000,
    );
    path.cubicTo(
      size.width * 0.5211750,
      size.height * 0.4048000,
      size.width * 0.5339750,
      size.height * 0.3856000,
      size.width * 0.3561000,
      size.height * 0.3980000,
    );
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
