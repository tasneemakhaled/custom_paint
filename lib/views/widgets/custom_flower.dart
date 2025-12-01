import 'package:flutter/material.dart';

class CustomFlower extends StatelessWidget {
  const CustomFlower({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    // ثبتنا الأبعاد للكارت كله
    const double cardWidth = 230;
    const double cardHeight = 100;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: cardWidth,
        height: cardHeight,
        child: Stack(
          children: [
            // ---------------------------------------------------------
            // 2. الرسمة الخضراء (فوق الكارت)
            // ---------------------------------------------------------
            Positioned.fill(child: CustomPaint(painter: RPSCustomPainter())),

            // ---------------------------------------------------------
            // 3. أيقونة القفل
            // ---------------------------------------------------------
            const Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: Align(
                alignment: Alignment(0.9, 0.15),
                child: Icon(Icons.lock, size: 14, color: Colors.white),
              ),
            ),
            // ---------------------------------------------------------
            // 1. الكارت الأبيض ومحتواه
            // ---------------------------------------------------------
            Container(
              width: cardWidth,
              height: cardHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Padding(
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
                    const SizedBox(width: 8),
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
                          const SizedBox(height: 4),
                          const Text(
                            'Banana tree',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            '\$78',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xff92d588),
                                  shape: BoxShape.circle,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Icon(
                                    Icons.remove,
                                    size: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Text(
                                ' x2 ',
                                style: TextStyle(fontSize: 12),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xff92d588),
                                  shape: BoxShape.circle,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Icon(
                                    Icons.add,
                                    size: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // مسافة عشان الكلام ميوصلش للآخر
                    const SizedBox(width: 30),
                  ],
                ),
              ),
            ),

            // // ---------------------------------------------------------
            // // 2. الرسمة الخضراء (فوق الكارت)
            // // ---------------------------------------------------------
            // Positioned.fill(child: CustomPaint(painter: RPSCustomPainter())),

            // // ---------------------------------------------------------
            // // 3. أيقونة القفل
            // // ---------------------------------------------------------
            // const Positioned(
            //   right: 0,
            //   top: 0,
            //   bottom: 0,
            //   child: Align(
            //     alignment: Alignment(0.9, 0.15),
            //     child: Icon(Icons.lock, size: 14, color: Colors.white),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(255, 146, 213, 136)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 1.0043478, size.height * 0.4600000);
    path_1.quadraticBezierTo(
      size.width * 0.8641304,
      size.height * 0.3905000,
      size.width * 0.8660870,
      size.height * 0.5620000,
    );
    path_1.quadraticBezierTo(
      size.width * 0.8686957,
      size.height * 0.7220000,
      size.width * 1.0052174,
      size.height * 0.6740000,
    );

    canvas.drawPath(path_1, paint_fill_1);

    // Layer 1

    Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.bevel;

    canvas.drawPath(path_1, paint_stroke_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
