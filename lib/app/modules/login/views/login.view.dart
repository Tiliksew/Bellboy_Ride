import 'package:bellboy_ride/app/theme/style.config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/login.controller.dart';
import '../../../translations/translation_keys.dart' as keys;

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      // Controller Variables
      var isEmailValid = controller.isEmailValid.isTrue;
      var emailFocusNode = controller.emailFocusNode.value;
      var emailController = controller.emailController.value;
      var formKey = controller.formKey.value;

      // Controller methods
      var emailChangeHandler = controller.emailChangeHandler;
      var loginHandler = controller.loginHandler;
      var validateCallback = controller.formValidateCallback;
      var nextButtonHandler = isEmailValid ? () => loginHandler() : null;
      var toggleLanguage = controller.toggleLanguage;

      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(10.0.r),
          child: Column(
            children: [
              SizedBox(
                height: 280.h,
                child: ListView(
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          keys.login.tr,
                          style: TextStyle(
                              fontSize: 30.sp, fontWeight: FontWeight.w800),
                        ),
                        TextButton(
                          onPressed: toggleLanguage,
                          child: Text(
                            keys.language.tr,
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Form(
                      key: formKey,
                      child: TextFormField(
                          controller: emailController,
                          focusNode: emailFocusNode,
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            labelText: keys.email.tr,
                            // labelStyle: ,
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
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
              //
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(keys.findEmail.tr, style: anchorTextStyle),
                        const Text("|"),
                        Text(keys.findPassword.tr, style: anchorTextStyle),
                      ],
                    ),

                    // Space
                    SizedBox(
                      height: 15.h,
                    ),

                    // Next Button
                    SizedBox(
                      width: Get.width,
                      child: ElevatedButton(
                        style: nextButtonStyle(isEmailValid),
                        onPressed: nextButtonHandler,
                        child: Padding(
                          padding: EdgeInsets.all(15.r),
                          child: Text(
                            isEmailValid ? keys.next.tr : keys.enterEmail.tr,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
      );
    });
  }
}
