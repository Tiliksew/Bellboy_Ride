import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/login.controller.dart';

import 'widgets/fragments.dart';
import 'widgets/scrollableInputArea.widget.dart' show ScrollableInputArea;
import 'widgets/next_button.widget.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(10.0.r),
        child: const Column(
          children: [
            // User Input Area
            ScrollableInputArea(),
            Expanded(
              child: Column(
                children: [
                  // Links
                  Anchors(),

                  // Space
                  NewLine(),

                  // Next Button
                  NextButton(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
