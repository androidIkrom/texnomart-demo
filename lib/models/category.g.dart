// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  slug: json['slug'] as String,
  title: json['title'] as String,
  imageUrl: json['image'] as String?,
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'slug': instance.slug,
  'title': instance.title,
  'image': instance.imageUrl,
};

_CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) =>
    _CategoryResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryResponseToJson(_CategoryResponse instance) =>
    <String, dynamic>{'data': instance.data};
