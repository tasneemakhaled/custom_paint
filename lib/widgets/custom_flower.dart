import 'package:custom_paint/views/flower_details.dart';
import 'package:flutter/material.dart';

// تأكدي من استدعاء صفحة التفاصيل بشكل صحيح
// import 'package:custom_paint/views/flower_details.dart';

class CustomFlower extends StatelessWidget {
  const CustomFlower({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    const double cardWidth = 280;
    const double cardHeight = 120;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: cardWidth,
        height: cardHeight,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return FlowerDetails();
                },
              ),
            );
          },

          child: Container(
            width: cardWidth,
            height: cardHeight,
            // 1. خاصية القص عشان الرسمة الخضراء تاخد دوران الكارت
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            // 2. استخدمنا Stack عشان نركب الطبقات فوق بعض
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                // --- الطبقة الأولى: الرسمة الخضراء (لازقة في اليمين) ---
                Positioned(
                  right: 0, // ده اللي بيخليها تلزق في الآخر
                  top: 0, // ممكن تتحكمي في مكانها فوق او تحت من هنا
                  bottom: 0,
                  child: Center(
                    // Center عشان تتوسط رأسياً
                    child: SizedBox(
                      width: 100, // عرض الرسمة
                      height: 80, // طول الرسمة
                      child: CustomPaint(
                        painter: LeftHalfCircleRightRectPainter(),
                      ),
                    ),
                  ),
                ),

                // --- الطبقة الثانية: المحتوى (صورة وكلام) ---
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      // الصورة
                      ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: Image.asset(
                          image,
                          width: 70,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 8), // مسافة صغيرة
                      // الكلام
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.star, color: Colors.amber, size: 10),
                                Icon(Icons.star, color: Colors.amber, size: 10),
                                Icon(Icons.star, color: Colors.amber, size: 10),
                                Icon(Icons.star, color: Colors.amber, size: 10),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.grey,
                                  size: 10,
                                ),
                              ],
                            ),
                            const SizedBox(height: 2),
                            const Text(
                              'Banana tree',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 2),
                            const Text(
                              '\$78',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 2),

                            Row(
                              children: [
                                _buildCounterButton(Icons.remove),
                                const Text(
                                  ' x2 ',
                                  style: TextStyle(fontSize: 12),
                                ),
                                _buildCounterButton(Icons.add),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 50),
                    ],
                  ),
                ),

                const Positioned(
                  right: 15,
                  child: Icon(Icons.lock, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // دالة مساعدة لزرار العداد عشان الكود يبقى أنضف
  Widget _buildCounterButton(IconData icon) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff92d588),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Icon(icon, size: 10, color: Colors.white),
      ),
    );
  }
}

// الرسام بتاعك زي ما هو (مع تعديل بسيط في القص)
class LeftHalfCircleRightRectPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color =
          const Color(0xff92d588) // نفس لون الديزاين
      ..style = PaintingStyle.fill;

    // شيلنا clipRect من هنا عشان إحنا عملنا clip في الكونتينر الرئيسي

    Offset center = Offset(size.width / 1.5, size.height / 2);
    double radius = 25.0;

    canvas.drawCircle(center, radius, paint);

    Rect rect = Rect.fromCenter(
      center: Offset(center.dx + (radius * 2), center.dy),
      width: 90,
      height: 50,
    );
    canvas.drawRect(rect, paint);

    Offset center2 = Offset(size.width / 1, size.height / 2);
    double radius2 = 28.0;
    canvas.drawCircle(center2, radius2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
