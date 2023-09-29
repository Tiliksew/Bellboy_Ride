// ignore_for_file: unnecessary_overrides

import 'package:bellboy_ride/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  var isLoading = false.obs;
  var isTokenExist = false.obs;
  var isTokenExpired = true.obs;
  @override
  void onInit() {
    super.onInit();
    checkAndGo();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void checkAndGo() async {
    isLoading(true);
    // Mocking the async api request with Future
    await Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(Routes.LOGIN);
    });

    isLoading(false);
  }
}
