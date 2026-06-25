// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  image: json['image'] as String,
  salePrice: (json['sale_price'] as num).toDouble(),
  oldPrice: (json['old_price'] as num?)?.toDouble(),
  reviewsAverage: (json['reviews_average'] as num?)?.toDouble(),
  reviewsCount: (json['reviews_count'] as num).toInt(),
  axiomMonthlyPrice: json['axiom_monthly_price'] as String?,
  stickers:
      (json['stickers'] as List<dynamic>?)
          ?.map((e) => Sticker.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image': instance.image,
  'sale_price': instance.salePrice,
  'old_price': instance.oldPrice,
  'reviews_average': instance.reviewsAverage,
  'reviews_count': instance.reviewsCount,
  'axiom_monthly_price': instance.axiomMonthlyPrice,
  'stickers': instance.stickers,
};

_Sticker _$StickerFromJson(Map<String, dynamic> json) => _Sticker(
  name: json['name'] as String,
  backgroundColor: json['background_color'] as String?,
  textColor: json['text_color'] as String?,
  isImage: json['isImage'] as bool?,
  image: json['image'] as String?,
);

Map<String, dynamic> _$StickerToJson(_Sticker instance) => <String, dynamic>{
  'name': instance.name,
  'background_color': instance.backgroundColor,
  'text_color': instance.textColor,
  'isImage': instance.isImage,
  'image': instance.image,
};

_ProductCollection _$ProductCollectionFromJson(Map<String, dynamic> json) =>
    _ProductCollection(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductCollectionToJson(_ProductCollection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'products': instance.products,
    };
