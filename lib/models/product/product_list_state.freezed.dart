// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductListStateTearOff {
  const _$ProductListStateTearOff();

// ignore: unused_element
  _ProductListState call(
      {List<ProductSummaryState> products = const [],
      bool isLoading = false,
      String errorMessage}) {
    return _ProductListState(
      products: products,
      isLoading: isLoading,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductListState = _$ProductListStateTearOff();

/// @nodoc
mixin _$ProductListState {
  List<ProductSummaryState> get products;
  bool get isLoading;
  String get errorMessage;

  $ProductListStateCopyWith<ProductListState> get copyWith;
}

/// @nodoc
abstract class $ProductListStateCopyWith<$Res> {
  factory $ProductListStateCopyWith(
          ProductListState value, $Res Function(ProductListState) then) =
      _$ProductListStateCopyWithImpl<$Res>;
  $Res call(
      {List<ProductSummaryState> products,
      bool isLoading,
      String errorMessage});
}

/// @nodoc
class _$ProductListStateCopyWithImpl<$Res>
    implements $ProductListStateCopyWith<$Res> {
  _$ProductListStateCopyWithImpl(this._value, this._then);

  final ProductListState _value;
  // ignore: unused_field
  final $Res Function(ProductListState) _then;

  @override
  $Res call({
    Object products = freezed,
    Object isLoading = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products as List<ProductSummaryState>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductListStateCopyWith<$Res>
    implements $ProductListStateCopyWith<$Res> {
  factory _$ProductListStateCopyWith(
          _ProductListState value, $Res Function(_ProductListState) then) =
      __$ProductListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ProductSummaryState> products,
      bool isLoading,
      String errorMessage});
}

/// @nodoc
class __$ProductListStateCopyWithImpl<$Res>
    extends _$ProductListStateCopyWithImpl<$Res>
    implements _$ProductListStateCopyWith<$Res> {
  __$ProductListStateCopyWithImpl(
      _ProductListState _value, $Res Function(_ProductListState) _then)
      : super(_value, (v) => _then(v as _ProductListState));

  @override
  _ProductListState get _value => super._value as _ProductListState;

  @override
  $Res call({
    Object products = freezed,
    Object isLoading = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_ProductListState(
      products: products == freezed
          ? _value.products
          : products as List<ProductSummaryState>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_ProductListState
    with DiagnosticableTreeMixin
    implements _ProductListState {
  const _$_ProductListState(
      {this.products = const [], this.isLoading = false, this.errorMessage})
      : assert(products != null),
        assert(isLoading != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<ProductSummaryState> products;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductListState(products: $products, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductListState'))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductListState &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(products) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(errorMessage);

  @override
  _$ProductListStateCopyWith<_ProductListState> get copyWith =>
      __$ProductListStateCopyWithImpl<_ProductListState>(this, _$identity);
}

abstract class _ProductListState implements ProductListState {
  const factory _ProductListState(
      {List<ProductSummaryState> products,
      bool isLoading,
      String errorMessage}) = _$_ProductListState;

  @override
  List<ProductSummaryState> get products;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  _$ProductListStateCopyWith<_ProductListState> get copyWith;
}
