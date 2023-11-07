import 'package:car_dealership/core/core.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const fontFamily = 'AirbnbCereal';
  static ThemeData get light {
    return ThemeData(
      fontFamily: fontFamily,
      brightness: Brightness.light,
      primaryColor: ColorConsts.primaryColor,
      colorScheme: const ColorScheme.light(),
      cardTheme: const CardTheme(),
      buttonTheme: const ButtonThemeData(),
      textTheme: _lightTextTheme,
    );
  }

  /// Light text theme
  static const TextTheme _lightTextTheme = TextTheme(
    displayLarge: _lightDisplayLarge,
    displayMedium: _lightDisplayMedium,
    displaySmall: _lightDisplaySmall,
    headlineMedium: _lightHeadlineMedium,
    titleMedium: _lightTitleMedium,
    titleSmall: _lightTitleSmall,
    bodyMedium: _lightBodyMedium,
    bodyLarge: _lightBodyLarge,
    labelLarge: _lightButtonText,
    bodySmall: _lightBodySmall,
  );

  /// Light Theme Headline 1
  static const _lightDisplayLarge = TextStyle(
    fontSize: 34,
    color: ColorConsts.black,
    letterSpacing: 0,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  /// Light Theme Headline 2
  static const _lightDisplayMedium = TextStyle(
    fontSize: 28,
    color: ColorConsts.black,
    letterSpacing: -0.5,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  /// Light Theme Headline 3
  static const _lightDisplaySmall = TextStyle(
    fontSize: 20,
    color: ColorConsts.black,
    letterSpacing: -0.5,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  /// Light Theme Headline 4
  static const _lightHeadlineMedium = TextStyle(
    fontSize: 18,
    color: ColorConsts.black,
    letterSpacing: -0.5,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  /// Light Theme Subtitle 1
  static const _lightTitleMedium = TextStyle(
    fontSize: 16,
    color: ColorConsts.black,
    letterSpacing: 0,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  /// Light Theme Subtitle 2
  static const _lightTitleSmall = TextStyle(
    fontSize: 15,
    color: ColorConsts.black,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  /// Light Theme Body Text 1
  static const _lightBodyLarge = TextStyle(
    fontSize: 13,
    color: ColorConsts.black,
    letterSpacing: 0,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  /// Light Theme Body Text 2
  static const _lightBodyMedium = TextStyle(
    fontSize: 12,
    color: ColorConsts.black,
    letterSpacing: 0,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  /// Light Theme Button Text
  static const _lightButtonText = TextStyle(
    fontSize: 14,
    color: ColorConsts.white,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  /// Light Theme Caption Button Text
  static const _lightBodySmall = TextStyle(
    fontSize: 10,
    color: ColorConsts.black,
    fontStyle: FontStyle.normal,
  );

  static ThemeData get dark {
    return ThemeData(
      fontFamily: fontFamily,
      brightness: Brightness.dark,
      primaryColor: ColorConsts.primaryColor,
      textTheme: _darkTextTheme,
    );
  }

  /// Dark theme data

  /// Light text theme
  static const TextTheme _darkTextTheme = TextTheme(
    displayLarge: _darkDisplayLarge,
    displayMedium: _darkDisplayMedium,
    displaySmall: _darkDisplaySmall,
    headlineMedium: _darkHeadlineMedium,
    labelLarge: _darkButtonText,
    titleMedium: _darkTitleMedium,
    titleSmall: _darkTitleSmall,
    bodyMedium: _darkBodyMedium,
    bodyLarge: _darkBodyLarge,
    bodySmall: _darkBodySmall,
  );

  /// Dark Theme Headline 1
  static const _darkDisplayLarge = TextStyle(
    fontSize: 34,
    color: ColorConsts.black,
    letterSpacing: 0,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  /// Dark Theme Headline 2
  static const _darkDisplayMedium = TextStyle(
    fontSize: 24,
    color: ColorConsts.black,
    letterSpacing: -0.5,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  /// Dark Theme Headline 3
  static const _darkDisplaySmall = TextStyle(
    fontSize: 20,
    color: ColorConsts.black,
    letterSpacing: -0.5,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  /// Dark Theme Headline 4
  static const _darkHeadlineMedium = TextStyle(
    fontSize: 18,
    color: ColorConsts.black,
    letterSpacing: -0.5,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  /// Dark Theme Subtitle 1
  static const _darkTitleMedium = TextStyle(
    fontSize: 16,
    color: ColorConsts.black,
    letterSpacing: 0,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  /// Dark Theme Subtitle 2
  static const _darkTitleSmall = TextStyle(
    fontSize: 15,
    color: ColorConsts.black,
    letterSpacing: 0,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  /// Dark Theme Body Text 1
  static const _darkBodyLarge = TextStyle(
    fontSize: 13,
    color: ColorConsts.black,
    letterSpacing: 0,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  /// Dark Theme Body Text 2
  static const _darkBodyMedium = TextStyle(
    fontSize: 12,
    color: ColorConsts.black,
    letterSpacing: 0,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  /// Dark Theme Button Text
  static const _darkButtonText = TextStyle(
    fontSize: 14,
    color: ColorConsts.white,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  /// Dark Theme Caption Button Text
  static const _darkBodySmall = TextStyle(
    fontSize: 10,
    color: ColorConsts.black,
    fontStyle: FontStyle.normal,
  );
}
