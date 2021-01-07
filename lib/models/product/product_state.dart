import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_sample/models/topping/topping_state.dart';
part 'product_state.freezed.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    String id,
    String name,
    String description,
    String imagePath,
    String unitPrice,
    int count,
    String totalPrice,
    @Default(<ToppingState>[]) List<ToppingState> toppings,
    @Default(false) bool isDescriptionOpen,
    @Default(false) bool isLoading,
  }) = _ProductState;
}
