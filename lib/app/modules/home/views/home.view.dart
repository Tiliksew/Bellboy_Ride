import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home.controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: const Center(
        child: Text(
          'Welcome to Bellboy For Rider',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
