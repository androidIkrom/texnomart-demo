import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
abstract class Category with _$Category {
  const factory Category({
    required String slug,
    required String title,
    @JsonKey(name: 'image') String? imageUrl,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
abstract class CategoryResponse with _$CategoryResponse {
  const factory CategoryResponse({
    required List<Category> data,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) => _$CategoryResponseFromJson(json);
}

@freezed
abstract class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    required int code,
    required T data,
    required String message,
    required int status,
    required bool success,
  }) = _ApiResponse;

  // Manual generic fromJson is complex with freezed, 
  // so we'll handle the nested structure specifically in the service or via factory methods.
}
