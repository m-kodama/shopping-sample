import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:shopping_sample/constants/color.dart';
import 'package:shopping_sample/constants/route_path.dart';
import 'package:shopping_sample/models/product/product_list_state.dart';
import 'package:shopping_sample/models/product/product_summary_state.dart';
import 'package:shopping_sample/screens/cart_screen.dart';
import 'package:shopping_sample/view_models/product_list_state_notifier.dart';
import 'package:shopping_sample/widgets/app_indicator.dart';
import 'package:shopping_sample/widgets/app_logo.dart';
import 'package:shopping_sample/widgets/confirm_cart_bottom_sheet.dart';
import 'package:shopping_sample/widgets/shop_item_card.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<ProductListStateNotifier, ProductListState>(
          create: (context) => ProductListStateNotifier(),
        ),
      ],
      child: _ShopScreen(),
    );
  }
}

class _ShopScreen extends StatelessWidget {
  _ShopScreen({
    Key key,
  }) : super(key: key);

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
        child: Builder(
          builder: (context) {
            final products =
                context.select<ProductListState, List<ProductSummaryState>>(
                    (state) => state.products);
            final isLoading = context
                .select<ProductListState, bool>((state) => state.isLoading);

            if (isLoading) {
              return Center(
                child: AppIndicator(),
              );
            }

            return ListView.builder(
              padding: const EdgeInsets.only(bottom: 100),
              itemCount: 1 + products.length,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            key: ValueKey(index),
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
                  );
                }

                final productIndex = index - 1;
                final product = products[productIndex];
                return Padding(
                  key: ValueKey(product.id),
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: 16,
                  ),
                  child: ShopItemCard(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        RoutePath.itemDetail,
                        arguments: product.id,
                      );
                    },
                    product: product,
                  ),
                );
              },
            );
          },
        ),
      ),
      bottomSheet: Builder(
        builder: (context) {
          return ConfirmCartBottomSheet(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(_scaffoldKey.currentState.context)
                  .viewPadding
                  .bottom,
            ),
          );
        },
      ),
    );
  }
}
