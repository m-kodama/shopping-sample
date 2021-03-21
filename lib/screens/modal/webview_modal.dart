import 'package:flutter/material.dart';
import 'package:shopping_sample/widgets/sample/button/fill_button.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewDialog extends StatelessWidget {
  const WebviewDialog();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
        child: Column(
          children: [
            const Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: WebView(
                  initialUrl: 'https://google.com',
                ),
              ),
            ),
            Container(
              color: Theme.of(context).cardColor,
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                child: FlatButton(
                  child: const Text('閉じる'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
