//
import 'package:flutter/material.dart';
import 'dart:math';

/// Helper class for device related operations.
///
class DeviceUtils {
  DeviceUtils._();
  static late BuildContext context;
  static init(BuildContext contextInput) {
    context = contextInput;
  }

  // static double baseScreenWith = 541;
  // static double baseScreenHeight = 904;
  static double baseScreenWith = 375;
  static double baseScreenHeight = 812;
  static double _deviceWidth() => MediaQuery.of(context).size.width;
  static double _deviceHeight() => MediaQuery.of(context).size.height;

  static double get deviceWidth => _deviceWidth();
  static double get deviceHeight => _deviceHeight();

  static double scaleWidth = deviceWidth / baseScreenWith;
  static double scaleHeight = deviceHeight / baseScreenHeight;

  static double sizeScale(double size) {
    double scale = min(scaleWidth, scaleHeight);
    return (scale * size).ceilToDouble();
  }

  ///
  /// hides the keyboard if its already open
  ///
  static hideKeyboard() {
    FocusScope.of(context).unfocus();
  }

  static double getScaledSize(double scale) =>
      scale *
      (MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.height);

  ///
  /// accepts a double [scale] and returns scaled sized based on the screen
  /// width
  ///
  static double getScaledWidth(double scale) =>
      scale * MediaQuery.of(context).size.width;

  ///
  /// accepts a double [scale] and returns scaled sized based on the screen
  /// height
  ///
  static double getScaledHeight(double scale) =>
      scale * MediaQuery.of(context).size.height;
}
