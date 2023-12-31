// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../translations/translation_keys.dart' as keys;

class HomeController extends GetxController {
  var isLoading = false.obs;
  var selectedIndex = 0.obs;
  List<String> bottomNavBarItems = [
    keys.home.tr,
    keys.go.tr,
    keys.settings.tr,
  ];
  List<IconData> bottomNavBarIcons = [
    Icons.home,
    Icons.directions,
    Icons.local_florist_outlined,
  ];

  @override
  void onInit() {
    super.onInit();
    checkingApiRequest();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void checkingApiRequest() async {
    isLoading(true);
    await Future.delayed(const Duration(seconds: 3), () {});
    isLoading(false);
  }

  void onItemTapped(int index) {
    selectedIndex(index);
  }
}
