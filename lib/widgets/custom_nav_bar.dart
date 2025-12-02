import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      height: 80,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // الكونتينر الخلفي
          Container(
            height: 65,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(40),
            ),
          ),

          // الأيقونات فوق
          Positioned(
            bottom: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildNavItem(Icons.home_rounded, 0),
                SizedBox(width: 80),
                _buildNavItem(Icons.search_rounded, 1),
                SizedBox(width: 80),
                _buildNavItem(Icons.workspace_premium_rounded, 2),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xff5A5A5A) : Color(0xff4A4A4A),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Icon(icon, color: Colors.white, size: 28),
      ),
    );
  }
}
