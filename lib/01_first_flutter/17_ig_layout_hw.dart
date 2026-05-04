import 'package:flutter/material.dart';
import 'dart:ui';

class InstagramProfile extends StatelessWidget {
  final String username;
  final String profileUrl;
  final String postUrl;
  const InstagramProfile({
    super.key,
    required this.username,
    required this.profileUrl,
    required this.postUrl,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            _buildHeader(),
            const SizedBox(height: 75),
            Text(
              username,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 5),
            Text("@marck_jones"),
            const SizedBox(height: 5),
            Text(
              "What's up andyFan, don't forget to\nsubscribe to my YouTube",
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("Posts", textAlign: TextAlign.center),
                    Text(
                      "25",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 50),
                Column(
                  children: [
                    Text("Followers"),
                    Text(
                      "20K",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 50),
                Column(
                  children: [
                    Text("Following"),
                    Text(
                      "203",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: size.width * 0.9,
              height: 65,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.deepOrange, Colors.orangeAccent],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  "Follow",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(8),
              width: size.width * 0.9,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text("Images", style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text("Videos", style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: size.height * 0.5,
                width: size.width * 0.9,
                child: ListView(
                  children: [
                    buildRow(size),
                    SizedBox(height: 20),
                    buildRow(size),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: Image.network(
            "https://pictures.altai-travel.com/1920x1040/mount-everest-aerial-views-himalayas-istock-3745.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.white.withValues(alpha: 0.5),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -70,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.orange, width: 4),
              ),
              child: CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(profileUrl),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildRow(Size size) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Stack(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://images.stockcake.com/public/b/8/f/b8ff8633-6715-488e-9014-f39b1ad27346_large/sunset-mountain-peak-stockcake.jpg",
                    width: size.width * 0.5,
                    height: size.width * 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 15,
                child: Row(
                  children: [
                    Icon(Icons.chat, color: Colors.white),
                    SizedBox(width: 5),
                    Text("648", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                right: 15,
                child: SizedBox(
                  width: 40,
                  height: 60,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(profileUrl),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 15,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(profileUrl),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 30,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(profileUrl),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
        Flexible(
          child: Stack(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://images.stockcake.com/public/b/8/f/b8ff8633-6715-488e-9014-f39b1ad27346_large/sunset-mountain-peak-stockcake.jpg",
                    width: size.width * 0.5,
                    height: size.width * 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 15,
                child: Row(
                  children: [
                    Icon(Icons.chat, color: Colors.white),
                    SizedBox(width: 5),
                    Text("648", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                right: 15,
                child: SizedBox(
                  width: 40,
                  height: 60,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(profileUrl),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 15,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(profileUrl),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 30,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(profileUrl),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
