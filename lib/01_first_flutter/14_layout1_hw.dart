import 'package:flutter/material.dart';
import '14_layout2_hw.dart';

class Layout1Hw extends StatefulWidget {
  const Layout1Hw({super.key});

  @override
  State<Layout1Hw> createState() => _Layout1HwState();
}

class _Layout1HwState extends State<Layout1Hw> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: size.height * 0.6,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70),
                ),
              ),
              child: Image.network(
                "https://threedio-prod-var-cdn.icons8.com/on/preview_sets/thumbs/WZNdrkrJ1W5JfW5S.webp",
              ),
            ),
          ),

          //********Second layer
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height * 0.4,
              decoration: BoxDecoration(color: Colors.deepPurple),
            ),
          ),

          //*******Third layer
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(50),
              height: size.height * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Learning Everything",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Learning with Pleasure with Dear Programmer, Wherever you are.",
                  ),
                  SizedBox(height: 25),
                  SizedBox(
                    width: size.width * 0.4,
                    height: 50,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Colors.deepPurple,
                        ),
                        foregroundColor: WidgetStatePropertyAll(Colors.white),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Layout2Hw()),
                        );
                      },
                      child: Text("Get Start"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
