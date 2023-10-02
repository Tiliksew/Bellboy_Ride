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
      var bottomNavBarItems = controller.bottomNavBarItems;
      var bottomNavBarIcons = controller.bottomNavBarIcons;

      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(keys.title.tr),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedIconTheme: const IconThemeData(size: 30),
            currentIndex: controller.selectedIndex.value, //New
            onTap: controller.onItemTapped,
            selectedItemColor: Theme.of(context).primaryColor,
            items: List.generate(
                bottomNavBarItems.length,
                (index) => BottomNavigationBarItem(
                      icon: Icon(bottomNavBarIcons[
                          index]), // Replace with your desired icon
                      label: bottomNavBarItems[index],
                    ))),
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
