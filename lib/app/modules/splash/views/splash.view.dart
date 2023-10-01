import 'package:bellboy_ride/app/constants/text.constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/splash.controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(controller.isLoading.value);
    }

    // just for the purpose of elevating the controller inside this view
    controller.isLoading.value;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(LOGO_IMAGE_LINK),
            ),
            SizedBox(
              width: 30.r,
              height: 30.r,
              child: CircularProgressIndicator(
                color: Colors.primaries.first,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
