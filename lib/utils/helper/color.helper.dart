import 'package:flutter/material.dart';

class ColorHelper {
  ColorHelper._();

  static Color colorString(String color) {
    final hexCode = color.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}
