// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pagination_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaginationStateTearOff {
  const _$PaginationStateTearOff();

  _PaginationState call(
      {List<Passenger>? itemList = null,
      dynamic error = null,
      int? nextPageKey = 0}) {
    return _PaginationState(
      itemList: itemList,
      error: error,
      nextPageKey: nextPageKey,
    );
  }
}

/// @nodoc
const $PaginationState = _$PaginationStateTearOff();

/// @nodoc
mixin _$PaginationState {
  List<Passenger>? get itemList => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  int? get nextPageKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationStateCopyWith<PaginationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationStateCopyWith<$Res> {
  factory $PaginationStateCopyWith(
          PaginationState value, $Res Function(PaginationState) then) =
      _$PaginationStateCopyWithImpl<$Res>;
  $Res call({List<Passenger>? itemList, dynamic error, int? nextPageKey});
}

/// @nodoc
class _$PaginationStateCopyWithImpl<$Res>
    implements $PaginationStateCopyWith<$Res> {
  _$PaginationStateCopyWithImpl(this._value, this._then);

  final PaginationState _value;
  // ignore: unused_field
  final $Res Function(PaginationState) _then;

  @override
  $Res call({
    Object? itemList = freezed,
    Object? error = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_value.copyWith(
      itemList: itemList == freezed
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Passenger>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nextPageKey: nextPageKey == freezed
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PaginationStateCopyWith<$Res>
    implements $PaginationStateCopyWith<$Res> {
  factory _$PaginationStateCopyWith(
          _PaginationState value, $Res Function(_PaginationState) then) =
      __$PaginationStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Passenger>? itemList, dynamic error, int? nextPageKey});
}

/// @nodoc
class __$PaginationStateCopyWithImpl<$Res>
    extends _$PaginationStateCopyWithImpl<$Res>
    implements _$PaginationStateCopyWith<$Res> {
  __$PaginationStateCopyWithImpl(
      _PaginationState _value, $Res Function(_PaginationState) _then)
      : super(_value, (v) => _then(v as _PaginationState));

  @override
  _PaginationState get _value => super._value as _PaginationState;

  @override
  $Res call({
    Object? itemList = freezed,
    Object? error = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_PaginationState(
      itemList: itemList == freezed
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Passenger>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nextPageKey: nextPageKey == freezed
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_PaginationState extends _PaginationState {
  const _$_PaginationState(
      {this.itemList = null, this.error = null, this.nextPageKey = 0})
      : super._();

  @JsonKey(defaultValue: null)
  @override
  final List<Passenger>? itemList;
  @JsonKey(defaultValue: null)
  @override
  final dynamic error;
  @JsonKey(defaultValue: 0)
  @override
  final int? nextPageKey;

  @override
  String toString() {
    return 'PaginationState(itemList: $itemList, error: $error, nextPageKey: $nextPageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaginationState &&
            (identical(other.itemList, itemList) ||
                const DeepCollectionEquality()
                    .equals(other.itemList, itemList)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.nextPageKey, nextPageKey) ||
                const DeepCollectionEquality()
                    .equals(other.nextPageKey, nextPageKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemList) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(nextPageKey);

  @JsonKey(ignore: true)
  @override
  _$PaginationStateCopyWith<_PaginationState> get copyWith =>
      __$PaginationStateCopyWithImpl<_PaginationState>(this, _$identity);
}

abstract class _PaginationState extends PaginationState {
  const factory _PaginationState(
      {List<Passenger>? itemList,
      dynamic error,
      int? nextPageKey}) = _$_PaginationState;
  const _PaginationState._() : super._();

  @override
  List<Passenger>? get itemList => throw _privateConstructorUsedError;
  @override
  dynamic get error => throw _privateConstructorUsedError;
  @override
  int? get nextPageKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaginationStateCopyWith<_PaginationState> get copyWith =>
      throw _privateConstructorUsedError;
}
