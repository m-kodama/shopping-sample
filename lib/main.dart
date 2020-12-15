import 'package:flutter/material.dart';
import 'package:shopping_sample/constants/route_path.dart';
import 'package:shopping_sample/screens/cart_screen.dart';
import 'package:shopping_sample/screens/shop_screen.dart';
import 'package:shopping_sample/themes/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping sample',
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      initialRoute: RoutePath.shop,
      routes: {
        RoutePath.shop: (BuildContext context) => ShopScreen(),
        RoutePath.cart: (BuildContext context) => CartScreen(),
      },
    );
  }
}
