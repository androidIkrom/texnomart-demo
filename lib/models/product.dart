import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required int id,
    required String name,
    required String image,
    @JsonKey(name: 'sale_price') required double salePrice,
    @JsonKey(name: 'old_price') double? oldPrice,
    @JsonKey(name: 'reviews_average') double? reviewsAverage,
    @JsonKey(name: 'reviews_count') required int reviewsCount,
    @JsonKey(name: 'axiom_monthly_price') String? axiomMonthlyPrice,
    @Default([]) List<Sticker> stickers,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
abstract class Sticker with _$Sticker {
  const factory Sticker({
    required String name,
    @JsonKey(name: 'background_color') String? backgroundColor,
    @JsonKey(name: 'text_color') String? textColor,
    bool? isImage,
    String? image,
  }) = _Sticker;

  factory Sticker.fromJson(Map<String, dynamic> json) => _$StickerFromJson(json);
}

@freezed
abstract class ProductCollection with _$ProductCollection {
  const factory ProductCollection({
    required int id,
    required String name,
    required String slug,
    required List<Product> products,
  }) = _ProductCollection;

  factory ProductCollection.fromJson(Map<String, dynamic> json) => _$ProductCollectionFromJson(json);
}
