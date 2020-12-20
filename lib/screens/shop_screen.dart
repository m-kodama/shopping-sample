import 'package:flutter/material.dart';
import 'package:shopping_sample/constants/color.dart';
import 'package:shopping_sample/constants/route_path.dart';
import 'package:shopping_sample/screens/cart_screen.dart';
import 'package:shopping_sample/widgets/app_logo.dart';
import 'package:shopping_sample/widgets/confirm_cart_bottom_sheet.dart';
import 'package:shopping_sample/widgets/shop_item_card.dart';

class ShopScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: AppLogo(),
        centerTitle: true,
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
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 8, 8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      cursorColor: AppColors.primaryColor,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor:
                            Theme.of(context).brightness == Brightness.light
                                ? Colors.grey[200]
                                : Colors.grey[700],
                        hintText: '検索',
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.streetAddress,
                      autofillHints: const [AutofillHints.email],
                    ),
                  ),
                  Container(
                    width: 4,
                  ),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: RaisedButton(
                      child: const Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                      ),
                      elevation: 0,
                      padding: EdgeInsets.zero,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
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
          ],
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
