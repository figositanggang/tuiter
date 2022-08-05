import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

late ThemeData myDarkMode = ThemeData(
  backgroundColor: Color(0xFF002429),
  fontFamily: GoogleFonts.poppins().fontFamily,
  bottomAppBarColor: Colors.yellow,
  scaffoldBackgroundColor: Color.fromARGB(255, 3, 15, 24),
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF002429),
    onPrimary: Color.fromARGB(255, 0, 145, 255),
    secondary: Color.fromARGB(255, 32, 48, 60),
    onSecondary: Color.fromARGB(255, 86, 134, 170),
    error: Color.fromARGB(255, 48, 13, 10),
    onError: Colors.red,
    background: Color.fromARGB(255, 9, 14, 18),
    onBackground: Color.fromARGB(255, 207, 233, 255),
    surface: Color.fromARGB(255, 24, 38, 49),
    onSurface: Color.fromARGB(255, 41, 162, 255),
  ),
  textTheme: TextTheme(
    bodyText1: GoogleFonts.poppins(),
    bodyText2: GoogleFonts.poppins(),
  ).apply(
    bodyColor: Colors.white,
    displayColor: Colors.red,
  ),
  primaryTextTheme: TextTheme(
    bodyText1: GoogleFonts.poppins(),
    bodyText2: GoogleFonts.poppins(),
  ).apply(
    bodyColor: Colors.white,
    displayColor: Colors.red,
  ),
);
