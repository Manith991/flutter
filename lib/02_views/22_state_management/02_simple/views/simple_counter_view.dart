import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_codes/02_views/22_state_management/02_simple/controllers/simple_counter_controller.dart';

class SimpleCounterView extends StatelessWidget {
  const SimpleCounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SimpleCounterController());
    return Scaffold(
      appBar: AppBar(title: Text("No State Management")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You can push the button to increase the number: "),
            GetBuilder<SimpleCounterController>(
              builder: (logic) {
                return Text(controller.counter.toString());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: controller.increment,
            child: Icon(Icons.add),
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: controller.decrement,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
