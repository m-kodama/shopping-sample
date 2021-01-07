import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_sample/models/product/product_summary_state.dart';
part 'product_list_state.freezed.dart';

@freezed
abstract class ProductListState with _$ProductListState {
  const factory ProductListState({
    @Default(<ProductSummaryState>[]) List<ProductSummaryState> products,
    @Default(false) bool isLoading,
    String errorMessage,
  }) = _ProductListState;
}
