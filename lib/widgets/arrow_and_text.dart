
import 'package:custom_paint/widgets/contants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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