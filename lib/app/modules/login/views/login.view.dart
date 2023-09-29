import 'package:bellboy_ride/app/constants/text.constants.dart';
import 'package:bellboy_ride/app/theme/style.config.dart';
import 'package:flutter/material.dart';

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

      return Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 300,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Log in',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      height: 30,
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
                                  width: 20,
                                  height: 20,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ),
                                  child: const Icon(
                                    Icons.close,
                                    size: 15,
                                    color: Colors.white,
                                  ))
                              // const Icon(Icons.circle),
                              ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: emailChangeHandler,
                        onEditingComplete: isEmailValid
                            ? () {
                                loginHandler();
                              }
                            : null,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!value.contains('@')) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
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
                      const SizedBox(
                        height: 15,
                      ),

                      // Next Button
                      SizedBox(
                        width: Get.width,
                        child: ElevatedButton(
                          style: nextButtonStyle(isEmailValid),
                          onPressed: isEmailValid ? loginHandler : null,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
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
