import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/Global/Colors.dart';

class AppTextStyles {
  static TextStyle textbutton(
      {Color color = Colors.white, double fontSize = 18}) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle subHeading(
      {Color color = Colors.white, double fontSize = 18}) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: FontWeight.w300,
      color: color,
    );
  }

  static TextStyle footerText(
      {Color color = Colors.white, double fontSize = 12}) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      color: color,
    );
  }
}
