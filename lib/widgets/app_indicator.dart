import 'package:flutter/material.dart';
import 'package:shopping_sample/constants/color.dart';

class AppIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryColor),
        ),
      ),
    );
  }
}
