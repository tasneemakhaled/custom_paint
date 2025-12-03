import 'package:custom_paint/views/fourthh_view.dart';
import 'package:custom_paint/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class ThirdView extends StatelessWidget {
  const ThirdView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),

      // الدالة اللي بتعمل كل أيقونة
      backgroundColor: Color(0xff343434),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  left: 8.0,
                  right: 8.0,
                ),
                child: Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // محاذاة العناصر للأعلى
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // --- الجزء الأيسر: الصورة + كلمة Exotic ---
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // الصورة (تم سحبها للأعلى قليلاً لتقطع الدوائر الخارجية)
                        Transform.translate(
                          offset: const Offset(-10, -30), // سحب لليسار وللأعلى
                          child: const SizedBox(
                            width: 160,
                            height: 160,
                            child: ThreeCirclesWithImage(),
                          ),
                        ),
                        // كلمة Exotic (تم سحبها للأعلى لتتداخل مع الصورة)
                        Transform.translate(
                          offset: const Offset(
                            10,
                            -60,
                          ), // نرفع الكلمة لتغطي جزء من الدوائر
                          child: const Text(
                            'Exotic ',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // --- الجزء الأيمن: كارد المنتجات ---
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                      ), // مسافة من الأعلى
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
                              padding: const EdgeInsets.only(
                                top: 25,
                                bottom: 10,
                              ),
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

              // --- بقية الكود (كلمة fruits وما بعدها) ---
              // قمنا بإزالة كلمة Exotic من هنا لأننا وضعناها بالأعلى
              // نحتاج لسحب كلمة fruits للأعلى أيضاً قليلاً لأننا استخدمنا Transform بالأعلى
              Transform.translate(
                offset: const Offset(
                  0,
                  -70,
                ), // سحب القائمة المتبقية للأعلى لملء الفراغ
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '  fruits',
                      style: TextStyle(color: Color(0xff687E59), fontSize: 40),
                    ),
                    const Text(
                      'See more',
                      style: TextStyle(
                        color: Color(0xff687E59),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color(0xff666666),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(50),
                      ),
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
                        Positioned(
                          bottom: 0,
                          left: 100,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
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
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(0xff666666),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(50),
                        ),
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
                          Positioned(
                            bottom: 0,
                            left: 100,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
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
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff666666),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(50),
                      ),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            height: 70,
                            width: 130,
                            'assets/images/guava-fruits-isolated-white-background_489827-404-removebg-preview.png',
                          ),
                          Column(
                            children: [
                              Text(
                                'Guava',
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
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '2.75\$',
                                style: TextStyle(color: Colors.white60),
                              ),
                              Text(
                                '2.00\$',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -5,
                    left: 300,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.arrow_forward, color: Colors.black),
                    ),
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

// https://img.freepik.com/premium-photo/guava-fruits-isolated-white-background_489827-404.jpg   البطيخ

// https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ3_3tnoalYEanAmF10GPgC-hM8qlM4KQzrX4ybckfAaRSxjqsf   اورانج

// https://m.media-amazon.com/images/I/71mo0ZGUt+L.jpg  البنفسجية
//#666666
class CurvedContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // نبدأ من أعلى اليسار
    path.lineTo(0, 0);

    // خط للأعلى اليمين
    path.lineTo(size.width - 20, 0);

    // منحنى في الجانب الأيمن العلوي
    path.quadraticBezierTo(size.width, 0, size.width, 20);

    // خط لأسفل اليمين
    path.lineTo(size.width, size.height - 20);

    // منحنى في الجانب الأيمن السفلي
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width - 20,
      size.height,
    );

    // خط للأسفل اليسار
    path.lineTo(0, size.height);

    // نقفل المسار
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ThreeCirclesWithImage extends StatelessWidget {
  const ThreeCirclesWithImage({super.key});

  @override
  Widget build(BuildContext context) {
    double outerSize = 160;
    double middleSize = 100;
    double innerSize = 60;

    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Outer circle
          Container(
            width: outerSize,
            height: outerSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
          ),

          // Middle circle
          Container(
            width: middleSize,
            height: middleSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.green.withOpacity(0.5)),
            ),
          ),

          Container(
            width: innerSize,
            height: innerSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/photo_5873037091028011799_y.jpg',
                ), // replace with your image
                fit: BoxFit.cover,
              ),
              border: Border.all(color: Colors.green, width: 3),
            ),
          ),
        ],
      ),
    );
  }
}
