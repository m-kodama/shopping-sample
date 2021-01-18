import 'package:flutter/material.dart';

enum ButtonSize {
  small,
  medium,
  large,
}

class FillButton extends StatelessWidget {
  const FillButton({
    @required this.text,
    @required this.onPressed,
    this.fillColor,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.bold,
    this.icon,
    this.width,
    this.size = ButtonSize.medium,
    this.rounded = false,
    this.radius = 0,
  });

  final String text;
  final VoidCallback onPressed;
  final Color fillColor;
  final Color textColor;
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
        color: onPressed == null ? null : textColor,
      ),
    );

    final shape = rounded
        ? const StadiumBorder()
        : RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          );

    final isLight = Theme.of(context).brightness == Brightness.light;
    final disabledColor = isLight ? Colors.black12 : Colors.white12;
    final disabledTextColor = isLight ? Colors.black38 : Colors.white38;

    return SizedBox(
      width: width,
      height: _height,
      child: icon == null
          ? RaisedButton(
              color: fillColor,
              elevation: 0,
              highlightElevation: 0,
              child: label,
              onPressed: onPressed,
              shape: shape,
              disabledElevation: 0,
              disabledColor: disabledColor,
              disabledTextColor: disabledTextColor,
            )
          : RaisedButton.icon(
              color: fillColor,
              elevation: 0,
              highlightElevation: 0,
              icon: Icon(
                icon,
                color: textColor,
              ),
              label: label,
              onPressed: onPressed,
              shape: shape,
              disabledElevation: 0,
              disabledColor: disabledColor,
              disabledTextColor: disabledTextColor,
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
