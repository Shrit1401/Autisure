import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class AutiTheme {
  static ThemeData lightThemeData(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primaryColor: primary,
        canvasColor: white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: white,
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: bgDark)
            .copyWith(secondary: bgDark),
      );

  static ThemeData darkThemeData(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primaryColor: darkPrimary,
        canvasColor: white,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(elevation: MaterialStateProperty.all(0))),
        backgroundColor: bgDark,
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: primary)
            .copyWith(secondary: white),
      );

  //colors
  static Color primary = const Color.fromARGB(255, 214, 28, 78);
  static Color darkPrimary = const Color.fromARGB(255, 196, 25, 71);
  static Color white = Vx.white;
  static Color creamColor = const Color.fromARGB(255, 239, 239, 239);
  static Color grey = const Color.fromARGB(255, 232, 232, 232);
  static Color logoGreen = const Color.fromARGB(255, 27, 220, 150);
  static Color logoBlack = const Color.fromARGB(255, 37, 37, 37);
  static Color bgDark = const Color.fromARGB(255, 41, 41, 41);
}
