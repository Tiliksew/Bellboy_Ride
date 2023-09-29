// ignore_for_file: avoid_print, unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final count = 0.obs;
  var isEmailValid = false.obs;
  var formKey = GlobalKey<FormState>().obs;
  var emailController = TextEditingController().obs;
  var emailFocusNode = FocusNode().obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  loginHandler() {
    if (formKey.value.currentState!.validate()) {
      String email = emailController.value.text;
      print('Entered email: $email');
      Get.showSnackbar(GetSnackBar(
        icon: const Icon(
          Icons.check_circle_outline_rounded,
          color: Colors.white,
        ),
        title: 'success',
        message: 'Email: $email',
        backgroundColor: Colors.green,
        forwardAnimationCurve: Curves.linear,
        reverseAnimationCurve: Curves.linear,
        animationDuration: const Duration(milliseconds: 200),
        duration: const Duration(seconds: 2),
      ));
      emailFocusNode.value.unfocus();
    }
  }

  emailChangeHandler(email) {
    print('called with email: $email');
    emailController.value.text = email;
    if (validateEmail(email) && emailController.value.text.isEmail) {
      isEmailValid(true);
    } else {
      isEmailValid(false);
    }
  }

  bool validateEmail(String email) {
    // Regular expression pattern for email validation
    const pattern = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
    final regex = RegExp(pattern);

    // Check if the email matches the pattern
    print("inside valid email ${regex.hasMatch(email)}");
    return regex.hasMatch(email);
  }
}
