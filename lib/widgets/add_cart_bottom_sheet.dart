import 'package:flutter/material.dart';
import 'package:shopping_sample/constants/color.dart';
import 'package:shopping_sample/widgets/primary_button.dart';

class AddCartBottomSheet extends StatelessWidget {
  const AddCartBottomSheet({
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '【5人前】さみだれ（55貫）',
                      style: Theme.of(context).textTheme.caption.copyWith(
                            color: Colors.white,
                          ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '￥3,950',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PrimaryButton(
                  text: 'カートに追加',
                  onPressed: () {},
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
