import 'package:bellboy_ride/app/constants/text.constants.dart';
import 'package:bellboy_ride/app/theme/style.config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/login.controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var isEmailValid = controller.isEmailValid.isTrue;
      var loginHandler = controller.loginHandler;
      var emailFocusNode = controller.emailFocusNode.value;
      var emailController = controller.emailController.value;
      var formKey = controller.formKey.value;
      var emailChangeHandler = controller.emailChangeHandler;
      var validateCallback = controller.validateCallback;
      var nextButtonHandler = isEmailValid ? () => loginHandler() : null;
      return Scaffold(
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(10.0.r),
          child: Column(
            children: [
              SizedBox(
                height: 300.h,
                child: ListView(
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      LOGIN,
                      style: TextStyle(
                          fontSize: 30.sp, fontWeight: FontWeight.w800),
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
                            labelText: EMAIL,
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
                child: SizedBox(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(FIND_EMAIL, style: anchorTextStyle),
                          const Text("|"),
                          Text(
                            FIND_PASSWORD,
                            style: anchorTextStyle,
                          )
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
                              isEmailValid ? NEXT : ENTER_EMAIL,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      );
    });
  }
}
