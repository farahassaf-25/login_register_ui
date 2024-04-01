import 'package:flutter/material.dart';

class Constant {
  static const primaryColor = Color(0xff364156);
  static const secondaryColor = Color(0xff811638);
  static const thirdColor = Color(0xffbebebe);

  static const MaterialColor mcgpalette0 =
      MaterialColor(_mcgpalette0PrimaryValue, <int, Color>{
    50: Color(0xFFE7E8EB),
    100: Color(0xFFC3C6CC),
    200: Color(0xFF9BA0AB),
    300: Color(0xFF727A89),
    400: Color(0xFF545E6F),
    500: Color(_mcgpalette0PrimaryValue),
    600: Color(0xFF303B4F),
    700: Color(0xFF293245),
    800: Color(0xFF222A3C),
    900: Color(0xFF161C2B),
  });
  static const int _mcgpalette0PrimaryValue = 0xFF364156;

  static const MaterialColor mcgpalette0Accent =
      MaterialColor(_mcgpalette0AccentValue, <int, Color>{
    100: Color(0xFF6E97FF),
    200: Color(_mcgpalette0AccentValue),
    400: Color(0xFF084DFF),
    700: Color(0xFF0042EE),
  });
  static const int _mcgpalette0AccentValue = 0xFF3B72FF;
}
