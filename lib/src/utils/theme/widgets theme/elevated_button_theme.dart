
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';

/*  Light and Dark Elevated Button Theme */

class NElevatedButtonTheme{
NElevatedButtonTheme._();  //To avoid creating instance
  /* Light Theme */
  static final lightNElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(),
        foregroundColor: whiteColor,
        backgroundColor: secondaryColor,
        side: BorderSide(color: secondaryColor),
        padding: EdgeInsets.symmetric(vertical: buttonHeight)
    ),
  );

  /* Dark Theme */
  static final darkNElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(),
        foregroundColor: secondaryColor,
        backgroundColor: whiteColor,
        side: BorderSide(color: secondaryColor),
        padding: EdgeInsets.symmetric(vertical: buttonHeight)
    ),
  );
}