import 'package:bellboy_ride/app/theme/theme.config.dart';
import 'package:bellboy_ride/app/translations/configurations/messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(320, 646),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Bellboy Ride",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        themeMode: ThemeMode.light,
        theme: lightThemeData,
        darkTheme: darkThemeData,
        translations: Messages(),
        fallbackLocale: const Locale('en', 'US'),
        locale: const Locale('am', 'ET'),
      ),
    ),
  );
}
