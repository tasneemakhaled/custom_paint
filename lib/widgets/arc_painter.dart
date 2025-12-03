import 'dart:math';

import 'package:flutter/material.dart';

class ArcMenu extends StatelessWidget {
  const ArcMenu({super.key});

  // نصف قطر القوس الرمادي
  final double arcRadius = 140.0;
  // حجم الدائرة الكبيرة الرئيسية
  final double mainBubbleSize = 160.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      clipBehavior: Clip.none, // للسماح للعناصر بالخروج عن حدود الحاوية
      children: [
        // 1. رسم القوس الرمادي (The Gray Arc Border)
        CustomPaint(
          size: Size(arcRadius * 2, arcRadius * 2),
          painter: ArcPainter(radius: arcRadius),
        ),

        // 2. الجزء المتصل (الرقبة) بين الدائرة الكبيرة ورقم 5
        // نقوم برسمها يدوياً لتبدو متصلة (Liquid effect)
        Positioned(
          bottom: 0,
          left: 0,
          child: CustomPaint(painter: ConnectorPainter()),
        ),

        // 3. الدوائر الصغيرة (The 3 Circles)
        // يتم حساب موقعها بناءً على الزاوية ونصف القطر
        _buildMenuItem(
          text: "1",
          angle: 80,
          isSelected: false,
        ), // الدائرة العليا
        _buildMenuItem(
          text: "5",
          subText: "pack",
          angle: 45,
          isSelected: true,
        ), // الدائرة الوسطى
        _buildMenuItem(
          text: "10",
          subText: "pack",
          angle: 10,
          isSelected: false,
        ), // الدائرة السفلى
        // 4. الدائرة البيضاء الكبيرة (Main Bubble)
        Positioned(
          bottom: -40, // إزاحة للأسفل
          left: -40, // إزاحة لليسار
          child: Container(
            width: mainBubbleSize,
            height: mainBubbleSize,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 15,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(height: 20), // مسافة لتعويض الإزاحة
                Text(
                  "£24.5",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "5 pack",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // دالة مساعدة لإنشاء الدوائر الصغيرة وتحديد مكانها رياضياً
  Widget _buildMenuItem({
    required String text,
    String? subText,
    required double angle,
    required bool isSelected,
  }) {
    // تحويل الزاوية من درجات إلى راديان
    final double rad = angle * (pi / 180);

    // حساب الموقع (x, y) بناءً على نصف القطر
    // نستخدم bottom و left لذا الحساب يبدأ من الزاوية اليسرى السفلية
    final double bottomOffset =
        (arcRadius * sin(rad)) - 20; // -20 لنصف حجم الدائرة الصغيرة
    final double leftOffset = (arcRadius * cos(rad)) - 20;

    return Positioned(
      bottom: bottomOffset,
      left: leftOffset,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : const Color(0xFF444444),
          shape: BoxShape.circle,
          border: isSelected
              ? Border.all(color: const Color(0xFF151515), width: 3)
              : null,
          boxShadow: isSelected
              ? [BoxShadow(color: Colors.black26, blurRadius: 4)]
              : [],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.black : Colors.white,
              ),
            ),
            if (subText != null)
              Text(
                subText,
                style: TextStyle(
                  fontSize: 8,
                  color: isSelected ? Colors.black : Colors.white70,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// الرسام الخاص بالقوس الرمادي
class ArcPainter extends CustomPainter {
  final double radius;
  ArcPainter({required this.radius});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey[700]!
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    // مركز الدائرة هو الزاوية اليسرى السفلية (0, size.height)
    // لكننا في Stack ونريد المركز عند (0,0) بالنسبة للحاوية
    // سنعتبر المركز (0,0) ونرسم القوس في الربع الأول

    final center = Offset(0, 0);
    final rect = Rect.fromCircle(center: center, radius: radius);

    // رسم القوس من زاوية 0 إلى 90 درجة (pi/2)
    // في Flutter الزوايا: 0 هو اليمين (شرق)، -pi/2 هو الأعلى (شمال)
    // نريد القوس في الربع العلوي الأيمن بالنسبة للنقطة (0,0) إذا كانت في الأسفل
    // الأسهل: تخيل المركز هو (0,0) في الأسفل-اليسار

    canvas.drawArc(rect, -pi / 2, pi / 2, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// (اختياري) رسام الشكل المتصل الأبيض بين الدائرة الكبيرة والدائرة المختارة
class ConnectorPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    // مسار يربط بين الدائرة الكبيرة والدائرة رقم 5
    // هذه إحداثيات تقديرية لمحاكاة الشكل السائل (Metaball look)
    final path = Path();
    path.moveTo(60, 40); // نقطة على الدائرة الكبيرة
    path.quadraticBezierTo(90, 80, 100, 100); // منحنى نحو الدائرة الصغيرة
    path.lineTo(80, 110);
    path.quadraticBezierTo(60, 90, 40, 60); // العودة
    path.close();

    // ملاحظة: لإتقان هذا الشكل تماماً نحتاج حسابات دقيقة
    // لكن في هذا المثال نعتمد على تداخل الطبقات (Stack)
    // الدائرة الكبيرة فوق هذا الشكل ستخفي العيوب
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
