import 'package:shopping_sample/entities/product.dart';

abstract class ProductRepository {
  Future<List<Product>> findAll();

  Future<Product> find(String productId);
}
