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
  static Color grey = Vx.hexToColor("ECECECECEC");
}
