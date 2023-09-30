// ignore_for_file: unnecessary_overrides

import 'package:bellboy_ride/app/routes/app_pages.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isEmailValid = false.obs;
  var isLoading = false.obs;
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
    emailController.value.dispose();
    emailFocusNode.value.dispose();
  }

  void loginHandler() async {
    if (formKey.value.currentState!.validate()) {
      String email = emailController.value.text;

      if (kDebugMode) {
        print('Entered email: $email');
      }

      Get.showSnackbar(GetSnackBar(
        icon: const Icon(
          Icons.check_circle_outline_rounded,
          color: Colors.white,
        ),
        title: 'success',
        snackStyle: SnackStyle.GROUNDED,
        padding: const EdgeInsets.all(5),
        message: 'Logged in as $email',
        // backgroundColor: const Color(0xFF8A2387),
        backgroundColor: const Color(0xFF000000),
        forwardAnimationCurve: Curves.linear,
        reverseAnimationCurve: Curves.linear,
        animationDuration: const Duration(milliseconds: 200),
        duration: const Duration(seconds: 2),
      ));

      emailFocusNode.value.unfocus();
      Get.offAllNamed(Routes.HOME);
      // Get.toNamed(Routes.HOME);
    }
  }

  void emailChangeHandler(email) {
    try {
      if (kDebugMode) {
        print('called with email: $email');
      }

      emailController.value.text = email;
      if (validateEmail(email) && emailController.value.text.isEmail) {
        isEmailValid(true);
      } else {
        isEmailValid(false);
      }
    } catch (e) {
      isEmailValid(false);
    }
  }

  bool validateEmail(String email) {
    try {
      // Regular expression pattern for email validation
      const pattern = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';

      final regex = RegExp(pattern);
      return regex.hasMatch(email);
    } catch (e) {
      return false;
    }

    // Check if the email matches the pattern
  }

  String? formValidateCallback(value) {
    try {
      if (value!.isEmpty) {
        return 'Please enter your email';
      }
      if (!value.contains('@')) {
        return 'Please enter a valid email address';
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
