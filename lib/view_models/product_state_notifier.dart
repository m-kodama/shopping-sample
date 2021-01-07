import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:shopping_sample/entities/product.dart';
import 'package:shopping_sample/entities/topping.dart';
import 'package:shopping_sample/models/product/product_state.dart';
import 'package:shopping_sample/models/topping/topping_state.dart';
import 'package:shopping_sample/repositories/product_repository.dart';
import 'package:state_notifier/state_notifier.dart';

class ProductStateNotifier extends StateNotifier<ProductState>
    with LocatorMixin {
  ProductStateNotifier({
    @required String productId,
  })  : _productId = productId,
        super(
          const ProductState(
            count: 1,
            isDescriptionOpen: false,
            isLoading: true,
          ),
        );

  final String _productId;
  Product _product;

  ProductRepository get repository => read<ProductRepository>();

  @override
  void initState() {
    super.initState();
    fetch(_productId);
  }

  Future<void> fetch(String productId) async {
    _product = await repository.find(productId);

    state = state.copyWith(
      id: _product.id,
      name: _product.name,
      description: _product.description,
      imagePath: _getImagePath(_product.imagePath),
      unitPrice: _getUnitPrice(_product.unitPrice),
      totalPrice: _getTotalPrice(_product.unitPrice, state.count),
      toppings: _getToppings(_product.toppings),
      isLoading: false,
    );
  }

  void increment() {
    if (state.count >= 99) {
      return;
    }
    final newCount = state.count + 1;
    state = state.copyWith(
      count: newCount,
      totalPrice: _getTotalPrice(_product.unitPrice, newCount),
    );
  }

  void decrement() {
    if (state.count <= 1) {
      return;
    }
    final newCount = state.count - 1;
    state = state.copyWith(
      count: newCount,
      totalPrice: _getTotalPrice(_product.unitPrice, newCount),
    );
  }

  void setToppingSelected({
    @required String toppingId,
    @required bool isSelected,
  }) {
    state = state.copyWith(
      toppings: state.toppings.map((toppingState) {
        return toppingId == toppingState.id
            ? toppingState.copyWith(
                isSelected: isSelected,
              )
            : toppingState;
      }).toList(),
    );
  }

  void toggleDescription() {
    state = state.copyWith(
      isDescriptionOpen: !state.isDescriptionOpen,
    );
  }

  String _getImagePath(String imagePath) {
    return '$imagePath/400';
  }

  String _getUnitPrice(int unitPrice) {
    return _formatYenPrice(unitPrice);
  }

  String _getTotalPrice(int unitPrice, int count) {
    return _formatYenPrice(unitPrice * count);
  }

  List<ToppingState> _getToppings(List<Topping> toppings) {
    return toppings
        .map((topping) => ToppingState(
              id: topping.id,
              name: topping.name,
              isSelected: false,
            ))
        .toList();
  }

  String _formatYenPrice(int price) {
    final formatter = NumberFormat('#,##0', 'ja_JP');
    return '￥${formatter.format(price)}';
  }
}
