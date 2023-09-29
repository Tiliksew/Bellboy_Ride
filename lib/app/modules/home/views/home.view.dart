import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home.controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Home View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
