import 'package:flutter/material.dart';
import 'package:shopping_sample/constants/color.dart';

class AppTheme {
  AppTheme._();

  static final ColorScheme _colorScheme = ColorScheme.fromSwatch(
    primarySwatch: AppColors.primaryColor,
  );

  static const AppBarTheme _appBarTheme = AppBarTheme(
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: Colors.white,
      ),
    ),
  );

  static const CardTheme _cardTheme = CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
  );

  static final ButtonThemeData _buttonThemeData = ButtonThemeData(
    colorScheme: _colorScheme,
    textTheme: ButtonTextTheme.primary,
    // shape: const StadiumBorder(),
    buttonColor: AppColors.primaryColor,
  );

  static ThemeData light() => ThemeData.light().copyWith(
        appBarTheme: _appBarTheme,
        buttonTheme: _buttonThemeData,
        cardTheme: _cardTheme.copyWith(
          elevation: 0,
        ),
        primaryColor: AppColors.primaryColor,
      );

  static ThemeData dark() => ThemeData.dark().copyWith(
        appBarTheme: _appBarTheme,
        buttonTheme: _buttonThemeData,
        cardTheme: _cardTheme,
        primaryColorDark: AppColors.primaryColor,
        textSelectionColor: AppColors.primaryColor,
      );
}
