import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class AutiTheme {
  static ThemeData lightThemeData(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primaryColor: primary,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: primary),
      );

  //colors
  static Color primary = const Color.fromARGB(255, 214, 28, 78);
  static Color white = Vx.white;
  static Color creamColor = const Color.fromARGB(255, 239, 239, 239);
  static Color grey = const Color.fromARGB(255, 232, 232, 232);
  static Color logoGreen = const Color.fromARGB(255, 27, 220, 150);
  static Color logoBlack = const Color.fromARGB(255, 37, 37, 37);
}
