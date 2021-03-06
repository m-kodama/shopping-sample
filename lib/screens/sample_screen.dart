import 'package:flutter/material.dart';
import 'package:shopping_sample/screens/modal/modal_overlay.dart';
import 'package:shopping_sample/screens/modal/webview_modal.dart';
import 'package:shopping_sample/widgets/sample/button/border_button.dart';
import 'package:shopping_sample/widgets/sample/button/fill_button.dart';

class SampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // FillButton
                    FillButton(text: 'タイトル', onPressed: null),
                    FillButton(
                      text: 'タイトル',
                      onPressed: () {
                        Navigator.of(context).push<void>(
                          ModalOverlay<void>(
                            child: const WebviewDialog(),
                            isAndroidBackEnable: true,
                          ),
                        );
                      },
                    ),
                    FillButton(
                      text: 'タイトル',
                      onPressed: () {},
                      radius: 8,
                    ),
                    FillButton(
                      text: 'タイトル',
                      onPressed: () {},
                      rounded: true,
                    ),
                    FillButton(
                      icon: Icons.add_box,
                      text: 'タイトル',
                      onPressed: () {},
                      rounded: true,
                    ),
                    FillButton(
                      icon: Icons.add_box,
                      text: 'タイトル',
                      onPressed: () {},
                      rounded: true,
                      fillColor: Colors.yellow,
                      textColor: Colors.black87,
                    ),
                    FillButton(
                      text: 'タイトル',
                      onPressed: () {},
                      rounded: true,
                      size: ButtonSize.small,
                    ),
                    FillButton(
                      text: 'タイトル',
                      onPressed: () {
                        Navigator.of(context).push<void>(
                          ModalOverlay<void>(
                            child: const WebviewDialog(),
                            isAndroidBackEnable: true,
                          ),
                        );
                      },
                      rounded: true,
                      size: ButtonSize.large,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // OutlineButton
                    BorderButton(text: 'タイトル', onPressed: null),
                    BorderButton(text: 'タイトル', onPressed: () {}),
                    BorderButton(
                      text: 'タイトル',
                      onPressed: () {},
                      radius: 8,
                    ),
                    BorderButton(
                      text: 'タイトル',
                      onPressed: () {},
                      rounded: true,
                    ),
                    BorderButton(
                      icon: Icons.add_box,
                      text: 'タイトル',
                      onPressed: () {},
                      rounded: true,
                    ),
                    BorderButton(
                      icon: Icons.add_box,
                      text: 'タイトル',
                      onPressed: () {},
                      rounded: true,
                      textColor: Colors.deepPurple,
                    ),
                    BorderButton(
                      text: 'タイトル',
                      onPressed: () {},
                      rounded: true,
                      size: ButtonSize.small,
                    ),
                    BorderButton(
                      text: 'タイトル',
                      onPressed: () {},
                      rounded: true,
                      size: ButtonSize.large,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 500),
          ],
        ),
      ),
    );
  }
}
