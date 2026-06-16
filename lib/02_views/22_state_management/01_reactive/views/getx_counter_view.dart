import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/getx_counter_controller.dart';

class ReactiveCounterView extends StatelessWidget {
  const ReactiveCounterView({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("BuildContext running");
    final controller = Get.put(ReactiveCounterController());
    return Scaffold(
      appBar: AppBar(title: Text("No State Management")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You can push the button to increase the number: "),
            Obx(() => Text(controller.counter.value.toString())),
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
