import 'package:flutter/material.dart';
import 'package:signin_signup_firebase/src/constants/colors.dart';

class NTextButtonTheme{
  static final lightNTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: darkColor,
    )
  );


  static final darkNTextButtonTheme = TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: whiteColor,
      )
  );
}