import 'package:flutter/material.dart';

import '11_rows_columns.dart';

class RowColHw extends StatefulWidget {
  const RowColHw({super.key});

  @override
  State<RowColHw> createState() => _RowColHwState();
}

class _RowColHwState extends State<RowColHw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f7fb),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        title: Text(
          "Categories",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.red,
              child: Text("A"),
            ),
          ),
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              "https://img.freepik.com/premium-photo/fun-unique-cartoon-profile-picture-that-represents-your-style-personality_1283595-14213.jpg",
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //********* GestureDetector is a widget that link to another page
                  GestureDetector(
                    onTap: () {
                      debugPrint("taped");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RowsColumns()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.design_services,
                            color: Colors.blue,
                            size: 70,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 160,
                            height: 80,

                            decoration: BoxDecoration(
                              color: Color(0xfff4f6fa),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Design",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                                Text("500 + jobs"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.medical_information,
                          color: Colors.red,
                          size: 70,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 160,
                          height: 80,

                          decoration: BoxDecoration(
                            color: Color(0xfff4f6fa),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Doctor",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              Text("1000 + jobs"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //********* GestureDetector is a widget that link to another page
                  GestureDetector(
                    onTap: () {
                      debugPrint("taped");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RowsColumns()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.design_services,
                            color: Colors.blue,
                            size: 70,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 160,
                            height: 80,

                            decoration: BoxDecoration(
                              color: Color(0xfff4f6fa),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Design",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                                Text("500 + jobs"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.medical_information,
                          color: Colors.red,
                          size: 70,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 160,
                          height: 80,

                          decoration: BoxDecoration(
                            color: Color(0xfff4f6fa),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Doctor",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              Text("1000 + jobs"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //********* GestureDetector is a widget that link to another page
                  GestureDetector(
                    onTap: () {
                      debugPrint("taped");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RowsColumns()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.design_services,
                            color: Colors.blue,
                            size: 70,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 160,
                            height: 80,

                            decoration: BoxDecoration(
                              color: Color(0xfff4f6fa),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Design",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                                Text("500 + jobs"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.medical_information,
                          color: Colors.red,
                          size: 70,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 160,
                          height: 80,

                          decoration: BoxDecoration(
                            color: Color(0xfff4f6fa),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Doctor",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              Text("1000 + jobs"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //********* GestureDetector is a widget that link to another page
                  GestureDetector(
                    onTap: () {
                      debugPrint("taped");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RowsColumns()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.design_services,
                            color: Colors.blue,
                            size: 70,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 160,
                            height: 80,

                            decoration: BoxDecoration(
                              color: Color(0xfff4f6fa),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Design",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                                Text("500 + jobs"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.medical_information,
                          color: Colors.red,
                          size: 70,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 160,
                          height: 80,

                          decoration: BoxDecoration(
                            color: Color(0xfff4f6fa),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Doctor",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              Text("1000 + jobs"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //********* GestureDetector is a widget that link to another page
                  GestureDetector(
                    onTap: () {
                      debugPrint("taped");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RowsColumns()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.design_services,
                            color: Colors.blue,
                            size: 70,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 160,
                            height: 80,

                            decoration: BoxDecoration(
                              color: Color(0xfff4f6fa),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Design",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                                Text("500 + jobs"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.medical_information,
                          color: Colors.red,
                          size: 70,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 160,
                          height: 80,

                          decoration: BoxDecoration(
                            color: Color(0xfff4f6fa),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Doctor",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              Text("1000 + jobs"),
                            ],
                          ),
                        ),
                      ],
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
