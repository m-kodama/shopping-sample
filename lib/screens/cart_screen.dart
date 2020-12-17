import 'package:flutter/material.dart';
import 'package:shopping_sample/widgets/billing_detail.dart';
import 'package:shopping_sample/widgets/cart_item_card.dart';
import 'package:shopping_sample/widgets/primary_button.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('カート'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 3 + 1,
          itemBuilder: (BuildContext context, int index) {
            return (index <= 2)
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: CartItemCard(),
                  )
                : Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        BillingDetail(),
                        Container(
                          margin: const EdgeInsets.only(top: 32),
                          child: PrimaryButton(
                            text: 'お支払いへ',
                            onPressed: () {},
                            icon: Icons.payment_outlined,
                            size: ButtonSize.large,
                            width: double.infinity,
                          ),
                        ),
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }
}
