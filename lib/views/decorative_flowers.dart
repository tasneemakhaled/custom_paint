import 'package:custom_paint/widgets/left_arrow_widget.dart';
import 'package:custom_paint/widgets/custom_flower.dart';
import 'package:custom_paint/widgets/right_arrow_widget.dart';
import 'package:flutter/material.dart';

class DecorativeFlowers extends StatelessWidget {
  const DecorativeFlowers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff166b0a),
      appBar: AppBar(
        backgroundColor: const Color(0xff166b0a),
        elevation: 0,
        title: const Text(
          'Decorative flowers',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.dehaze, color: Colors.white),
          ),
        ],
        leading: const Icon(Icons.arrow_back_ios, color: Colors.white),
      ),

      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // 1. القائمة (المحتوى)
          ListView(
            padding: const EdgeInsets.only(
              bottom: 120,
            ), // زودنا المسافة عشان الزراير مغتغطيش عليه
            children: const [
              CustomFlower(image: 'assets/images/first_image.png'),
              CustomFlower(image: 'assets/images/second_photo.jpg'),
              CustomFlower(image: 'assets/images/third_image.jpg'),
            ],
          ),

          // 2. الزر الأيسر (Left Button)
          Positioned(
            bottom: 80, // ارتفاعه من تحت
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
                  Icons.arrow_back_ios,
                  color: Colors.black54,
                  size: 20,
                ),
              ),
            ),
          ),

          // 3. الزر الأيمن (Right Button)
          Positioned(
            bottom: 80, // نفس ارتفاع الشمال
            right: 0, // لازق في اليمين
            child: CustomPaint(
              size: const Size(180, 100),
              painter: RPSCustomPainterRightArrow(), // الكود الجديد تحت
              child: Container(
                width: 180,
                height: 100,
                alignment: Alignment.centerRight, // محاذاة السهم
                padding: const EdgeInsets.only(right: 15), // تظبيط مكان السهم
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                  size: 20,
                ),
              ),
            ),
          ),

          // 4. القبة السفلية (بتاعتك زي ما هي)
          Positioned(
            bottom: -55,
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
            bottom: 5,
            child: const Icon(Icons.lock, color: Colors.black, size: 22),
          ),
        ],
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
