import 'package:bellboy_ride/app/constants/text.constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import '../controllers/home.controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var isLoading = controller.isLoading.isTrue;
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(HOME),
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
                  WELCOME,
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
      );
    });
  }
}
