// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finances.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinancesCardData {
  Widget get icon => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FinancesCardDataCopyWith<FinancesCardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancesCardDataCopyWith<$Res> {
  factory $FinancesCardDataCopyWith(
          FinancesCardData value, $Res Function(FinancesCardData) then) =
      _$FinancesCardDataCopyWithImpl<$Res, FinancesCardData>;
  @useResult
  $Res call({Widget icon, double price, String comment});
}

/// @nodoc
class _$FinancesCardDataCopyWithImpl<$Res, $Val extends FinancesCardData>
    implements $FinancesCardDataCopyWith<$Res> {
  _$FinancesCardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? price = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinancesCardDataImplCopyWith<$Res>
    implements $FinancesCardDataCopyWith<$Res> {
  factory _$$FinancesCardDataImplCopyWith(_$FinancesCardDataImpl value,
          $Res Function(_$FinancesCardDataImpl) then) =
      __$$FinancesCardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Widget icon, double price, String comment});
}

/// @nodoc
class __$$FinancesCardDataImplCopyWithImpl<$Res>
    extends _$FinancesCardDataCopyWithImpl<$Res, _$FinancesCardDataImpl>
    implements _$$FinancesCardDataImplCopyWith<$Res> {
  __$$FinancesCardDataImplCopyWithImpl(_$FinancesCardDataImpl _value,
      $Res Function(_$FinancesCardDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? price = null,
    Object? comment = null,
  }) {
    return _then(_$FinancesCardDataImpl(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FinancesCardDataImpl implements _FinancesCardData {
  const _$FinancesCardDataImpl(
      {required this.icon, required this.price, required this.comment});

  @override
  final Widget icon;
  @override
  final double price;
  @override
  final String comment;

  @override
  String toString() {
    return 'FinancesCardData(icon: $icon, price: $price, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinancesCardDataImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, icon, price, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinancesCardDataImplCopyWith<_$FinancesCardDataImpl> get copyWith =>
      __$$FinancesCardDataImplCopyWithImpl<_$FinancesCardDataImpl>(
          this, _$identity);
}

abstract class _FinancesCardData implements FinancesCardData {
  const factory _FinancesCardData(
      {required final Widget icon,
      required final double price,
      required final String comment}) = _$FinancesCardDataImpl;

  @override
  Widget get icon;
  @override
  double get price;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$FinancesCardDataImplCopyWith<_$FinancesCardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
