import 'package:flutter/material.dart';
import 'package:shopping_sample/constants/color.dart';
import 'package:shopping_sample/screens/cart_screen.dart';
import 'package:shopping_sample/widgets/primary_button.dart';

class ConfirmCartBottomSheet extends StatelessWidget {
  const ConfirmCartBottomSheet({
    this.padding = EdgeInsets.zero,
  });

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        padding: padding,
        decoration: const BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16), topLeft: Radius.circular(16))),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "￥1,520",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
              ),
              Expanded(
                child: PrimaryButton(
                  text: 'カートへ',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => CartScreen(),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  textColor: AppColors.primaryColor,
                  fillColor: Colors.white,
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
