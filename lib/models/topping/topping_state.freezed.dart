// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'topping_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ToppingStateTearOff {
  const _$ToppingStateTearOff();

// ignore: unused_element
  _ToppingState call({String id, String name, bool isSelected}) {
    return _ToppingState(
      id: id,
      name: name,
      isSelected: isSelected,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ToppingState = _$ToppingStateTearOff();

/// @nodoc
mixin _$ToppingState {
  String get id;
  String get name;
  bool get isSelected;

  $ToppingStateCopyWith<ToppingState> get copyWith;
}

/// @nodoc
abstract class $ToppingStateCopyWith<$Res> {
  factory $ToppingStateCopyWith(
          ToppingState value, $Res Function(ToppingState) then) =
      _$ToppingStateCopyWithImpl<$Res>;
  $Res call({String id, String name, bool isSelected});
}

/// @nodoc
class _$ToppingStateCopyWithImpl<$Res> implements $ToppingStateCopyWith<$Res> {
  _$ToppingStateCopyWithImpl(this._value, this._then);

  final ToppingState _value;
  // ignore: unused_field
  final $Res Function(ToppingState) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      isSelected:
          isSelected == freezed ? _value.isSelected : isSelected as bool,
    ));
  }
}

/// @nodoc
abstract class _$ToppingStateCopyWith<$Res>
    implements $ToppingStateCopyWith<$Res> {
  factory _$ToppingStateCopyWith(
          _ToppingState value, $Res Function(_ToppingState) then) =
      __$ToppingStateCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, bool isSelected});
}

/// @nodoc
class __$ToppingStateCopyWithImpl<$Res> extends _$ToppingStateCopyWithImpl<$Res>
    implements _$ToppingStateCopyWith<$Res> {
  __$ToppingStateCopyWithImpl(
      _ToppingState _value, $Res Function(_ToppingState) _then)
      : super(_value, (v) => _then(v as _ToppingState));

  @override
  _ToppingState get _value => super._value as _ToppingState;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object isSelected = freezed,
  }) {
    return _then(_ToppingState(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      isSelected:
          isSelected == freezed ? _value.isSelected : isSelected as bool,
    ));
  }
}

/// @nodoc
class _$_ToppingState with DiagnosticableTreeMixin implements _ToppingState {
  const _$_ToppingState({this.id, this.name, this.isSelected});

  @override
  final String id;
  @override
  final String name;
  @override
  final bool isSelected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ToppingState(id: $id, name: $name, isSelected: $isSelected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ToppingState'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('isSelected', isSelected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToppingState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isSelected, isSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isSelected, isSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isSelected);

  @override
  _$ToppingStateCopyWith<_ToppingState> get copyWith =>
      __$ToppingStateCopyWithImpl<_ToppingState>(this, _$identity);
}

abstract class _ToppingState implements ToppingState {
  const factory _ToppingState({String id, String name, bool isSelected}) =
      _$_ToppingState;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get isSelected;
  @override
  _$ToppingStateCopyWith<_ToppingState> get copyWith;
}
