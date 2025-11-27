import 'package:custom_paint/views/widgets/custom_flower.dart';
import 'package:flutter/material.dart';

class DecorativeFlowers extends StatelessWidget {
  const DecorativeFlowers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff166b0a),
      appBar: AppBar(
        backgroundColor: Color(0xff166b0a),
        title: Text(
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
            icon: Icon(Icons.dehaze, color: Colors.white),
          ),
        ],

        leading: Icon(Icons.arrow_back_ios, color: Colors.white),
      ),
      body: ListView(
        children: [
          CustomFlower(image: 'assets/images/first_image.png'),
          CustomFlower(image: 'assets/images/second_photo.jpg'),
          CustomFlower(image: 'assets/images/third_image.jpg'),
        ],
      ),
    );
  }
}
