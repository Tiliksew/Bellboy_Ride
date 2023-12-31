import 'package:get/get.dart';

import '../modules/home/bindings/home.binding.dart';
import '../modules/home/views/home.view.dart';
import '../modules/login/bindings/login.binding.dart';
import '../modules/login/views/login.view.dart';
import '../modules/splash/bindings/splash.binding.dart';
import '../modules/splash/views/splash.view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // static const INITIAL = Routes.HOME;
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
