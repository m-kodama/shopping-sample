import 'package:flutter/material.dart';
import 'package:shopping_sample/constants/color.dart';

class CheckboxTile extends StatelessWidget {
  const CheckboxTile({
    @required this.title,
    @required this.isSelected,
    @required this.onChanged,
  });

  final String title;
  final bool isSelected;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(title),
      controlAffinity: ListTileControlAffinity.leading,
      checkColor: Colors.white,
      activeColor: AppColors.primaryColor,
      value: isSelected,
      onChanged: onChanged,
    );
  }
}
