import 'package:flutter/material.dart';

class CustomFlower extends StatelessWidget {
  const CustomFlower({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 230,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(32),
                child: Image.asset(image),
              ),
              Column(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 10),
                      Icon(Icons.star, color: Colors.amber, size: 10),
                      Icon(Icons.star, color: Colors.amber, size: 10),
                      Icon(Icons.star, color: Colors.amber, size: 10),
                      Icon(Icons.star_border, color: Colors.grey, size: 10),
                    ],
                  ),
                  Text(
                    'Banana tree',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text('\$78'),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff92d588),
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: Icon(Icons.remove, size: 10)),
                      ),
                      Text(' x2 ', style: TextStyle(fontSize: 12)),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff92d588),
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: Icon(Icons.add, size: 10)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
