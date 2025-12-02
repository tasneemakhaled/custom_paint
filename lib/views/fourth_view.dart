import 'package:flutter/material.dart';

class FourthView extends StatelessWidget {
  const FourthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color(0xff343434),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return FourthView();
                          },
                        ),
                      );
                    },
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
                              borderRadius: BorderRadius.circular(16), //
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
                                      // height: 1,
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
                                // النقطة الخضراء
                                Positioned(
                                  right: 0,
                                  top: 0,
                                  child: Container(
                                    width: 14,
                                    height: 14,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff687E59),
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
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Exotic ',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'fruits',
                  style: TextStyle(color: Color(0xff687E59), fontSize: 40),
                ),
                Text(
                  'See more',
                  style: TextStyle(
                    color: Color(0xff687E59),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xff666666),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -370,
                        right: 10,
                        child: Image.asset(
                          height: 700,
                          width: 100,
                          'assets/images/images-removebg-preview.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              'Pitaya',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              'PREMIUM',
                              style: TextStyle(
                                color: Color(0xff687E59),
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '4.56\$',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xff666666),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -370,
                        right: 10,
                        child: Image.asset(
                          height: 700,
                          width: 100,

                          'assets/images/71mo0ZGUt+L-removebg-preview.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              'Papya',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              'PREMIUM',
                              style: TextStyle(
                                color: Color(0xff687E59),
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '4.56\$',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Offers',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See more',
                  style: TextStyle(
                    color: Color(0xff687E59),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xff666666),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      height: 100,
                      width: 150,
                      'assets/images/guava-fruits-isolated-white-background_489827-404-removebg-preview.png',
                    ),
                    Column(
                      children: [
                        Text(
                          'Guava',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        Text(
                          'PREMIUM',
                          style: TextStyle(
                            color: Color(0xff687E59),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('2.75\$', style: TextStyle(color: Colors.white60)),
                        Text('2.00\$', style: TextStyle(color: Colors.white)),
                      ],
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


// https://img.freepik.com/premium-photo/guava-fruits-isolated-white-background_489827-404.jpg   البطيخ


// https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ3_3tnoalYEanAmF10GPgC-hM8qlM4KQzrX4ybckfAaRSxjqsf   اورانج


// https://m.media-amazon.com/images/I/71mo0ZGUt+L.jpg  البنفسجية
//#666666
