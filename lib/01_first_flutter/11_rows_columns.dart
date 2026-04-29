import 'package:flutter/material.dart';

class RowsColumns extends StatefulWidget {
  const RowsColumns({super.key});

  @override
  State<RowsColumns> createState() => _RowsColumnsState();
}

class _RowsColumnsState extends State<RowsColumns> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Rows & Columns")),
      body: Column(
        children: [
          Container(
            height: size.height * 0.21,
            width: 200,
            color: Colors.green,
            child: Text("Container Green"),
          ),
          Container(
            height: size.height * 0.21,
            width: 200,
            color: Colors.blue,
            child: Text("Container Green"),
          ),
          Container(
            height: size.height * 0.21,
            width: 200,
            color: Colors.yellow,
            child: Text("Container Green"),
          ),
          Container(
            height: size.height * 0.21,
            width: 200,
            color: Colors.red,
            child: Text("Container Green"),
          ),
        ],
      ),
    );
  }
}
