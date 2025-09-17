import 'package:flutter/material.dart';

class AppTextStyle {
  // Private constrctor

  AppTextStyle._();

  // APP BAR TEXT STYLE

  static final appBarTextStyle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );

  // Heading Line N 1 Text Style

  static final firstTStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  //  TEXT STYLE N2
  static final secondTStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );

  //BUTTEN TEXT STYLE
  static final btnTStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
