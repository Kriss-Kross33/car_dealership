import 'package:car_dealership/core/core.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const fontFamily = 'AirbnbCereal';
  static ThemeData get light {
    return ThemeData(
      fontFamily: fontFamily,
      brightness: Brightness.light,
      primaryColor: ColorConsts.primaryColor,
    );
  }

  static ThemeData get dark {
    return ThemeData(
      fontFamily: fontFamily,
      brightness: Brightness.dark,
      primaryColor: ColorConsts.primaryColor,
    );
  }
}
