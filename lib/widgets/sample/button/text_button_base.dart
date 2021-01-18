import 'package:flutter/material.dart';

class TextButtonBase extends StatelessWidget {
  const TextButtonBase({
    @required this.title,
    @required this.onPressed,
    @required this.width,
    @required this.height,
    this.textColor,
    this.fillColor,
    this.borderColor,
    this.fontSize,
    this.fontWeight,
    this.shape,
  }) : super();

  final String title;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color textColor;
  final Color fillColor;
  final Color borderColor;
  final double fontSize;
  final FontWeight fontWeight;
  final ShapeBorder shape;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: RaisedButton(
        onPressed: onPressed,
        color: fillColor,
        shape: shape,
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}

enum ButtonSize {
  small,
  medium,
  large,
}
