import 'package:flutter/material.dart';

class RowColEx extends StatefulWidget {
  const RowColEx({super.key});

  @override
  State<RowColEx> createState() => _RowColExState();
}

class _RowColExState extends State<RowColEx> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // ********* A full screen
      // body: Column(
      //   children: [
      //     Container(
      //       width: size.width,
      //       height: size.height,
      //       decoration: BoxDecoration(color: Colors.green),
      //     ),
      //   ],
      // ),

      //********** 4 cols
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Container(width: 100, height: size.height, color: Colors.green),
      //     Container(width: 100, height: size.height, color: Colors.red),
      //     Container(width: 100, height: size.height, color: Colors.blue),
      //     Container(width: 100, height: size.height, color: Colors.orange),
      //   ],
      // ),

      //********* 4 rows
      // body: Column(
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Container(
      //       width: size.width,
      //       height: size.height * 0.25,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       width: size.width,
      //       height: size.height * 0.25,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: size.width,
      //       height: size.height * 0.25,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: size.width,
      //       height: size.height * 0.25,
      //       color: Colors.orange,
      //     ),
      //   ],
      // ),

      //********** rows and cols (large grid)
      // body: Column(
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Row(
      //       children: [
      //         Container(
      //           width: size.width * 0.5,
      //           height: size.height * 0.25,
      //           color: Colors.green,
      //         ),
      //         Container(
      //           width: size.width * 0.5,
      //           height: size.height * 0.25,
      //           color: Colors.red,
      //         ),
      //       ],
      //     ),
      //     Row(
      //       children: [
      //         Container(
      //           width: size.width * 0.5,
      //           height: size.height * 0.25,
      //           color: Colors.brown,
      //         ),
      //         Container(
      //           width: size.width * 0.5,
      //           height: size.height * 0.25,
      //           color: Colors.blue,
      //         ),
      //       ],
      //     ),
      //     Row(
      //       children: [
      //         Container(
      //           width: size.width * 0.5,
      //           height: size.height * 0.25,
      //           color: Colors.yellow,
      //         ),
      //         Container(
      //           width: size.width * 0.5,
      //           height: size.height * 0.25,
      //           color: Colors.orange,
      //         ),
      //       ],
      //     ),
      //     Row(
      //       children: [
      //         Container(
      //           width: size.width * 0.5,
      //           height: size.height * 0.25,
      //           color: Colors.black,
      //         ),
      //         Container(
      //           width: size.width * 0.5,
      //           height: size.height * 0.25,
      //           color: Colors.purple,
      //         ),
      //       ],
      //     ),
      //   ],
      // ),

      //******** Mosaic 2
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.5,
                color: Colors.green,
              ),
            ],
          ),

          Row(
            children: [
              Container(
                width: size.width * 0.5,
                height: size.height * 0.25,
                color: Colors.yellow,
              ),
              Container(
                width: size.width * 0.5,
                height: size.height * 0.25,
                color: Colors.orange,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: size.width * 0.5,
                height: size.height * 0.25,
                color: Colors.black,
              ),
              Container(
                width: size.width * 0.5,
                height: size.height * 0.25,
                color: Colors.purple,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
