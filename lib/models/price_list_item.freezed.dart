// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PriceListItemData {
  int? get index => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceListItemDataCopyWith<PriceListItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceListItemDataCopyWith<$Res> {
  factory $PriceListItemDataCopyWith(
          PriceListItemData value, $Res Function(PriceListItemData) then) =
      _$PriceListItemDataCopyWithImpl<$Res, PriceListItemData>;
  @useResult
  $Res call({int? index, int? price});
}

/// @nodoc
class _$PriceListItemDataCopyWithImpl<$Res, $Val extends PriceListItemData>
    implements $PriceListItemDataCopyWith<$Res> {
  _$PriceListItemDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceListItemDataImplCopyWith<$Res>
    implements $PriceListItemDataCopyWith<$Res> {
  factory _$$PriceListItemDataImplCopyWith(_$PriceListItemDataImpl value,
          $Res Function(_$PriceListItemDataImpl) then) =
      __$$PriceListItemDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? index, int? price});
}

/// @nodoc
class __$$PriceListItemDataImplCopyWithImpl<$Res>
    extends _$PriceListItemDataCopyWithImpl<$Res, _$PriceListItemDataImpl>
    implements _$$PriceListItemDataImplCopyWith<$Res> {
  __$$PriceListItemDataImplCopyWithImpl(_$PriceListItemDataImpl _value,
      $Res Function(_$PriceListItemDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? price = freezed,
  }) {
    return _then(_$PriceListItemDataImpl(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$PriceListItemDataImpl implements _PriceListItemData {
  const _$PriceListItemDataImpl({this.index, this.price});

  @override
  final int? index;
  @override
  final int? price;

  @override
  String toString() {
    return 'PriceListItemData(index: $index, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceListItemDataImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceListItemDataImplCopyWith<_$PriceListItemDataImpl> get copyWith =>
      __$$PriceListItemDataImplCopyWithImpl<_$PriceListItemDataImpl>(
          this, _$identity);
}

abstract class _PriceListItemData implements PriceListItemData {
  const factory _PriceListItemData({final int? index, final int? price}) =
      _$PriceListItemDataImpl;

  @override
  int? get index;
  @override
  int? get price;
  @override
  @JsonKey(ignore: true)
  _$$PriceListItemDataImplCopyWith<_$PriceListItemDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
