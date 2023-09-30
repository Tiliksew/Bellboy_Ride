import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import '../controllers/home.controller.dart';
import '../../../translations/translation_keys.dart' as keys;

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var isLoading = controller.isLoading.isTrue;
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(keys.title.tr),
        ),
        body: isLoading
            ? Center(
                child: SizedBox(
                  width: 30.r,
                  height: 30.r,
                  child: CircularProgressIndicator(
                    color: Colors.primaries.first,
                  ),
                ),
              )
            : Center(
                child: Text(
                  keys.welcome.tr,
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
      );
    });
  }
}
