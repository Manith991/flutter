import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isShowPassword = false.obs;

  void toggleShowPassword() {
    isShowPassword.value = !isShowPassword.value;
  }

  Future<bool> login(String email, String password) async {
    if (email == "root" && password == "root") {
      Get.snackbar("Success", "Login Successful");
      return true;
    } else {
      Get.snackbar(
        "Login Failed",
        "Please fill the Fields...",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return false;
    }
  }
}
