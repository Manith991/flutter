import 'package:flutter/material.dart';

import '14_layout3_hw.dart';
import '../02_views/constant_root.dart';

class Layout2Hw extends StatefulWidget {
  const Layout2Hw({super.key});

  @override
  State<Layout2Hw> createState() => _Layout2HwState();
}

class _Layout2HwState extends State<Layout2Hw> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.3,
              width: size.width,
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.menu, color: Colors.white),
                          Icon(Icons.notifications, color: Colors.white),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: Text(
                        "Hi! Programmer",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 20.0,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          hint: Text("Search..."),
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            // borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CategoryBoxReusable(
                  iconData: Icons.category,
                  cateName: 'Category',
                  color: Colors.yellowAccent,
                ),
                CategoryBoxReusable(
                  iconData: Icons.playlist_add_check_outlined,
                  cateName: 'Classes',
                  color: Colors.green,
                ),
                CategoryBoxReusable(
                  iconData: Icons.library_books,
                  cateName: 'Free Course',
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CategoryBoxReusable(
                  iconData: Icons.store,
                  cateName: 'BookStore',
                  color: Colors.redAccent,
                ),
                CategoryBoxReusable(
                  iconData: Icons.play_circle,
                  cateName: 'Live Course',
                  color: Colors.purpleAccent,
                ),
                CategoryBoxReusable(
                  iconData: Icons.leaderboard,
                  cateName: 'LeaderBoard',
                  color: Colors.lightGreenAccent,
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Courses",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See All",
                          style: TextStyle(fontSize: 16, color: Colors.purple),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _cardBoxReusable(
                        context: context,
                        imgUrl: "https://img.icons8.com/color/512/flutter.png",
                        title: "Flutter",
                        subTitle: "22 videos",
                      ),
                      _cardBoxReusable(
                        context: context,
                        imgUrl:
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1200px-React-icon.svg.png",
                        title: "React",
                        subTitle: "30 videos",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _cardBoxReusable(
                        context: context,
                        imgUrl:
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1200px-Python-logo-notext.svg.png",
                        title: "Python",
                        subTitle: "34 videos",
                      ),
                      _cardBoxReusable(
                        context: context,
                        imgUrl:
                            "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/181_Java_logo_logos-512.png",
                        title: "Java",
                        subTitle: "35 videos",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}

class CategoryBoxReusable extends StatelessWidget {
  final Color? color;
  final IconData iconData;
  final String cateName;
  const CategoryBoxReusable({
    super.key,
    required this.iconData,
    required this.cateName,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: color ?? Colors.yellow,
            shape: BoxShape.circle,
          ),
          child: Icon(iconData, color: Colors.white),
        ),
        SizedBox(height: 6),
        Text(cateName),
      ],
    );
  }
}

SizedBox _cardBoxReusable({
  required String imgUrl,
  required String title,
  required String subTitle,
  required BuildContext context,
}) {
  return SizedBox(
    width: 180,
    height: 220,
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Layout3Hw(title: title, imgUrl: imgUrl),
          ),
        );
      },
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.network(imgUrl, width: 120, height: 100),
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Text(
              subTitle,
              style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
            ),
          ],
        ),
      ),
    ),
  );
}
