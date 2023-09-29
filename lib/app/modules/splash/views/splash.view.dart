import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash.controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      // just for the purpose of elevating the controller inside this view
      print(controller.isLoading.value);
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset("assets/images/logo.png"),
            ),
            SizedBox(
              width: 30,
              height: 30,
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
