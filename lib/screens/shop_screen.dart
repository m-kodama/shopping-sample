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
        child: ListView(
          children: [
            ListView.builder(
              padding: const EdgeInsets.only(bottom: 100),
              itemCount: 1 + 8,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return index == 0
                    ? Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                cursorColor: AppColors.primaryColor,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Colors.grey[200]
                                      : Colors.grey[700],
                                  hintText: '検索',
                                  border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.all(8),
                                  isDense: true,
                                ),
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                                keyboardType: TextInputType.streetAddress,
                                autofillHints: const [AutofillHints.email],
                              ),
                            ),
                            Container(
                              width: 4,
                            ),
                            SizedBox(
                              width: 32,
                              height: 32,
                              child: RaisedButton(
                                child: const Icon(
                                  Icons.search_outlined,
                                  color: Colors.white,
                                ),
                                elevation: 0,
                                padding: EdgeInsets.zero,
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: 16,
                        ),
                        child: ShopItemCard(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(RoutePath.itemDetail);
                          },
                        ),
                      );
              },
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
