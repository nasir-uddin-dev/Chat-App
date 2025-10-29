import 'package:flutter/material.dart';
import 'package:signin_signup_firebase/src/utils/theme/widgets%20theme/elevated_button_theme.dart';
import 'package:signin_signup_firebase/src/utils/theme/widgets%20theme/outlined_button_theme.dart';
import 'package:signin_signup_firebase/src/utils/theme/widgets%20theme/text_button_theme.dart';
import 'package:signin_signup_firebase/src/utils/theme/widgets%20theme/text_field_theme.dart';
import 'package:signin_signup_firebase/src/utils/theme/widgets%20theme/text_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: WidgetTextTheme.lightTextTheme,
    outlinedButtonTheme: NOutlinedButtonTheme.lightNOutlinedButtonTheme,
    elevatedButtonTheme: NElevatedButtonTheme.lightNElevatedButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme,
    textButtonTheme: NTextButtonTheme.lightNTextButtonTheme
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: WidgetTextTheme.darkTextTheme,
    outlinedButtonTheme: NOutlinedButtonTheme.darkNOutlinedButtonTheme,
    elevatedButtonTheme: NElevatedButtonTheme.darkNElevatedButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.darkInputDecorationTheme,
    textButtonTheme: NTextButtonTheme.darkNTextButtonTheme
  );
}
