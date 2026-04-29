import 'package:flutter/material.dart';

class StackPositioned extends StatelessWidget {
  const StackPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack & Positioned"),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.centerRight,
        children: [
          Container(
            height: size.height * 0.5,
            width: double.infinity,
            color: Colors.blue,
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: size.height * 0.2,
              width: size.width * 0.5,
              color: Colors.red,
            ),
          ),
          Container(
            height: size.height * 0.2,
            width: size.width * 0.5,
            color: Colors.green,
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              height: size.height * 0.2,
              width: size.width * 0.5,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: size.height * 0.2,
              width: size.width * 0.5,
              color: Colors.purple,
            ),
          ),
          Positioned(
            right: 80,
            bottom: -50,
            child: Container(
              height: size.height * 0.2,
              width: size.width * 0.5,
              color: Colors.deepOrange,
            ),
          ),
         Positioned(bottom: -120,right: 25,child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvH3RxmbxwZSG9DYaucxWgvRMVHfs9LR6pBg&s")),
          Positioned(
            bottom: -150,
            right: 80,
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              radius: 55,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp5AGUluTjAaeqkYeDrHoJg84tU8yTmNYxfA&s",),
              ),
            ),
          )
        ],
      ),
    );
  }
}
