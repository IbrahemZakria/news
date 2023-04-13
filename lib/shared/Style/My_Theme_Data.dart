import 'package:flutter/material.dart';

class MyThemeData {
  static Color PrimaryColor = Color(0xff39A552);
  static Color darkaccentColor = Color(0xff141A2E);
  static Color ligtBodyColor = Color(0xffDFECDB);
  static Color darkBodyColor = Color(0xff060E1E);
  static Color greenColor = Color(0xff61E757);
  static Color redColor = Color(0xffE43737);

  static ThemeData Lighttheme = ThemeData(
    primaryColor: PrimaryColor,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        color: PrimaryColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)))),
    textTheme: TextTheme(
        subtitle1: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
        headline2: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
        headline1: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25)),
    scaffoldBackgroundColor: Colors.transparent,
  );
}
