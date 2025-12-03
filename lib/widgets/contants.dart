import 'package:flutter/material.dart';

import 'dart:math';


class size {
 
  static SizedBox height(double height) => SizedBox(
        height: height,
      );
  static SizedBox width(double width) => SizedBox(width: width);
}

double screenWidth(context) => MediaQuery.of(context).size.width;
double screenHight(context) => MediaQuery.of(context).size.height;


class AppColors {
  // Static method to generate random color
  static Color randomColor() {
    final Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256), // red
      random.nextInt(256), // green
      random.nextInt(256), // blue
    );
  }

  // Optional: softer random color version
  static Color softRandomColor() {
    final Random random = Random();
    return Color.fromARGB(
      255,
      100 + random.nextInt(156),
      100 + random.nextInt(156),
      100 + random.nextInt(156),
    );
  }

  static const Color greenColor = Color(0xFF00BB1A);
  static const LinearGradient lightGreenColor = LinearGradient(
    colors: [
      Color(0xff0e8f44),
      Color(0xff053c1d),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const Color scaffoldBackground = Colors.white;
  static const Color lightgreencolor = const Color.fromARGB(255, 180, 244, 182);
}