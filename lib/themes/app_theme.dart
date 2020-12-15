import 'package:flutter/material.dart';
import 'package:shopping_sample/constants/color.dart';

class AppTheme {
  AppTheme._();

  static const AppBarTheme _appBarTheme = AppBarTheme(
    elevation: 0,
    color: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  );

  static final ThemeData _baseTheme = ThemeData(
    appBarTheme: _appBarTheme,
    primarySwatch: AppColors.primaryColor,
  );

  static ThemeData light() => _baseTheme.copyWith(
        brightness: Brightness.light,
      );

  static ThemeData dark() => _baseTheme.copyWith(
        brightness: Brightness.dark,
        toggleableActiveColor: AppColors.primaryColor,
      );
}
