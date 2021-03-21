import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logo = Theme.of(context).brightness == Brightness.light
        ? 'assets/images/logo_dark.png'
        : 'assets/images/logo_dark.png';
    return Image.asset(
      logo,
      fit: BoxFit.cover,
      height: 32,
    );
  }
}
