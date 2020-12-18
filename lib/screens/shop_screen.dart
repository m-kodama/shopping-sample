import 'package:flutter/material.dart';
import 'package:shopping_sample/constants/route_path.dart';
import 'package:shopping_sample/screens/cart_screen.dart';
import 'package:shopping_sample/widgets/confirm_cart_bottom_sheet.dart';
import 'package:shopping_sample/widgets/shop_item_card.dart';

class ShopScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
        child: ListView.separated(
          padding: const EdgeInsets.only(bottom: 100),
          itemCount: 8,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(RoutePath.itemDetail);
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: ShopItemCard(),
              ),
            );
          },
        ),
      ),
      bottomSheet: Builder(builder: (context) {
        return ConfirmCartBottomSheet(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(_scaffoldKey.currentState.context)
                .viewPadding
                .bottom,
          ),
        );
      }),
    );
  }
}
