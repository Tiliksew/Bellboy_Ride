import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '.../../../translations/translation_keys.dart' as keys;

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

showToast(email) {
  Get.showSnackbar(GetSnackBar(
    icon: const Icon(
      Icons.check_circle_outline_rounded,
      color: Colors.white,
    ),
    title: keys.success.tr,
    snackStyle: SnackStyle.GROUNDED,
    padding: const EdgeInsets.all(5),
    message: '${keys.loggedInAs.tr} - $email',
    // backgroundColor: const Color(0xFF8A2387),
    backgroundColor: const Color(0xFF000000),
    forwardAnimationCurve: Curves.linear,
    reverseAnimationCurve: Curves.linear,
    animationDuration: const Duration(milliseconds: 200),
    duration: const Duration(seconds: 2),
  ));
}
