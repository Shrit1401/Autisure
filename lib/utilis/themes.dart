import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class AutiTheme {
  static ThemeData lightThemeData(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primaryColor: primary,
      );

  //colors
  static Color primary = const Color.fromARGB(255, 214, 28, 78);
  static Color white = Vx.white;
  static Color creamColor = const Color.fromARGB(255, 239, 239, 239);
}
