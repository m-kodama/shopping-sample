import 'package:flutter/material.dart';
import 'package:shopping_sample/constants/color.dart';

class CheckboxTile extends StatelessWidget {
  const CheckboxTile({
    this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(title),
      controlAffinity: ListTileControlAffinity.leading,
      checkColor: Colors.white,
      activeColor: AppColors.primaryColor,
      value: true,
      onChanged: (bool value) {},
    );
  }
}
