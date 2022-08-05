import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const MaterialColor myBlue = MaterialColor(
  _myBluePrimary,
  <int, Color>{
    50: Color.fromRGBO(100, 100, 200, 1),
    100: Color.fromRGBO(100, 100, 200, 1),
    200: Color.fromRGBO(100, 100, 200, 1),
    300: Color.fromRGBO(100, 100, 200, 1),
    400: Color.fromRGBO(100, 100, 200, 1),
    500: Color(_myBluePrimary),
    600: Color.fromRGBO(100, 100, 200, 1),
    700: Color.fromRGBO(100, 100, 200, 1),
    800: Color.fromRGBO(100, 100, 200, 1),
    900: Color.fromRGBO(100, 100, 200, 1),
  },
);

const int _myBluePrimary = 0xFF00D0FF;

const MaterialColor myDarkBlue = MaterialColor(
  _myDarkBluePrimary,
  <int, Color>{
    50: Color.fromRGBO(100, 100, 200, 1),
    100: Color.fromRGBO(100, 100, 200, 1),
    200: Color.fromRGBO(100, 100, 200, 1),
    300: Color.fromRGBO(100, 100, 200, 1),
    400: Color.fromRGBO(100, 100, 200, 1),
    500: Color(_myBluePrimary),
    600: Color.fromRGBO(100, 100, 200, 1),
    700: Color.fromRGBO(100, 100, 200, 1),
    800: Color.fromRGBO(100, 100, 200, 1),
    900: Color.fromRGBO(100, 100, 200, 1),
  },
);

const int _myDarkBluePrimary = 0xFF002429;

late ThemeData myDarkMode = ThemeData(
  primarySwatch: myDarkBlue,
  backgroundColor: Color(_myDarkBluePrimary),
  fontFamily: GoogleFonts.poppins().fontFamily,
  primaryColor: myDarkBlue.shade900,
  bottomAppBarColor: Colors.yellow,
);
