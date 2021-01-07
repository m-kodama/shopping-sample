import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'topping_state.freezed.dart';

@freezed
abstract class ToppingState with _$ToppingState {
  const factory ToppingState({
    String id,
    String name,
    bool isSelected,
  }) = _ToppingState;
}
