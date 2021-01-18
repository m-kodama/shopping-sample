import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_sample/constants/route_path.dart';
import 'package:shopping_sample/repositories/product_repository_dummy.dart';
import 'package:shopping_sample/repositories/product_repository.dart';
import 'package:shopping_sample/screens/item_detail_screen.dart';
import 'package:shopping_sample/screens/sample_screen.dart';
import 'package:shopping_sample/screens/shop_screen.dart';
import 'package:shopping_sample/themes/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ProductRepository>(
          create: (_) => ProductRepositoryDummy(),
        ),
      ],
      child: const _MyApp(),
    );
  }
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping sample',
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      initialRoute: '/sample',
      routes: {
        RoutePath.shop: (BuildContext context) => const ShopScreen(),
        RoutePath.itemDetail: (BuildContext context) =>
            const ItemDetailScreen(),
        '/sample': (_) => SampleScreen(),
      },
    );
  }
}
