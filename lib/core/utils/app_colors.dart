import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color primarySwatchColor = Color(0xff4CAD73);
//4CAD73
  static MaterialColor primaryColor =
      const MaterialColor(0xFF4CAD73, <int, Color>{
    50: Color(0x1A4CAD73),
    100: Color(0x334CAD73),
    200: Color(0x4D4CAD73),
    300: Color(0x664CAD73),
    400: Color(0x804CAD73),
    500: Color(0x994CAD73),
    600: Color(0xB34CAD73),
    700: Color(0xCC4CAD73),
    800: Color(0xE64CAD73),
    900: Color(0xFF4CAD73),
  });
  static const drawerColor = Color(0xff828282);
  static const gray4 = Color(0xffBDBDBD);
  static const textFieldFillColor = Color(0xffF2F2F2);
}
