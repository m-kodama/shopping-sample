import 'package:shopping_sample/entities/topping.dart';
import 'package:shopping_sample/entities/product.dart';
import 'package:shopping_sample/repositories/product_repository.dart';

class ProductRepositoryDummy implements ProductRepository {
  final List<Product> _products = [
    Product(
      id: 'PRD00000001',
      name: '【30%割引・ミラノピザ】ミミまでペパロニミックス',
      description: 'Lサイズ　通常価格：2700円→特別価格：1890円トマトソースペパロニ・'
          'ピーマン・オニオン・ガーリック ※Lサイズ...約30cm、2〜3人分、8カット '
          '※ハーフ&ハーフ不可',
      imagePath: 'https://picsum.photos/seed/PRD00000001',
      unitPrice: 1890,
      toppings: [
        Topping(
          id: 'TPP00000001',
          name: '大盛り',
        ),
        Topping(
          id: 'TPP00000002',
          name: '10等分',
        ),
        Topping(
          id: 'TPP00000003',
          name: 'パンピザ',
        ),
      ],
    ),
    Product(
      id: 'PRD00000002',
      name: '【30%割引・ミラノピザ】ペパロニのマルゲリータ',
      description: 'Lサイズ　通常価格：2700円→特別価格：1890円トマトソースペパロニ・'
          'ピーマン・オニオン・ガーリック ※Lサイズ...約30cm、2〜3人分、8カット '
          '※ハーフ&ハーフ不可',
      imagePath: 'https://picsum.photos/seed/PRD00000002',
      unitPrice: 1890,
      toppings: [
        Topping(
          id: 'TPP00000001',
          name: '大盛り',
        ),
        Topping(
          id: 'TPP00000002',
          name: '10等分',
        ),
        Topping(
          id: 'TPP00000003',
          name: 'パンピザ',
        ),
      ],
    ),
    Product(
      id: 'PRD00000003',
      name: '【30%割引・ミラノピザ】ミラノスペシャル',
      description: 'Lサイズ　通常価格：2700円→特別価格：1890円トマトソースペパロニ・'
          'ピーマン・オニオン・ガーリック ※Lサイズ...約30cm、2〜3人分、8カット '
          '※ハーフ&ハーフ不可',
      imagePath: 'https://picsum.photos/seed/PRD00000003',
      unitPrice: 1890,
      toppings: [
        Topping(
          id: 'TPP00000001',
          name: '大盛り',
        ),
        Topping(
          id: 'TPP00000002',
          name: '10等分',
        ),
        Topping(
          id: 'TPP00000003',
          name: 'パンピザ',
        ),
      ],
    ),
    Product(
      id: 'PRD00000004',
      name: '【30%割引・ミラノピザ】手造りベーコンと彩り野菜',
      description: 'Lサイズ　通常価格：2700円→特別価格：1890円トマトソースペパロニ・'
          'ピーマン・オニオン・ガーリック ※Lサイズ...約30cm、2〜3人分、8カット '
          '※ハーフ&ハーフ不可',
      imagePath: 'https://picsum.photos/seed/PRD00000004',
      unitPrice: 1890,
      toppings: [
        Topping(
          id: 'TPP00000001',
          name: '大盛り',
        ),
        Topping(
          id: 'TPP00000002',
          name: '10等分',
        ),
        Topping(
          id: 'TPP00000003',
          name: 'パンピザ',
        ),
      ],
    ),
    Product(
      id: 'PRD00000005',
      name: '【30%割引・ミラノピザ】ツナマヨバジル',
      description: 'Lサイズ　通常価格：2700円→特別価格：1890円トマトソースペパロニ・'
          'ピーマン・オニオン・ガーリック ※Lサイズ...約30cm、2〜3人分、8カット '
          '※ハーフ&ハーフ不可',
      imagePath: 'https://picsum.photos/seed/PRD00000005',
      unitPrice: 1890,
      toppings: [
        Topping(
          id: 'TPP00000001',
          name: '大盛り',
        ),
        Topping(
          id: 'TPP00000002',
          name: '10等分',
        ),
        Topping(
          id: 'TPP00000003',
          name: 'パンピザ',
        ),
      ],
    ),
    Product(
      id: 'PRD00000006',
      name: '【ナポリ生地】紅ずわい蟹と海老の冬フォンデュ',
      description: 'チーズソース紅ずわい蟹・海老・パプリカ・ナス・ズッキーニ・ブラックペッパ-',
      imagePath: 'https://picsum.photos/seed/PRD00000006',
      unitPrice: 3078,
      toppings: [
        Topping(
          id: 'TPP00000003',
          name: 'パンピザ',
        ),
      ],
    ),
    Product(
      id: 'PRD00000007',
      name: '【ナポリ生地】牛カルビとカマンベールチーズ',
      description: '照り焼きソース牛カルビ・パプリカ・ナス・ズッキーニ・カマンベールチーズ・ガーリック',
      imagePath: 'https://picsum.photos/seed/PRD00000007',
      unitPrice: 3218,
      toppings: [
        Topping(
          id: 'TPP00000003',
          name: 'パンピザ',
        ),
      ],
    ),
    Product(
      id: 'PRD00000008',
      name: 'オランジーナ',
      description: '340mL缶',
      imagePath: 'https://picsum.photos/seed/PRD00000008',
      unitPrice: 140,
      toppings: [],
    ),
  ];

  @override
  Future<List<Product>> findAll() async {
    return Future<void>.delayed(const Duration(seconds: 1))
        .then((_) => _products);
  }

  @override
  Future<Product> find(String productId) async {
    return Future<void>.delayed(const Duration(seconds: 1)).then(
        (_) => _products.firstWhere((product) => product.id == productId));
  }
}
