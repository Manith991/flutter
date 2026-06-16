import 'package:get/get.dart';

class SimpleCounterController extends GetxController {
  var counter = 0;

  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }
}
