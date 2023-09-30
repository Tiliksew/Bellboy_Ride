import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controllers/login.controller.dart';
import '../../../../translations/translation_keys.dart' as keys;

class LoginForm extends GetView<LoginController> {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      // Controller Variables
      var isEmailValid = controller.isEmailValid.isTrue;
      var emailFocusNode = controller.emailFocusNode.value;
      var emailController = controller.emailController.value;
      var formKey = controller.formKey.value;

      // Controller Methods
      var loginHandler = controller.loginHandler;
      var nextButtonHandler = isEmailValid ? () => loginHandler() : null;

      // Controller methods
      var emailChangeHandler = controller.emailChangeHandler;
      var validateCallback = controller.formValidateCallback;
      var isDarkMode = controller.isDarkMode.value;

      return Form(
        key: formKey,
        child: TextFormField(
            controller: emailController,
            focusNode: emailFocusNode,
            autofocus: true,
            textInputAction: TextInputAction.next,
            cursorColor: isDarkMode ? Colors.white : Colors.black,
            decoration: InputDecoration(
              labelText: keys.email.tr,

              labelStyle:
                  TextStyle(color: isDarkMode ? Colors.white : Colors.black),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: isDarkMode ? Colors.white : Colors.black)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: isDarkMode ? Colors.white : Colors.black)),
              // border: ,
              suffixIcon: IconButton(
                  onPressed: () {
                    emailChangeHandler('');
                    emailController.clear();
                  },
                  icon: Container(
                      width: 20.w,
                      height: 20.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      child: Icon(
                        Icons.close,
                        size: 15.r,
                        color: Colors.white,
                      ))
                  // const Icon(Icons.circle),
                  ),
            ),
            keyboardType: TextInputType.emailAddress,
            onChanged: emailChangeHandler,
            onEditingComplete: nextButtonHandler,
            validator: validateCallback),
      );
    });
  }
}
