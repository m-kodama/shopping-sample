import 'package:flutter/material.dart';
import 'package:shopping_sample/screens/cart_screen.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ショップ'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => CartScreen(),
                  fullscreenDialog: true,
                ),
              );
            },
          )
        ],
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
