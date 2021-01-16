import 'package:flutter/material.dart';
import 'package:shopping_sample/constants/color.dart';
import 'package:shopping_sample/widgets/primary_button.dart';

class AppDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 32),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 32, 32, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'ANY LOGO',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: AppColors.primaryColor,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  'タイトルタイトルタイトルタイトルタイトルタイトル',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  '本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 16),
                child: PrimaryButton(
                  text: 'メインボタン',
                  width: double.infinity,
                  onPressed: () {
                    Navigator.of(context).pop<String>('OK');
                  },
                ),
              ),
              FlatButton(
                minWidth: double.infinity,
                height: 48,
                onPressed: () {
                  Navigator.of(context).pop<String>('Cancel');
                },
                child: Text(
                  'キャンセル',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
