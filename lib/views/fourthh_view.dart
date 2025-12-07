import 'package:custom_paint/widgets/arrow_and_text.dart';
import 'package:custom_paint/widgets/contants.dart';
import 'package:custom_paint/widgets/order_widget.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/small_circle.dart';

class FourthView extends StatefulWidget {
  const FourthView({super.key});

  @override
  State<FourthView> createState() => _FruiteDetailsState();
}

int selectedValue = 1;

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
            // Positioned(
            //   left: 20,
            //   top: screenHight(context) * .6,
            //   child: Row(
            //     children: [
            //       Container(
            //         width: 12,
            //         height: 12,
            //         decoration: BoxDecoration(
            //           color: Colors.green,
            //           shape: BoxShape.circle,
            //           border: Border.all(color: Colors.white, width: 2),
            //         ),
            //       ),
            //       size.width(20),
            //       Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text(
            //             "SELECT",
            //             style: GoogleFonts.playfairDisplay(
            //               fontSize: 20,
            //               fontWeight: FontWeight.bold,
            //               color: Colors.white,
            //             ),
            //           ),
            //           Text(
            //             "QUANTITY",
            //             style: GoogleFonts.playfairDisplay(
            //               fontSize: 20,
            //               fontWeight: FontWeight.bold,
            //               color: Colors.white,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            // ProductSelectionWidget(),
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
              top: screenHight(context) * .7,
              left: -120,
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
                    SmallCircle(
                      selectindex: selectedValue,
                      value: 1,
                      top: -10,
                      left: 160,
                      onclick: () {
                        setState(() {
                          selectedValue = 1;
                        });
                      },
                    ),
                    SmallCircle(
                      selectindex: selectedValue,
                      value: 5,
                      top: 40,
                      left: 250,
                      onclick: () {
                        setState(() {
                          selectedValue = 5;
                        });
                      },
                    ),
                    SmallCircle(
                      selectindex: selectedValue,
                      value: 10,
                      top: 120,
                      left: 290,
                      onclick: () {
                        setState(() {
                          selectedValue = 10;
                        });
                      },
                    ),
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

// // Placeholder for your existing painter
// class RPSCustomPainter1 extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     // Your drawing code here
//     Paint paint = Paint()..color = Colors.amber.withOpacity(0.5);
//     canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }
