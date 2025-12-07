import 'package:flutter/material.dart';

class SmallCircle extends StatelessWidget {
  final int value;
  final double top;
  final double left;
  final VoidCallback onclick;
  final int selectindex;

  const SmallCircle({
    super.key,
    required this.value,
    required this.top,
    required this.left,
    required this.onclick,
    required this.selectindex,
  });

  @override
  Widget build(BuildContext context) {
    // 1. Determine if this specific circle is currently selected
    final bool isActive = (value == selectindex);

    // 2. Define default positions for the CustomPaint
    double shapeLeft = -50;
    double shapeTop = 10;
    double shapeWidth = 220;
    double shapeHeight = 80;

    // 3. Customize positions based on the specific 'value' (1, 5, or 10)
    if (value == 1) {
      // Position for Value 1 (e.g., standard bottom)
      shapeLeft = 10;
      shapeTop = 30;
      shapeWidth = 100;
      shapeHeight = 130;
    } else if (value == 5) {
   
      shapeLeft = -100; // نبدأ من عند السعر بالظبط مش من وراه
      shapeTop = 29; // نرفع الخط شوية عشان يجي في نص الدايرة
      shapeWidth = 500; // المسافة لحد رقم 5 (بدل 400)
      shapeHeight = 40; // سمك متوسط (لا هو رفيع ولا هو عالي)
    } else if (value == 10) {
      // Position for Value 10 (e.g., to the right)
      shapeLeft = -80;
      shapeTop = 10;
      shapeHeight = 60;
      shapeWidth = 350;
    }

    return Positioned(
      top: top,
      left: left,
      child: GestureDetector(
        onTap: onclick,
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none, // Allows drawing outside the stack bounds
          children: [
            // 4. Only show the CustomPaint if this circle is Active
            if (isActive)
              Positioned(
                left: shapeLeft,
                top: shapeTop,
                child: SizedBox(
                  width: shapeWidth,
                  height: shapeHeight,
                  child: CustomPaint(painter: RPSCustomPainter()),
                ),
              ),

            // MAIN SMALL CIRCLE
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isActive
                    ? Colors.blue[100]
                    : Colors.white, // Optional: Change color if active
                border: Border.all(
                  color: isActive ? Colors.blue : Colors.grey,
                  width: isActive ? 2 : 1,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                value.toString(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: isActive ? Colors.blue : Colors.black,
                ),
              ),
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
    // Square

    Paint paint_fill_1 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(0, 0);
    path_1.quadraticBezierTo(
      size.width * 0.1278500,
      size.height * 0.1282000,
      size.width * 0.2532000,
      size.height * -0.0136500,
    );
    path_1.cubicTo(
      size.width * 0.2532000,
      size.height * 0.1113500,
      size.width * 0.2521500,
      size.height * 0.3841500,
      size.width * 0.2521500,
      size.height * 0.5091500,
    );
    path_1.quadraticBezierTo(
      size.width * 0.1243500,
      size.height * 0.3899500,
      0,
      size.height * 0.5000000,
    );
    path_1.lineTo(0, 0);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
