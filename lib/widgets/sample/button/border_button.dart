import 'package:flutter/material.dart';
import 'package:shopping_sample/constants/color.dart';
import 'package:shopping_sample/widgets/sample/button/fill_button.dart';

class BorderButton extends StatelessWidget {
  const BorderButton({
    @required this.text,
    @required this.onPressed,
    this.textColor,
    this.borderColor,
    this.borderWidth = 1,
    this.fontWeight = FontWeight.bold,
    this.icon,
    this.width,
    this.size = ButtonSize.medium,
    this.rounded = false,
    this.radius = 0,
  });

  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final Color borderColor;
  final double borderWidth;
  final FontWeight fontWeight;
  final IconData icon;
  final double width;
  final ButtonSize size;
  final bool rounded;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final label = Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
      ),
    );

    final borderSide = BorderSide(
      color: borderColor ?? textColor ?? AppColors.primaryColor,
      width: borderWidth,
    );

    final shape = rounded
        ? const StadiumBorder()
        : RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          );

    final isLight = Theme.of(context).brightness == Brightness.light;
    final disabledColor = isLight ? Colors.black38 : Colors.white38;

    return SizedBox(
      width: width,
      height: _height,
      child: icon == null
          ? OutlineButton(
              color: textColor,
              textColor: textColor,
              borderSide: borderSide,
              child: label,
              onPressed: onPressed,
              shape: shape,
              disabledBorderColor: disabledColor,
              disabledTextColor: disabledColor,
            )
          : OutlineButton.icon(
              color: textColor,
              textColor: textColor,
              borderSide: borderSide,
              icon: Icon(
                icon,
                color: textColor,
              ),
              label: label,
              onPressed: onPressed,
              shape: shape,
              disabledBorderColor: disabledColor,
              disabledTextColor: disabledColor,
            ),
    );
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
}
