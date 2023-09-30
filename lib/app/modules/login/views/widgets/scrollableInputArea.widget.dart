import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'login_form.widget.dart';
import '../../controllers/login.controller.dart';
import '../../../../translations/translation_keys.dart' as keys;

class ScrollableInputArea extends GetView<LoginController> {
  const ScrollableInputArea({super.key});

  @override
  Widget build(BuildContext context) {
    var toggleLanguage = controller.toggleLanguage;
    return SizedBox(
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
                style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w800),
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
          const LoginForm(),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
