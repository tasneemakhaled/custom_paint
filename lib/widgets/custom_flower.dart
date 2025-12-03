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
                  right: -1, // ده اللي بيخليها تلزق في الآخر
                  top: 0, // ممكن تتحكمي في مكانها فوق او تحت من هنا
                  bottom: 0,
                  child: Center(
                    // Center عشان تتوسط رأسياً
                    child: SizedBox(
                      width: 80, // عرض الرسمة
                      height: 50, // طول الرسمة
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
                          width: 80,
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

// الرسام بتاعك زي ما هو (مع تعديل بسيط في القصimport 'package:flutter/material.dart';

class LeftHalfCircleRightRectPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Paint paint = Paint()
    //   ..color = Colors.green.shade400
    //   ..style = PaintingStyle.fill;
    // canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));
    // // circle
    // Offset center = Offset(size.width / 1.7, size.height / 2);
    // double redius = 25.0;

    // canvas.drawCircle(center, redius, paint);
    // Rect rect =
    //     // fromCenter => center point of rect
    //     Rect.fromCenter(
    //         center: Offset(center.dx + (redius * 2), center.dy),
    //         width: 100,
    //         height: 50);

    // canvas.drawRect(rect, paint);
    // Offset center2 = Offset(size.width / 1, size.height / 2);
    // double redius2 = 30.0;

    // canvas.drawCircle(center2, redius2, paint);
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8127215, size.height * 0.1786433);
    path_0.cubicTo(
      size.width * 0.9187658,
      size.height * 0.1379894,
      size.width * 0.9540506,
      size.height * 0.09945481,
      size.width * 0.9931013,
      size.height * 0.01518192,
    );
    path_0.lineTo(size.width * 0.9931013, size.height * 0.9911442);
    path_0.cubicTo(
      size.width * 0.9656203,
      size.height * 0.9038413,
      size.width * 0.9335190,
      size.height * 0.8665817,
      size.width * 0.8506962,
      size.height * 0.8180663,
    );
    path_0.cubicTo(
      size.width * 0.7422911,
      size.height * 0.8056010,
      size.width * 0.6878608,
      size.height * 0.8081394,
      size.width * 0.5943677,
      size.height * 0.8180663,
    );
    path_0.cubicTo(
      size.width * 0.4631310,
      size.height * 0.8043375,
      size.width * 0.4133165,
      size.height * 0.8085365,
      size.width * 0.3285449,
      size.height * 0.8180663,
    );
    path_0.cubicTo(
      size.width * 0.1756354,
      size.height * 0.8269663,
      size.width * 0.1202323,
      size.height * 0.7918635,
      size.width * 0.03424108,
      size.height * 0.7122971,
    );
    path_0.cubicTo(
      size.width * 0.004049835,
      size.height * 0.5901952,
      size.width * -0.0008770000,
      size.height * 0.5265173,
      size.width * 0.005760038,
      size.height * 0.4190279,
    );
    path_0.cubicTo(
      size.width * 0.04191627,
      size.height * 0.2668385,
      size.width * 0.07730253,
      size.height * 0.2103365,
      size.width * 0.1766462,
      size.height * 0.1786433,
    );
    path_0.cubicTo(
      size.width * 0.2068886,
      size.height * 0.1522885,
      size.width * 0.2256551,
      size.height * 0.1377308,
      size.width * 0.8127215,
      size.height * 0.1786433,
    );
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.green.shade400;
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// class SmoothLeftArrowPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = Colors.white
//       ..style = PaintingStyle.fill;
//     // final List<Offset> points = [
//     //   Offset(0, size.height * .1),
//     //   Offset(size.width * .1, size.height * .3),
//     //   Offset(size.width * 2, size.height * 0.5),
//     //   Offset(size.width * .09, size.height * 1.5),
//     //   Offset(0, size.height * 1.8),
//     // ];

//     // Path path = Path();

//     // path.moveTo(points[0].dx, points[0].dy);
//     // for (int i = 1; i < points.length - 1; i++) {
//     //   path.quadraticBezierTo(
//     //     points[i].dx,
//     //     points[i].dy,
//     //     (points[i].dx + points[i + 1].dx) / 1.5,
//     //     (points[i].dy + points[i + 1].dy) / 2,
//     //   );
//     // }

//     // // drow the last point
//     // path.lineTo(points.last.dx, points.last.dy);
