import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controllers/login.controller.dart';
import '../../../../theme/style.config.dart';
import '../../../../translations/translation_keys.dart' as keys;
// import 'package:bellboy_ride/app/translations/translation_keys.dart' as keys;
// because relative imports are more efficient than package imports when we're using the local file

class NextButton extends GetView<LoginController> {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      // Controller Variables
      var isEmailValid = controller.isEmailValid.isTrue;

      // Controller Methods
      var loginHandler = controller.loginHandler;
      var nextButtonHandler = isEmailValid ? () => loginHandler() : null;

      return SizedBox(
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
      );
    });
  }
}
