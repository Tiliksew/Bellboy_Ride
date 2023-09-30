// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

// const COLOR_PRIMARY = Color(0xFF8A2387);
const COLOR_PRIMARY = Color(0xFF000000);

// const MaterialColor customColor = MaterialColor(
//   0xFF8A2387,
//   <int, Color>{
//     50: Color(0xFFE1BEE7),
//     100: Color(0xFFCE93D8),
//     200: Color(0xFFBA68C8),
//     300: Color(0xFFAB47BC),
//     400: Color(0xFF9C27B0),
//     500: Color(0xFF8A2387),
//     600: Color(0xFF7B1FA2),
//     700: Color(0xFF6A1B9A),
//     800: Color(0xFF4A148C),
//     900: Color(0xFF38006B),
//   },
// );

// I added this dark theme to follow your design
const MaterialColor customColor2 = MaterialColor(
  0xFF000000,
  <int, Color>{
    50: Color(0xFFE0E0E0),
    100: Color(0xFFBDBDBD),
    200: Color(0xFF9E9E9E),
    300: Color(0xFF757575),
    400: Color(0xFF616161),
    500: Color(0xFF424242),
    600: Color(0xFF303030),
    700: Color(0xFF212121),
    800: Color(0xFF1A1A1A),
    900: Color(0xFF151515),
  },
);

ThemeData lightThemeData = ThemeData(
  brightness: Brightness.light,
  // primarySwatch: MaterialColor(1, {1: COLOR_PRIMARY}),
  appBarTheme: const AppBarTheme(color: COLOR_PRIMARY),
  primarySwatch: customColor2,
  primaryColorLight: COLOR_PRIMARY,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontFamily: 'Lato',
    ),
    bodyLarge: TextStyle(fontFamily: 'Lato'),
    displayLarge: TextStyle(fontSize: 25),
    displayMedium: TextStyle(fontSize: 20),
    displaySmall: TextStyle(fontSize: 16),
  ),
  primaryColor: COLOR_PRIMARY,
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(backgroundColor: COLOR_PRIMARY),
);
