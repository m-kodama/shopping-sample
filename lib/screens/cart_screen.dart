import 'package:flutter/material.dart';
import 'package:shopping_sample/widgets/cart_item_card.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('カート'),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              CartItemCard(),
            ],
          ),
        ),
      ),
    );
  }
}
