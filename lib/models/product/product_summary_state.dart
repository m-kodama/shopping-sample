import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_summary_state.freezed.dart';

@freezed
abstract class ProductSummaryState with _$ProductSummaryState {
  const factory ProductSummaryState({
    String id,
    String name,
    String imagePath,
    String unitPrice,
    bool isSale,
  }) = _ProductSummaryState;
}
