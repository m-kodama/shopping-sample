// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_summary_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductSummaryStateTearOff {
  const _$ProductSummaryStateTearOff();

// ignore: unused_element
  _ProductSummaryState call(
      {String id,
      String name,
      String imagePath,
      String unitPrice,
      bool isSale}) {
    return _ProductSummaryState(
      id: id,
      name: name,
      imagePath: imagePath,
      unitPrice: unitPrice,
      isSale: isSale,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductSummaryState = _$ProductSummaryStateTearOff();

/// @nodoc
mixin _$ProductSummaryState {
  String get id;
  String get name;
  String get imagePath;
  String get unitPrice;
  bool get isSale;

  $ProductSummaryStateCopyWith<ProductSummaryState> get copyWith;
}

/// @nodoc
abstract class $ProductSummaryStateCopyWith<$Res> {
  factory $ProductSummaryStateCopyWith(
          ProductSummaryState value, $Res Function(ProductSummaryState) then) =
      _$ProductSummaryStateCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String imagePath,
      String unitPrice,
      bool isSale});
}

/// @nodoc
class _$ProductSummaryStateCopyWithImpl<$Res>
    implements $ProductSummaryStateCopyWith<$Res> {
  _$ProductSummaryStateCopyWithImpl(this._value, this._then);

  final ProductSummaryState _value;
  // ignore: unused_field
  final $Res Function(ProductSummaryState) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object imagePath = freezed,
    Object unitPrice = freezed,
    Object isSale = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      unitPrice: unitPrice == freezed ? _value.unitPrice : unitPrice as String,
      isSale: isSale == freezed ? _value.isSale : isSale as bool,
    ));
  }
}

/// @nodoc
abstract class _$ProductSummaryStateCopyWith<$Res>
    implements $ProductSummaryStateCopyWith<$Res> {
  factory _$ProductSummaryStateCopyWith(_ProductSummaryState value,
          $Res Function(_ProductSummaryState) then) =
      __$ProductSummaryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String imagePath,
      String unitPrice,
      bool isSale});
}

/// @nodoc
class __$ProductSummaryStateCopyWithImpl<$Res>
    extends _$ProductSummaryStateCopyWithImpl<$Res>
    implements _$ProductSummaryStateCopyWith<$Res> {
  __$ProductSummaryStateCopyWithImpl(
      _ProductSummaryState _value, $Res Function(_ProductSummaryState) _then)
      : super(_value, (v) => _then(v as _ProductSummaryState));

  @override
  _ProductSummaryState get _value => super._value as _ProductSummaryState;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object imagePath = freezed,
    Object unitPrice = freezed,
    Object isSale = freezed,
  }) {
    return _then(_ProductSummaryState(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      unitPrice: unitPrice == freezed ? _value.unitPrice : unitPrice as String,
      isSale: isSale == freezed ? _value.isSale : isSale as bool,
    ));
  }
}

/// @nodoc
class _$_ProductSummaryState
    with DiagnosticableTreeMixin
    implements _ProductSummaryState {
  const _$_ProductSummaryState(
      {this.id, this.name, this.imagePath, this.unitPrice, this.isSale});

  @override
  final String id;
  @override
  final String name;
  @override
  final String imagePath;
  @override
  final String unitPrice;
  @override
  final bool isSale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductSummaryState(id: $id, name: $name, imagePath: $imagePath, unitPrice: $unitPrice, isSale: $isSale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductSummaryState'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('imagePath', imagePath))
      ..add(DiagnosticsProperty('unitPrice', unitPrice))
      ..add(DiagnosticsProperty('isSale', isSale));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductSummaryState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.unitPrice, unitPrice) ||
                const DeepCollectionEquality()
                    .equals(other.unitPrice, unitPrice)) &&
            (identical(other.isSale, isSale) ||
                const DeepCollectionEquality().equals(other.isSale, isSale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(unitPrice) ^
      const DeepCollectionEquality().hash(isSale);

  @override
  _$ProductSummaryStateCopyWith<_ProductSummaryState> get copyWith =>
      __$ProductSummaryStateCopyWithImpl<_ProductSummaryState>(
          this, _$identity);
}

abstract class _ProductSummaryState implements ProductSummaryState {
  const factory _ProductSummaryState(
      {String id,
      String name,
      String imagePath,
      String unitPrice,
      bool isSale}) = _$_ProductSummaryState;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imagePath;
  @override
  String get unitPrice;
  @override
  bool get isSale;
  @override
  _$ProductSummaryStateCopyWith<_ProductSummaryState> get copyWith;
}
