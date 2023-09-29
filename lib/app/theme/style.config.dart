import 'package:flutter/material.dart';

var nextButtonStyle = (isEmailValid) => ButtonStyle(
    backgroundColor:
        MaterialStateProperty.all(isEmailValid ? Colors.black : Colors.grey));
var anchorTextStyle = const TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.grey,
    decorationThickness: 1,
    decoration: TextDecoration.underline);
