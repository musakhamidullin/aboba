import 'package:flutter/material.dart';

class ThemeApp {
  ThemeApp(BuildContext context) {
    _fontSize = Theme.of(context).textTheme.titleLarge!.fontSize!;
  }

  static EdgeInsetsGeometry horizontalPadding = const EdgeInsets.symmetric(horizontal: 16);
  static double _fontSize = 22;

  static SizedBox paddingWidget = const SizedBox(height: 16, width: 16);

  static ThemeData get() {
    return ThemeData(
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
                shadowColor: MaterialStatePropertyAll(Colors.transparent),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ))),
        primaryColor: primary,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: primary),
        fontFamily: 'SF Pro Display',
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.black, fontSize: _fontSize),
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
        ));
  }
}

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFEEEDFD),
  100: Color(0xFFD4D1FB),
  200: Color(0xFFB8B3F9),
  300: Color(0xFF9B95F6),
  400: Color(0xFF857EF4),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF685FF0),
  700: Color(0xFF5D54EE),
  800: Color(0xFF534AEC),
  900: Color(0xFF4139E8),
});
const int _primaryPrimaryValue = 0xFF7067F2;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFFCECCFF),
  700: Color(0xFFB6B2FF),
});
const int _primaryAccentValue = 0xFFFFFFFF;
