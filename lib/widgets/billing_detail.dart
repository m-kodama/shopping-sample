import 'package:flutter/material.dart';

class BillingDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            '料金',
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '小計',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.grey,
                  ),
            ),
            Text(
              '￥7,910',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '送料',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.grey,
                  ),
            ),
            Text(
              '+￥410',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'クーポン 10%OFF',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.grey,
                  ),
            ),
            Text(
              '-￥7,91',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '合計',
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                '￥8,410',
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
