import 'package:custom_paint/widgets/contants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FourthView extends StatefulWidget {
  const FourthView({super.key});

  @override
  State<FourthView> createState() => _FruiteDetailsState();
}

class _FruiteDetailsState extends State<FourthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://img.freepik.com/premium-photo/fresh-pytahya-black-background-dragon-fruit-tropical-fruits-top-view-free-space-text_187166-40270.jpg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 50,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ArrowAndText(),
                  Positioned(
                    top: 10,
                    left: MediaQuery.of(context).size.width / 1.7,
                    child: SizedBox(
                      height: 80,
                      width: 75,
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: 100,
                            width: 75,
                            padding: const EdgeInsets.only(top: 25, bottom: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 16,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    "    10\nProducts",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: -20,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 10,
                                        offset: Offset(0, 5),
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  top: 0,
                                  child: Container(
                                    width: 14,
                                    height: 14,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff687E59),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: screenHight(context) * .17,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " Exotic fruits",
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  size.width(screenWidth(context) * .45),
                  Text(
                    " Pitaya",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  size.height(20),
                  Container(
                    width: 170,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: AppColors.lightgreencolor,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Nutrition',
                        style: TextStyle(
                          color: AppColors.lightgreencolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20,
              top: screenHight(context) * .6,
              child: Row(
                children: [
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                  size.width(20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SELECT",
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "QUANTITY",
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: screenHight(context) * .75,
              left: screenWidth(context) * .75,
              child: orderWidget(),
            ),
            Positioned(
              top: screenHight(context) * .8,
              left: -75,
              child: SizedBox(
                width: screenWidth(context) / 2,
                height: screenHight(context) * .3,
                child: CustomPaint(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "         £3.50",
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "             5 packs",
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      size.height(40),
                    ],
                  ),
                  painter: RPSCustomPainterSlected(),
                ),
              ),
            ),

            Positioned(
              top: screenHight(context) * .75,
              left: -115,
              child: Container(
                width: 310,
                height: 320,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SmallCircle(value: 1, top: -20, left: 130, onclick: () {}),
                    SmallCircle(value: 5, top: 8, left: 230, onclick: () {}),
                    SmallCircle(value: 10, top: 90, left: 280, onclick: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class orderWidget extends StatelessWidget {
  const orderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 80,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 16,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: const Icon(
              Icons.shopping_basket_outlined,
              color: Colors.white,
              size: 24,
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              "Add to\nOrder",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                // height: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ArrowAndText extends StatelessWidget {
  const ArrowAndText({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: Icon(Icons.arrow_back, color: Colors.black, size: 25),
        ),
        size.height(10),
        Text(
          "PREMIUM",
          style: GoogleFonts.montserrat(
            fontSize: 17,
            fontWeight: FontWeight.normal,
            color: AppColors.lightgreencolor,
          ),
        ),
      ],
    );
  }
}

// class RPSCustomPainterSlected extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.8366408, size.height * 0.02857673);
//     path_0.cubicTo(
//         size.width * 0.8767078,
//         size.height * -0.004681170,
//         size.width * 0.9020751,
//         size.height * -0.01036003,
//         size.width * 0.9583056,
//         size.height * 0.02857673);
//     path_0.cubicTo(
//         size.width * 0.9772788,
//         size.height * 0.04867865,
//         size.width * 0.9858928,
//         size.height * 0.06144357,
//         size.width * 0.9957426,
//         size.height * 0.08833889);
//     path_0.cubicTo(
//         size.width * 1.002815,
//         size.height * 0.1248301,
//         size.width * 0.9978579,
//         size.height * 0.1483038,
//         size.width * 0.9716756,
//         size.height * 0.1962026);
//     path_0.cubicTo(
//         size.width * 0.9505335,
//         size.height * 0.2112289,
//         size.width * 0.9310483,
//         size.height * 0.2184222,
//         size.width * 0.8780885,
//         size.height * 0.2282702);
//     path_0.cubicTo(
//         size.width * 0.8281099,
//         size.height * 0.2469558,
//         size.width * 0.8184638,
//         size.height * 0.2558465,
//         size.width * 0.7978686,
//         size.height * 0.2719985);
//     path_0.cubicTo(
//         size.width * 0.7623914,
//         size.height * 0.3038216,
//         size.width * 0.7545523,
//         size.height * 0.3224094,
//         size.width * 0.7564209,
//         size.height * 0.3565409);
//     path_0.cubicTo(
//         size.width * 0.7931555,
//         size.height * 0.4173392,
//         size.width * 0.8027855,
//         size.height * 0.4526550,
//         size.width * 0.8219330,
//         size.height * 0.5154211);
//     path_0.cubicTo(
//         size.width * 0.8384048,
//         size.height * 0.6040234,
//         size.width * 0.8406381,
//         size.height * 0.6519708,
//         size.width * 0.8366408,
//         size.height * 0.7355205);
//     path_0.cubicTo(
//         size.width * 0.8127614,
//         size.height * 0.8298801,
//         size.width * 0.7911448,
//         size.height * 0.8811550,
//         size.width * 0.7403780,
//         size.height * 0.9701959);
//     path_0.cubicTo(
//         size.width * 0.5456273,
//         size.height * 1.007319,
//         size.width * 0.4364343,
//         size.height * 1.008646,
//         size.width * 0.2416836,
//         size.height * 0.9701959);
//     path_0.cubicTo(
//         size.width * 0.1096276,
//         size.height * 0.8836491,
//         size.width * 0.04713485,
//         size.height * 0.8281287,
//         size.width * 0.01172268,
//         size.height * 0.6830468);
//     path_0.cubicTo(
//         size.width * 0.0007495040,
//         size.height * 0.4787485,
//         size.width * -0.008543485,
//         size.height * 0.3515936,
//         size.width * 0.02241853,
//         size.height * 0.3157281);
//     path_0.cubicTo(
//         size.width * 0.06016408,
//         size.height * 0.2745132,
//         size.width * 0.07634504,
//         size.height * 0.2512933,
//         size.width * 0.1454209,
//         size.height * 0.2107787);
//     path_0.cubicTo(
//         size.width * 0.1905394,
//         size.height * 0.1800196,
//         size.width * 0.2155735,
//         size.height * 0.1656222,
//         size.width * 0.2577276,
//         size.height * 0.1670503);
//     path_0.cubicTo(
//         size.width * 0.3113780,
//         size.height * 0.1451450,
//         size.width * 0.3401046,
//         size.height * 0.1420444,
//         size.width * 0.3887507,
//         size.height * 0.1524740);
//     path_0.cubicTo(
//         size.width * 0.4288097,
//         size.height * 0.1470436,
//         size.width * 0.4511448,
//         size.height * 0.1477576,
//         size.width * 0.4903619,
//         size.height * 0.1670503);
//     path_0.cubicTo(
//         size.width * 0.5322708,
//         size.height * 0.1808582,
//         size.width * 0.5556890,
//         size.height * 0.1903588,
//         size.width * 0.5973217,
//         size.height * 0.2107787);
//     path_0.cubicTo(
//         size.width * 0.6314906,
//         size.height * 0.2407023,
//         size.width * 0.6498686,
//         size.height * 0.2506661,
//         size.width * 0.6802145,
//         size.height * 0.2472190);
//     path_0.cubicTo(
//         size.width * 0.7111769,
//         size.height * 0.2410289,
//         size.width * 0.7281448,
//         size.height * 0.2330883,
//         size.width * 0.7564209,
//         size.height * 0.1962026);
//     path_0.cubicTo(
//         size.width * 0.7564209,
//         size.height * 0.1962026,
//         size.width * 0.7902708,
//         size.height * 0.1437281,
//         size.width * 0.7978686,
//         size.height * 0.1087456);
//     path_0.cubicTo(
//         size.width * 0.8054665,
//         size.height * 0.07376316,
//         size.width * 0.8028552,
//         size.height * 0.04544094,
//         size.width * 0.8366408,
//         size.height * 0.02857673);
//     path_0.close();

//     Paint paint_0_stroke = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2;
//     paint_0_stroke.color = Color(0xffFFFAFA).withOpacity(1.0);
//     canvas.drawPath(path_0, paint_0_stroke);

//     Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
//     paint_0_fill.color = Color(0xffFFFCFC).withOpacity(1.0);
//     canvas.drawPath(path_0, paint_0_fill);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

class RPSCustomPainterSlected extends CustomPainter {
  @override
  bool shouldRepaint(covariant RPSCustomPainterSlected oldDelegate) => false;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    // circle
    Offset center = Offset(size.width / 1.7, size.height / 2);
    double redius = size.width / 2;

    canvas.drawCircle(center, redius, paint);
  }
}

class SmallCircle extends StatelessWidget {
  final int value;
  final double top;
  final double left;
  final VoidCallback onclick;

  const SmallCircle({
    super.key,
    required this.value,
    required this.top,
    required this.left,
    required this.onclick,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: GestureDetector(
        onTap: onclick,
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(color: Colors.grey),
          ),
          alignment: Alignment.center,
          child: Text(
            value.toString(),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
