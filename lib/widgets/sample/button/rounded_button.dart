import 'package:flutter/material.dart';
import 'package:shopping_sample/constants/color.dart';
import 'package:shopping_sample/widgets/sample/button/text_button_base.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    @required this.title,
    @required this.size,
    @required this.onPressed,
    this.textColor = Colors.white,
    this.fillColor = AppColors.primaryColor,
    this.borderColor = AppColors.primaryColor,
    this.fontSize,
    this.fontWeight = FontWeight.w600,
  }) : super();

  final String title;
  final ButtonSize size;
  final VoidCallback onPressed;
  final Color textColor;
  final Color fillColor;
  final Color borderColor;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return TextButtonBase(
      title: title,
      onPressed: onPressed,
      width: _width,
      height: _height,
      textColor: textColor,
      fillColor: fillColor,
      borderColor: borderColor,
      fontSize: _fontSize,
      fontWeight: fontWeight,
      shape: StadiumBorder(
        side: BorderSide(
          color: borderColor,
        ),
      ),
    );
  }

  double get _width {
    switch (size) {
      case ButtonSize.small:
        return 100;
      case ButtonSize.medium:
        return 200;
      case ButtonSize.large:
        return double.infinity;
    }
    return 200;
  }

  double get _height {
    switch (size) {
      case ButtonSize.small:
        return 32;
      case ButtonSize.medium:
        return 48;
      case ButtonSize.large:
        return 64;
    }
    return 48;
  }

  double get _fontSize {
    if (fontSize != null) {
      return fontSize;
    }

    switch (size) {
      case ButtonSize.small:
        return 12;
      case ButtonSize.medium:
        return 14;
      case ButtonSize.large:
        return 16;
    }
    return 14;
  }
}
