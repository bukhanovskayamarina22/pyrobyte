import 'package:freezed_annotation/freezed_annotation.dart';
part 'price_list_item.freezed.dart';

@freezed 
class PriceListItemData with _$PriceListItemData {
  const factory PriceListItemData ({
    int? index,
    int? price,
  }) = _PriceListItemData;
}