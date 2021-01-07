import 'dart:math' as math;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:shopping_sample/constants/color.dart';
import 'package:shopping_sample/models/product/product_state.dart';
import 'package:shopping_sample/models/topping/topping_state.dart';
import 'package:shopping_sample/screens/error_screen.dart';
import 'package:shopping_sample/view_models/product_state_notifier.dart';
import 'package:shopping_sample/widgets/add_cart_bottom_sheet.dart';
import 'package:shopping_sample/widgets/app_indicator.dart';
import 'package:shopping_sample/widgets/checkbox_tile.dart';

class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen();

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments;

    print(arguments);

    if (arguments is String) {
      return MultiProvider(
        providers: [
          StateNotifierProvider<ProductStateNotifier, ProductState>(
            create: (context) => ProductStateNotifier(productId: arguments),
          ),
        ],
        child: _ItemDetailScreen(),
      );
    }

    return const ErrorScreen();
  }
}

class _ItemDetailScreen extends StatelessWidget {
  _ItemDetailScreen({
    Key key,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        top: false,
        child: Builder(builder: (context) {
          final isLoading =
              context.select<ProductState, bool>((state) => state.isLoading);

          if (isLoading) {
            return Center(
              child: AppIndicator(),
            );
          }

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 220,
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      placeholder: (context, url) => AppIndicator(),
                      imageUrl: context.select<ProductState, String>(
                          (state) => state.imagePath),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    ),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Text(
                              context.select<ProductState, String>(
                                  (state) => state.name),
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Text(
                            context.select<ProductState, String>(
                                (state) => state.description),
                            style: Theme.of(context).textTheme.caption,
                            maxLines: context.select<ProductState, bool>(
                                    (state) => state.isDescriptionOpen)
                                ? 20
                                : 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Center(
                              child: IconButton(
                            icon: Transform.rotate(
                              angle: context.select<ProductState, bool>(
                                      (state) => state.isDescriptionOpen)
                                  ? math.pi
                                  : 0,
                              child: const Icon(
                                Icons.expand_more,
                                color: Colors.grey,
                              ),
                            ),
                            onPressed: () => context
                                .read<ProductStateNotifier>()
                                .toggleDescription(),
                          )),
                          const Divider(),
                          Text(
                            context.select<ProductState, String>(
                                (state) => state.unitPrice),
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 32, 16, 8),
                    child: Text('オプション',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontWeight: FontWeight.bold,
                            )),
                  ),
                  Card(
                    margin: const EdgeInsets.all(0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    ),
                    // ignore: sized_box_for_whitespace
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        children: context
                            .select<ProductState, List<ToppingState>>(
                                (state) => state.toppings)
                            .map((topping) => CheckboxTile(
                                  title: topping.name,
                                  isSelected: topping.isSelected,
                                  onChanged: (bool value) {
                                    context
                                        .read<ProductStateNotifier>()
                                        .setToppingSelected(
                                            toppingId: topping.id,
                                            isSelected: value);
                                  },
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 32, 16, 8),
                    child: Text('個数',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontWeight: FontWeight.bold,
                            )),
                  ),
                  Card(
                    margin: const EdgeInsets.all(0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    ),
                    child: Container(
                      width: double.infinity,
                      // color: Colors.white,
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            color: AppColors.primaryColor,
                            icon: const Icon(
                              Icons.remove_circle_outline,
                              size: 32,
                            ),
                            onPressed: () => context
                                .read<ProductStateNotifier>()
                                .decrement(),
                          ),
                          SizedBox(
                            width: 96,
                            child: Center(
                              child: Text(
                                context
                                    .select<ProductState, int>(
                                        (state) => state.count)
                                    .toString(),
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                          ),
                          IconButton(
                            color: AppColors.primaryColor,
                            icon: const Icon(
                              Icons.add_circle_outline,
                              size: 32,
                            ),
                            onPressed: () => context
                                .read<ProductStateNotifier>()
                                .increment(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
      bottomSheet: Builder(builder: (context) {
        final isLoading =
            context.select<ProductState, bool>((state) => state.isLoading);

        return Visibility(
          visible: !isLoading,
          child: AddCartBottomSheet(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(_scaffoldKey.currentState.context)
                  .viewPadding
                  .bottom,
            ),
          ),
        );
      }),
    );
  }
}
