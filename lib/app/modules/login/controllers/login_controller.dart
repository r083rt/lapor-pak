import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var hidePass = true.obs;
  var isLoading = false.obs;

  final emailC = TextEditingController(text: "rsjamsuar@gmail.com");
  final passC = TextEditingController(text: "123123");

  @override
  void onClose() {
    super.onClose();
    emailC.dispose();
    passC.dispose();
  }
}
