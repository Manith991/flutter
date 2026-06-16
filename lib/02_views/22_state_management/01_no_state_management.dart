import 'dart:ffi';

import 'package:flutter/material.dart';

class NoStateManagement extends StatefulWidget {
  const NoStateManagement({super.key});

  @override
  State<NoStateManagement> createState() => _NoStateManagementState();
}

class _NoStateManagementState extends State<NoStateManagement> {
  int count = 0;

  void _increase() {
    setState(() => count++);
  }

  void _decrease() {
    setState(() => count--);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("No State Management")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You can push the button to increase the number: "),
            Text("$count"),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: _increase, child: Icon(Icons.add)),
          SizedBox(height: 20),
          FloatingActionButton(onPressed: _decrease, child: Icon(Icons.remove)),
        ],
      ),
    );
  }
}
