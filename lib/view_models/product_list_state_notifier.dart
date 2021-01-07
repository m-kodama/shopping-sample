import 'package:intl/intl.dart';
import 'package:shopping_sample/entities/product.dart';
import 'package:shopping_sample/models/product/product_list_state.dart';
import 'package:shopping_sample/models/product/product_summary_state.dart';
import 'package:shopping_sample/repositories/product_repository.dart';
import 'package:state_notifier/state_notifier.dart';

class ProductListStateNotifier extends StateNotifier<ProductListState>
    with LocatorMixin {
  ProductListStateNotifier() : super(const ProductListState());

  List<Product> _products;

  ProductRepository get repository => read<ProductRepository>();

  @override
  void initState() {
    super.initState();
    fetch();
  }

  Future<void> fetch() async {
    state = state.copyWith(
      isLoading: true,
    );

    _products = await repository.findAll();

    state = ProductListState(
      products: _products
          .map((product) => ProductSummaryState(
                id: product.id,
                name: product.name,
                imagePath: _getImagePath(product.imagePath),
                unitPrice: _getUnitPrice(product.unitPrice),
                isSale: false,
              ))
          .toList(),
      isLoading: false,
    );
  }

  String _getImagePath(String imagePath) {
    return '$imagePath/100';
  }

  String _getUnitPrice(int unitPrice) {
    return _formatYenPrice(unitPrice);
  }

  String _formatYenPrice(int price) {
    final formatter = NumberFormat('#,##0', 'ja_JP');
    return '￥${formatter.format(price)}';
  }
}
