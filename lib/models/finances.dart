import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finances.freezed.dart';
@freezed
class FinancesCardData with _$FinancesCardData {
  const factory FinancesCardData ({
    required Widget icon,
    required double price,
    required String comment,
  }) = _FinancesCardData;

  
}