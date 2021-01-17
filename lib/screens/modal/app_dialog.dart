import 'package:flutter/material.dart';
import 'package:shopping_sample/constants/color.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    this.title,
    this.subject,
    this.text,
    @required this.buttons,
  }) : assert(subject != null || text != null);

  final String title;
  final String subject;
  final String text;
  final List<Widget> buttons;

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
              Visibility(
                visible: title != null && title.isNotEmpty,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          color: AppColors.primaryColor,
                        ),
                  ),
                ),
              ),
              Visibility(
                visible: subject != null && subject.isNotEmpty,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    subject,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Visibility(
                visible: text != null && text.isNotEmpty,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Column(
                  children: buttons,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
