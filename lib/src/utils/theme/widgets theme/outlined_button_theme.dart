import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';

class NOutlinedButtonTheme{
  NOutlinedButtonTheme._();  //To avoid creating instance

  /*  Light Theme   */
  static final lightNOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: secondaryColor,
        side: BorderSide(color: secondaryColor),
        padding: EdgeInsets.symmetric(vertical: buttonHeight)
    ),
  );

  /*  Dark Theme   */
  static final darkNOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: whiteColor,
        side: BorderSide(color: whiteColor),
        padding: EdgeInsets.symmetric(vertical: buttonHeight)
    ),
  );
}