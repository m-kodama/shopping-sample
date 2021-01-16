import 'package:flutter/material.dart';
import 'package:shopping_sample/screens/modal/app_dialog.dart';
import 'package:shopping_sample/widgets/primary_button.dart';

class SampleDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppDialog(
      title: 'TITLE',
      subject: '件名件名件名件名件名件名件名件名件名件名',
      text: '本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文',
      buttons: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
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
    );
  }
}
