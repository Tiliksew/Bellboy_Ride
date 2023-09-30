import 'package:flutter/material.dart';
import 'package:get/get.dart';

var nextButtonStyle = (isEmailValid) => ButtonStyle(
    backgroundColor: MaterialStateProperty.all(isEmailValid
        ? !Get.isDarkMode
            ? Colors.black
            : Colors.white
        : Colors.grey));
var anchorTextStyle = const TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.grey,
    decorationThickness: 1,
    decoration: TextDecoration.underline);
