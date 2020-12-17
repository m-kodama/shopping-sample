import 'package:flutter/material.dart';

enum ButtonSize {
  small,
  medium,
  large,
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    @required this.text,
    @required this.onPressed,
    this.icon,
    this.width,
    this.size = ButtonSize.medium,
  });

  final String text;
  final VoidCallback onPressed;
  final IconData icon;
  final double width;
  final ButtonSize size;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    return SizedBox(
      width: width,
      height: _height,
      child: icon == null
          ? RaisedButton(
              elevation: 0,
              highlightElevation: 0,
              child: Text(
                text,
                style: textStyle,
              ),
              onPressed: onPressed,
            )
          : RaisedButton.icon(
              elevation: 0,
              highlightElevation: 0,
              icon: Icon(
                icon,
                color: Colors.white,
              ),
              label: Text(
                text,
                style: textStyle,
              ),
              onPressed: onPressed,
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
