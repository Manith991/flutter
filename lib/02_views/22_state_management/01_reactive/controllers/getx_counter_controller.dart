import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ReactiveCounterController extends GetxController {
  var counter = 0.obs;

  void increment() {
    counter++;
    debugPrint("Counter incremented: ${counter.value}");
  }

  void decrement() {
    counter--;
    debugPrint("Counter incremented: ${counter.value}");
  }
}
