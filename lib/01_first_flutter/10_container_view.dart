import 'package:flutter/material.dart';

class ContainerView extends StatefulWidget {
  const ContainerView({super.key});

  @override
  State<ContainerView> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    //*******set size as percent
    final size = MediaQuery.of(context).size;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: AppBar(title: Text("Container")),

      //*********** test body 1
      // body: Column(
      //   children: [
      //     Padding(padding: const EdgeInsets.all(20.0),
      //     child: Container(transform: Matrix4.rotationZ(0.2),
      //     decoration: BoxDecoration(
      //       color: Colors.amberAccent,
      //       shape: BoxShape.rectangle,
      //       borderRadius: BorderRadius.circular(20),
      //       boxShadow: [
      //         BoxShadow(
      //           color: Colors.grey,
      //           offset: Offset(0, 20),
      //           blurRadius: 20,
      //         )
      //       ]
      //     ),
      //       child: Image.network("https://images.vexels.com/media/users/3/142546/isolated/preview/2f6d0faa355125320122dc57e8b07084-tshirt-icon.png"),
      //     ),)
      //   ],
      // ),

      //************* test body 2
      // body: Column(
      //   children: [
      //     Container(
      //       width: size.width * 0.5,
      //       height: 200,
      //       margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      //       decoration: BoxDecoration(
      //         color: Colors.orange,
      //         borderRadius: BorderRadius.circular(20),
      //         boxShadow: [
      //           BoxShadow(
      //             color: Colors.blueGrey,
      //             offset: Offset(0, 50),
      //             blurRadius: 40,
      //           ),
      //         ],
      //       ),
      //       child: Image.network(
      //         "https://images.vexels.com/media/users/3/142546/isolated/preview/2f6d0faa355125320122dc57e8b07084-tshirt-icon.png",
      //       ),
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              width: size.width,
              height: isPortrait ? size.height * 0.5 : size.height,
              // transform: Matrix4.rotationZ(0.2),
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 20),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Image.network(
                "https://images.vexels.com/media/users/3/142546/isolated/preview/2f6d0faa355125320122dc57e8b07084-tshirt-icon.png",
                // width: size.width * 0.5,
                // height: size.height * 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
