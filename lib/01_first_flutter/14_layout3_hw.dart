import 'package:flutter/material.dart';
import 'package:my_flutter_codes/02_views/constant_root.dart';


class Layout3Hw extends StatelessWidget {
  final String title;
  final String imgUrl;
  const Layout3Hw({super.key, required this.title, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width,
                height: size.height * 0.25,
                child: Card(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(imgUrl),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 28,
                        child: Icon(Icons.play_arrow, size: 35),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$title Complete Course",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Text("Created by Dear Programmer"),
                    Text("55 Videos"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: () {}, child: Text("Videos")),
                  TextButton(onPressed: () {}, child: Text("Description")),
                ],
              ),
              for (int i = 0; i < 6; i++)
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: kBackgroundColor,
                    child: Icon(Icons.play_arrow, color: Colors.white),
                  ),
                  title: Text("Introduction to $title"),
                  subtitle: Text(
                    "20 min 50 sec",
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
