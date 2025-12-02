import 'package:custom_paint/views/third_view.dart';
import 'package:flutter/material.dart';

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
          clipBehavior:
              Clip.none, // للسماح للعناصر بالخروج قليلاً إذا لزم الأمر
          children: [
            // 1. الكارت الأبيض (الخلفية الأساسية)
            Positioned.fill(child: CustomPaint(painter: WhiteCardPainter())),

            // 2. صورة النبات (في المنتصف من الأعلى)
            Positioned(
              top: 20, // مسافة من أعلى الكارت
              left: 0,
              right: 0,
              child: Image.asset(
                "assets/images/first_image.png",
                fit: BoxFit.contain,
                height: 350, // تم ضبط الطول ليتناسب مع التصميم
              ),
            ),

            // 2. الزر الأيسر (Left Button)
            Positioned(
              bottom: 50, // ارتفاعه من تحت
              left: 0, // لازق في الشمال
              child: CustomPaint(
                size: const Size(180, 100), // حجم الزرار (عرض 60 وطول 100)
                painter: RPSCustomPainterLeftArrow(), // الكود الجديد تحت
                child: Container(
                  width: 180,
                  height: 100,
                  alignment: Alignment.centerLeft, // محاذاة السهم
                  padding: const EdgeInsets.only(left: 15), // تظبيط مكان السهم
                  child: const Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
            ),

            // 3. الزر الأيمن (Right Button)
            Positioned(
              bottom: 50, // نفس ارتفاع الشمال
              right: 0, // لازق في اليمين
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
                child: CustomPaint(
                  size: const Size(180, 100),
                  painter: RPSCustomPainterRightArrow(), // الكود الجديد تحت
                  child: Container(
                    width: 180,
                    height: 100,
                    alignment: Alignment.centerRight, // محاذاة السهم
                    padding: const EdgeInsets.only(
                      right: 15,
                    ), // تظبيط مكان السهم
                    child: const Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
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

            // 5. أيقونة القفل
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

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();

    // 1. روح لنقطة البداية (من كودك)
    path.moveTo(size.width * 0.3561000, size.height * 0.3980000);

    // 2. ارسم القبة (السطور بتاعتك زي ما هي)
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

    // 3. اقفل القبة (السطر اللي بيرجع للبدايه تاني)
    // ده اللي انا كنت مسحته، رجعتهولك تاني عشان يقفل الشكل ويبقى قبة بس
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
