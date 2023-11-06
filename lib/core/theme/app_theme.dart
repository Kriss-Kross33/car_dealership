import 'package:car_dealership/core/core.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorConsts.primaryColor,
    );
  }

  static ThemeData get dark {
    return ThemeData(brightness: Brightness.dark);
  }
}
