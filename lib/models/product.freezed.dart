// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product {

 int get id; String get name; String get image;@JsonKey(name: 'sale_price') double get salePrice;@JsonKey(name: 'old_price') double? get oldPrice;@JsonKey(name: 'reviews_average') double? get reviewsAverage;@JsonKey(name: 'reviews_count') int get reviewsCount;@JsonKey(name: 'axiom_monthly_price') String? get axiomMonthlyPrice; List<Sticker> get stickers;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.salePrice, salePrice) || other.salePrice == salePrice)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.reviewsAverage, reviewsAverage) || other.reviewsAverage == reviewsAverage)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&(identical(other.axiomMonthlyPrice, axiomMonthlyPrice) || other.axiomMonthlyPrice == axiomMonthlyPrice)&&const DeepCollectionEquality().equals(other.stickers, stickers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,salePrice,oldPrice,reviewsAverage,reviewsCount,axiomMonthlyPrice,const DeepCollectionEquality().hash(stickers));

@override
String toString() {
  return 'Product(id: $id, name: $name, image: $image, salePrice: $salePrice, oldPrice: $oldPrice, reviewsAverage: $reviewsAverage, reviewsCount: $reviewsCount, axiomMonthlyPrice: $axiomMonthlyPrice, stickers: $stickers)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 int id, String name, String image,@JsonKey(name: 'sale_price') double salePrice,@JsonKey(name: 'old_price') double? oldPrice,@JsonKey(name: 'reviews_average') double? reviewsAverage,@JsonKey(name: 'reviews_count') int reviewsCount,@JsonKey(name: 'axiom_monthly_price') String? axiomMonthlyPrice, List<Sticker> stickers
});




}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,Object? salePrice = null,Object? oldPrice = freezed,Object? reviewsAverage = freezed,Object? reviewsCount = null,Object? axiomMonthlyPrice = freezed,Object? stickers = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,salePrice: null == salePrice ? _self.salePrice : salePrice // ignore: cast_nullable_to_non_nullable
as double,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as double?,reviewsAverage: freezed == reviewsAverage ? _self.reviewsAverage : reviewsAverage // ignore: cast_nullable_to_non_nullable
as double?,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,axiomMonthlyPrice: freezed == axiomMonthlyPrice ? _self.axiomMonthlyPrice : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
as String?,stickers: null == stickers ? _self.stickers : stickers // ignore: cast_nullable_to_non_nullable
as List<Sticker>,
  ));
}

}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String image, @JsonKey(name: 'sale_price')  double salePrice, @JsonKey(name: 'old_price')  double? oldPrice, @JsonKey(name: 'reviews_average')  double? reviewsAverage, @JsonKey(name: 'reviews_count')  int reviewsCount, @JsonKey(name: 'axiom_monthly_price')  String? axiomMonthlyPrice,  List<Sticker> stickers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.salePrice,_that.oldPrice,_that.reviewsAverage,_that.reviewsCount,_that.axiomMonthlyPrice,_that.stickers);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String image, @JsonKey(name: 'sale_price')  double salePrice, @JsonKey(name: 'old_price')  double? oldPrice, @JsonKey(name: 'reviews_average')  double? reviewsAverage, @JsonKey(name: 'reviews_count')  int reviewsCount, @JsonKey(name: 'axiom_monthly_price')  String? axiomMonthlyPrice,  List<Sticker> stickers)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.name,_that.image,_that.salePrice,_that.oldPrice,_that.reviewsAverage,_that.reviewsCount,_that.axiomMonthlyPrice,_that.stickers);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String image, @JsonKey(name: 'sale_price')  double salePrice, @JsonKey(name: 'old_price')  double? oldPrice, @JsonKey(name: 'reviews_average')  double? reviewsAverage, @JsonKey(name: 'reviews_count')  int reviewsCount, @JsonKey(name: 'axiom_monthly_price')  String? axiomMonthlyPrice,  List<Sticker> stickers)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.salePrice,_that.oldPrice,_that.reviewsAverage,_that.reviewsCount,_that.axiomMonthlyPrice,_that.stickers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product implements Product {
  const _Product({required this.id, required this.name, required this.image, @JsonKey(name: 'sale_price') required this.salePrice, @JsonKey(name: 'old_price') this.oldPrice, @JsonKey(name: 'reviews_average') this.reviewsAverage, @JsonKey(name: 'reviews_count') required this.reviewsCount, @JsonKey(name: 'axiom_monthly_price') this.axiomMonthlyPrice, final  List<Sticker> stickers = const []}): _stickers = stickers;
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  int id;
@override final  String name;
@override final  String image;
@override@JsonKey(name: 'sale_price') final  double salePrice;
@override@JsonKey(name: 'old_price') final  double? oldPrice;
@override@JsonKey(name: 'reviews_average') final  double? reviewsAverage;
@override@JsonKey(name: 'reviews_count') final  int reviewsCount;
@override@JsonKey(name: 'axiom_monthly_price') final  String? axiomMonthlyPrice;
 final  List<Sticker> _stickers;
@override@JsonKey() List<Sticker> get stickers {
  if (_stickers is EqualUnmodifiableListView) return _stickers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stickers);
}


/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.salePrice, salePrice) || other.salePrice == salePrice)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.reviewsAverage, reviewsAverage) || other.reviewsAverage == reviewsAverage)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&(identical(other.axiomMonthlyPrice, axiomMonthlyPrice) || other.axiomMonthlyPrice == axiomMonthlyPrice)&&const DeepCollectionEquality().equals(other._stickers, _stickers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,salePrice,oldPrice,reviewsAverage,reviewsCount,axiomMonthlyPrice,const DeepCollectionEquality().hash(_stickers));

@override
String toString() {
  return 'Product(id: $id, name: $name, image: $image, salePrice: $salePrice, oldPrice: $oldPrice, reviewsAverage: $reviewsAverage, reviewsCount: $reviewsCount, axiomMonthlyPrice: $axiomMonthlyPrice, stickers: $stickers)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String image,@JsonKey(name: 'sale_price') double salePrice,@JsonKey(name: 'old_price') double? oldPrice,@JsonKey(name: 'reviews_average') double? reviewsAverage,@JsonKey(name: 'reviews_count') int reviewsCount,@JsonKey(name: 'axiom_monthly_price') String? axiomMonthlyPrice, List<Sticker> stickers
});




}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,Object? salePrice = null,Object? oldPrice = freezed,Object? reviewsAverage = freezed,Object? reviewsCount = null,Object? axiomMonthlyPrice = freezed,Object? stickers = null,}) {
  return _then(_Product(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,salePrice: null == salePrice ? _self.salePrice : salePrice // ignore: cast_nullable_to_non_nullable
as double,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as double?,reviewsAverage: freezed == reviewsAverage ? _self.reviewsAverage : reviewsAverage // ignore: cast_nullable_to_non_nullable
as double?,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,axiomMonthlyPrice: freezed == axiomMonthlyPrice ? _self.axiomMonthlyPrice : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
as String?,stickers: null == stickers ? _self._stickers : stickers // ignore: cast_nullable_to_non_nullable
as List<Sticker>,
  ));
}


}


/// @nodoc
mixin _$Sticker {

 String get name;@JsonKey(name: 'background_color') String? get backgroundColor;@JsonKey(name: 'text_color') String? get textColor; bool? get isImage; String? get image;
/// Create a copy of Sticker
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StickerCopyWith<Sticker> get copyWith => _$StickerCopyWithImpl<Sticker>(this as Sticker, _$identity);

  /// Serializes this Sticker to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sticker&&(identical(other.name, name) || other.name == name)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.textColor, textColor) || other.textColor == textColor)&&(identical(other.isImage, isImage) || other.isImage == isImage)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,backgroundColor,textColor,isImage,image);

@override
String toString() {
  return 'Sticker(name: $name, backgroundColor: $backgroundColor, textColor: $textColor, isImage: $isImage, image: $image)';
}


}

/// @nodoc
abstract mixin class $StickerCopyWith<$Res>  {
  factory $StickerCopyWith(Sticker value, $Res Function(Sticker) _then) = _$StickerCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: 'background_color') String? backgroundColor,@JsonKey(name: 'text_color') String? textColor, bool? isImage, String? image
});




}
/// @nodoc
class _$StickerCopyWithImpl<$Res>
    implements $StickerCopyWith<$Res> {
  _$StickerCopyWithImpl(this._self, this._then);

  final Sticker _self;
  final $Res Function(Sticker) _then;

/// Create a copy of Sticker
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? backgroundColor = freezed,Object? textColor = freezed,Object? isImage = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,backgroundColor: freezed == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String?,textColor: freezed == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as String?,isImage: freezed == isImage ? _self.isImage : isImage // ignore: cast_nullable_to_non_nullable
as bool?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Sticker].
extension StickerPatterns on Sticker {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sticker value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sticker() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sticker value)  $default,){
final _that = this;
switch (_that) {
case _Sticker():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sticker value)?  $default,){
final _that = this;
switch (_that) {
case _Sticker() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'background_color')  String? backgroundColor, @JsonKey(name: 'text_color')  String? textColor,  bool? isImage,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sticker() when $default != null:
return $default(_that.name,_that.backgroundColor,_that.textColor,_that.isImage,_that.image);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'background_color')  String? backgroundColor, @JsonKey(name: 'text_color')  String? textColor,  bool? isImage,  String? image)  $default,) {final _that = this;
switch (_that) {
case _Sticker():
return $default(_that.name,_that.backgroundColor,_that.textColor,_that.isImage,_that.image);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: 'background_color')  String? backgroundColor, @JsonKey(name: 'text_color')  String? textColor,  bool? isImage,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _Sticker() when $default != null:
return $default(_that.name,_that.backgroundColor,_that.textColor,_that.isImage,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Sticker implements Sticker {
  const _Sticker({required this.name, @JsonKey(name: 'background_color') this.backgroundColor, @JsonKey(name: 'text_color') this.textColor, this.isImage, this.image});
  factory _Sticker.fromJson(Map<String, dynamic> json) => _$StickerFromJson(json);

@override final  String name;
@override@JsonKey(name: 'background_color') final  String? backgroundColor;
@override@JsonKey(name: 'text_color') final  String? textColor;
@override final  bool? isImage;
@override final  String? image;

/// Create a copy of Sticker
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StickerCopyWith<_Sticker> get copyWith => __$StickerCopyWithImpl<_Sticker>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StickerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sticker&&(identical(other.name, name) || other.name == name)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.textColor, textColor) || other.textColor == textColor)&&(identical(other.isImage, isImage) || other.isImage == isImage)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,backgroundColor,textColor,isImage,image);

@override
String toString() {
  return 'Sticker(name: $name, backgroundColor: $backgroundColor, textColor: $textColor, isImage: $isImage, image: $image)';
}


}

/// @nodoc
abstract mixin class _$StickerCopyWith<$Res> implements $StickerCopyWith<$Res> {
  factory _$StickerCopyWith(_Sticker value, $Res Function(_Sticker) _then) = __$StickerCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: 'background_color') String? backgroundColor,@JsonKey(name: 'text_color') String? textColor, bool? isImage, String? image
});




}
/// @nodoc
class __$StickerCopyWithImpl<$Res>
    implements _$StickerCopyWith<$Res> {
  __$StickerCopyWithImpl(this._self, this._then);

  final _Sticker _self;
  final $Res Function(_Sticker) _then;

/// Create a copy of Sticker
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? backgroundColor = freezed,Object? textColor = freezed,Object? isImage = freezed,Object? image = freezed,}) {
  return _then(_Sticker(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,backgroundColor: freezed == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String?,textColor: freezed == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as String?,isImage: freezed == isImage ? _self.isImage : isImage // ignore: cast_nullable_to_non_nullable
as bool?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductCollection {

 int get id; String get name; String get slug; List<Product> get products;
/// Create a copy of ProductCollection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCollectionCopyWith<ProductCollection> get copyWith => _$ProductCollectionCopyWithImpl<ProductCollection>(this as ProductCollection, _$identity);

  /// Serializes this ProductCollection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCollection&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'ProductCollection(id: $id, name: $name, slug: $slug, products: $products)';
}


}

/// @nodoc
abstract mixin class $ProductCollectionCopyWith<$Res>  {
  factory $ProductCollectionCopyWith(ProductCollection value, $Res Function(ProductCollection) _then) = _$ProductCollectionCopyWithImpl;
@useResult
$Res call({
 int id, String name, String slug, List<Product> products
});




}
/// @nodoc
class _$ProductCollectionCopyWithImpl<$Res>
    implements $ProductCollectionCopyWith<$Res> {
  _$ProductCollectionCopyWithImpl(this._self, this._then);

  final ProductCollection _self;
  final $Res Function(ProductCollection) _then;

/// Create a copy of ProductCollection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? products = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductCollection].
extension ProductCollectionPatterns on ProductCollection {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCollection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCollection() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCollection value)  $default,){
final _that = this;
switch (_that) {
case _ProductCollection():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCollection value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCollection() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  List<Product> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCollection() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.products);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  List<Product> products)  $default,) {final _that = this;
switch (_that) {
case _ProductCollection():
return $default(_that.id,_that.name,_that.slug,_that.products);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String slug,  List<Product> products)?  $default,) {final _that = this;
switch (_that) {
case _ProductCollection() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.products);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductCollection implements ProductCollection {
  const _ProductCollection({required this.id, required this.name, required this.slug, required final  List<Product> products}): _products = products;
  factory _ProductCollection.fromJson(Map<String, dynamic> json) => _$ProductCollectionFromJson(json);

@override final  int id;
@override final  String name;
@override final  String slug;
 final  List<Product> _products;
@override List<Product> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of ProductCollection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCollectionCopyWith<_ProductCollection> get copyWith => __$ProductCollectionCopyWithImpl<_ProductCollection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductCollectionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCollection&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'ProductCollection(id: $id, name: $name, slug: $slug, products: $products)';
}


}

/// @nodoc
abstract mixin class _$ProductCollectionCopyWith<$Res> implements $ProductCollectionCopyWith<$Res> {
  factory _$ProductCollectionCopyWith(_ProductCollection value, $Res Function(_ProductCollection) _then) = __$ProductCollectionCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String slug, List<Product> products
});




}
/// @nodoc
class __$ProductCollectionCopyWithImpl<$Res>
    implements _$ProductCollectionCopyWith<$Res> {
  __$ProductCollectionCopyWithImpl(this._self, this._then);

  final _ProductCollection _self;
  final $Res Function(_ProductCollection) _then;

/// Create a copy of ProductCollection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? products = null,}) {
  return _then(_ProductCollection(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,
  ));
}


}

// dart format on
