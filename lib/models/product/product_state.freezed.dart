// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

// ignore: unused_element
  _ProductState call(
      {String id,
      String name,
      String description,
      String imagePath,
      String unitPrice,
      int count,
      String totalPrice,
      List<ToppingState> toppings = const [],
      bool isDescriptionOpen = false,
      bool isLoading = false}) {
    return _ProductState(
      id: id,
      name: name,
      description: description,
      imagePath: imagePath,
      unitPrice: unitPrice,
      count: count,
      totalPrice: totalPrice,
      toppings: toppings,
      isDescriptionOpen: isDescriptionOpen,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductState = _$ProductStateTearOff();

/// @nodoc
mixin _$ProductState {
  String get id;
  String get name;
  String get description;
  String get imagePath;
  String get unitPrice;
  int get count;
  String get totalPrice;
  List<ToppingState> get toppings;
  bool get isDescriptionOpen;
  bool get isLoading;

  $ProductStateCopyWith<ProductState> get copyWith;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String description,
      String imagePath,
      String unitPrice,
      int count,
      String totalPrice,
      List<ToppingState> toppings,
      bool isDescriptionOpen,
      bool isLoading});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object imagePath = freezed,
    Object unitPrice = freezed,
    Object count = freezed,
    Object totalPrice = freezed,
    Object toppings = freezed,
    Object isDescriptionOpen = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      unitPrice: unitPrice == freezed ? _value.unitPrice : unitPrice as String,
      count: count == freezed ? _value.count : count as int,
      totalPrice:
          totalPrice == freezed ? _value.totalPrice : totalPrice as String,
      toppings: toppings == freezed
          ? _value.toppings
          : toppings as List<ToppingState>,
      isDescriptionOpen: isDescriptionOpen == freezed
          ? _value.isDescriptionOpen
          : isDescriptionOpen as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(
          _ProductState value, $Res Function(_ProductState) then) =
      __$ProductStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String description,
      String imagePath,
      String unitPrice,
      int count,
      String totalPrice,
      List<ToppingState> toppings,
      bool isDescriptionOpen,
      bool isLoading});
}

/// @nodoc
class __$ProductStateCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(
      _ProductState _value, $Res Function(_ProductState) _then)
      : super(_value, (v) => _then(v as _ProductState));

  @override
  _ProductState get _value => super._value as _ProductState;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object imagePath = freezed,
    Object unitPrice = freezed,
    Object count = freezed,
    Object totalPrice = freezed,
    Object toppings = freezed,
    Object isDescriptionOpen = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_ProductState(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      unitPrice: unitPrice == freezed ? _value.unitPrice : unitPrice as String,
      count: count == freezed ? _value.count : count as int,
      totalPrice:
          totalPrice == freezed ? _value.totalPrice : totalPrice as String,
      toppings: toppings == freezed
          ? _value.toppings
          : toppings as List<ToppingState>,
      isDescriptionOpen: isDescriptionOpen == freezed
          ? _value.isDescriptionOpen
          : isDescriptionOpen as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_ProductState with DiagnosticableTreeMixin implements _ProductState {
  const _$_ProductState(
      {this.id,
      this.name,
      this.description,
      this.imagePath,
      this.unitPrice,
      this.count,
      this.totalPrice,
      this.toppings = const [],
      this.isDescriptionOpen = false,
      this.isLoading = false})
      : assert(toppings != null),
        assert(isDescriptionOpen != null),
        assert(isLoading != null);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imagePath;
  @override
  final String unitPrice;
  @override
  final int count;
  @override
  final String totalPrice;
  @JsonKey(defaultValue: const [])
  @override
  final List<ToppingState> toppings;
  @JsonKey(defaultValue: false)
  @override
  final bool isDescriptionOpen;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductState(id: $id, name: $name, description: $description, imagePath: $imagePath, unitPrice: $unitPrice, count: $count, totalPrice: $totalPrice, toppings: $toppings, isDescriptionOpen: $isDescriptionOpen, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductState'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('imagePath', imagePath))
      ..add(DiagnosticsProperty('unitPrice', unitPrice))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('totalPrice', totalPrice))
      ..add(DiagnosticsProperty('toppings', toppings))
      ..add(DiagnosticsProperty('isDescriptionOpen', isDescriptionOpen))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.unitPrice, unitPrice) ||
                const DeepCollectionEquality()
                    .equals(other.unitPrice, unitPrice)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.totalPrice, totalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)) &&
            (identical(other.toppings, toppings) ||
                const DeepCollectionEquality()
                    .equals(other.toppings, toppings)) &&
            (identical(other.isDescriptionOpen, isDescriptionOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isDescriptionOpen, isDescriptionOpen)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(unitPrice) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(toppings) ^
      const DeepCollectionEquality().hash(isDescriptionOpen) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {String id,
      String name,
      String description,
      String imagePath,
      String unitPrice,
      int count,
      String totalPrice,
      List<ToppingState> toppings,
      bool isDescriptionOpen,
      bool isLoading}) = _$_ProductState;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imagePath;
  @override
  String get unitPrice;
  @override
  int get count;
  @override
  String get totalPrice;
  @override
  List<ToppingState> get toppings;
  @override
  bool get isDescriptionOpen;
  @override
  bool get isLoading;
  @override
  _$ProductStateCopyWith<_ProductState> get copyWith;
}
