import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.montserrat(
      color: Colors.black,
      fontSize: 34,
    ),
    titleMedium: GoogleFonts.montserrat(color: Colors.black),
    bodyLarge: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 24,
    ),
    bodyMedium: GoogleFonts.poppins(color: Colors.black, fontSize: 20),
    bodySmall: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.montserrat(
      color: Colors.white,
      fontSize: 34,
    ),
    titleMedium: GoogleFonts.montserrat(color: Colors.white),
    bodyLarge: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 24,

    ),
    bodyMedium: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
    bodySmall: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
  );
}
