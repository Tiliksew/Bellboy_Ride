import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../theme/style.config.dart';
import '../controllers/login.controller.dart';
import '../../../translations/translation_keys.dart' as keys;

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
        child: Column(
          children: [
            const ScrollableInputArea(),

            //
            Expanded(
              child: Column(
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
                  const NextButton(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
