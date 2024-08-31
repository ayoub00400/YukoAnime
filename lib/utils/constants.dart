import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColorsPallette {
  static const lightThemeColors = [
    Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 230, 230, 230),
    Color.fromARGB(255, 204, 204, 204),
    Color.fromARGB(255, 179, 179, 179)
  ];
  static const darkThemeColors = [
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(255, 42, 42, 42),
    Color.fromARGB(255, 67, 67, 67),
    Color.fromARGB(255, 118, 118, 118)
  ];
  static const secondaryColors = [
    Color.fromARGB(255, 255, 107, 1),
    Color.fromARGB(255, 255, 137, 1),
    Color.fromARGB(255, 255, 196, 154),
    Color.fromARGB(255, 255, 225, 205)
  ];
}

class AppTypography {
  //Fonts
  static const appFont = GoogleFonts.poppins;

  //Font Weights
  static const appFontBold = FontWeight.bold;
  static const appFontSemiBold = FontWeight.w600;
  static const appFontMedium = FontWeight.w500;
  static const appFontRegular = FontWeight.w400;

  //Font Sizes
  static const appFontSize0 = 23.0;
  static const appFontSize1 = 19.0;
  static const appFontSize2 = 16.0;
  static const appFontSize3 = 14.0;
  static const appFontSize4 = 12.0;
  static const appFontSize5 = 10.0;
}

class AppSpacings {
  //padding
  static const double extraSmallPadding = 4;
  static const double smallPadding = 8;
  static const double mediumPadding = 16;
  static const double halfMediumPadding = 24;
  static const double largePadding = 32;
  static const double extraLargePadding = 64;
  //spacing
  static const double extraSmallSpacing = 4;
  static const double smallSpacing = 8;
  static const double mediumSpacing = 16;
  static const double halfMediumSpacing = 24;
  static const double largeSpacing = 32;
  static const double extraLargeSpacing = 48;
  //radius
  static const double extraSmallRadius = 10;
  static const double smallRadius = 20;
  static const double mediumRadius = 40;
  static const double largeRadius = 60;
  static const double extraLargeRadius = 80;
  static String font = '';
  //icon Size:
  static const double smallIconSize = 10;
  static const double mediumIconSize = 20;
  static const double halfMediumIconSize = 25;
  static const double largIconSize = 30;
}
