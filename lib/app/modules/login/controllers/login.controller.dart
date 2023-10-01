// ignore_for_file: unnecessary_overrides

import 'package:bellboy_ride/app/routes/app_pages.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helpers/utils.dart' as helpers;

class LoginController extends GetxController {
  var isEmailValid = false.obs;
  var isLoading = false.obs;
  var formKey = GlobalKey<FormState>().obs;
  var emailController = TextEditingController().obs;
  var emailFocusNode = FocusNode().obs;
  var isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
    initThemeMode();
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

      helpers.showToast(email);
      emailFocusNode.value.unfocus();
      Get.offAllNamed(Routes.HOME);
      // Get.toNamed(Routes.HOME);
    }
  }

  void emailChangeHandler(email) {
    try {
      emailController.value.text = email;

      // We can use the getx internal method to validate the email
      // using  [ emailController.value.text.isEmail ]

      if (helpers.validateEmail(email)) {
        isEmailValid(true);
      } else {
        isEmailValid(false);
      }
    } catch (e) {
      isEmailValid(false);
    }
  }

  String? formValidateCallback(value) {
    try {
      return helpers.formValidateCallback(value);
    } catch (e) {
      return null;
    }
  }

  void toggleLanguage() {
    if (Get.locale!.languageCode == 'en') {
      Get.updateLocale(const Locale('am'));
    } else {
      Get.updateLocale(const Locale('en')); // Switch to English
    }
  }

  void toggleTheme() {
    Get.changeThemeMode(
      Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
    );
    Get.isDarkMode ? isDarkMode(true) : isDarkMode(false);
  }

  void initThemeMode() {
    Get.isDarkMode ? isDarkMode(true) : isDarkMode(false);
  }
}
