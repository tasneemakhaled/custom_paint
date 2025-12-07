import 'package:flutter/material.dart';

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