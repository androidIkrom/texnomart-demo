import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner.freezed.dart';
part 'banner.g.dart';

@freezed
abstract class BannerItem with _$BannerItem {
  const factory BannerItem({
    required String image,
    required String link,
  }) = _BannerItem;

  factory BannerItem.fromJson(Map<String, dynamic> json) => _$BannerItemFromJson(json);
}
