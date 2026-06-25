// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BannerItem {

 String get image; String get link;
/// Create a copy of BannerItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannerItemCopyWith<BannerItem> get copyWith => _$BannerItemCopyWithImpl<BannerItem>(this as BannerItem, _$identity);

  /// Serializes this BannerItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannerItem&&(identical(other.image, image) || other.image == image)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,image,link);

@override
String toString() {
  return 'BannerItem(image: $image, link: $link)';
}


}

/// @nodoc
abstract mixin class $BannerItemCopyWith<$Res>  {
  factory $BannerItemCopyWith(BannerItem value, $Res Function(BannerItem) _then) = _$BannerItemCopyWithImpl;
@useResult
$Res call({
 String image, String link
});




}
/// @nodoc
class _$BannerItemCopyWithImpl<$Res>
    implements $BannerItemCopyWith<$Res> {
  _$BannerItemCopyWithImpl(this._self, this._then);

  final BannerItem _self;
  final $Res Function(BannerItem) _then;

/// Create a copy of BannerItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = null,Object? link = null,}) {
  return _then(_self.copyWith(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BannerItem].
extension BannerItemPatterns on BannerItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BannerItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BannerItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BannerItem value)  $default,){
final _that = this;
switch (_that) {
case _BannerItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BannerItem value)?  $default,){
final _that = this;
switch (_that) {
case _BannerItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String image,  String link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BannerItem() when $default != null:
return $default(_that.image,_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String image,  String link)  $default,) {final _that = this;
switch (_that) {
case _BannerItem():
return $default(_that.image,_that.link);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String image,  String link)?  $default,) {final _that = this;
switch (_that) {
case _BannerItem() when $default != null:
return $default(_that.image,_that.link);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BannerItem implements BannerItem {
  const _BannerItem({required this.image, required this.link});
  factory _BannerItem.fromJson(Map<String, dynamic> json) => _$BannerItemFromJson(json);

@override final  String image;
@override final  String link;

/// Create a copy of BannerItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BannerItemCopyWith<_BannerItem> get copyWith => __$BannerItemCopyWithImpl<_BannerItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BannerItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BannerItem&&(identical(other.image, image) || other.image == image)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,image,link);

@override
String toString() {
  return 'BannerItem(image: $image, link: $link)';
}


}

/// @nodoc
abstract mixin class _$BannerItemCopyWith<$Res> implements $BannerItemCopyWith<$Res> {
  factory _$BannerItemCopyWith(_BannerItem value, $Res Function(_BannerItem) _then) = __$BannerItemCopyWithImpl;
@override @useResult
$Res call({
 String image, String link
});




}
/// @nodoc
class __$BannerItemCopyWithImpl<$Res>
    implements _$BannerItemCopyWith<$Res> {
  __$BannerItemCopyWithImpl(this._self, this._then);

  final _BannerItem _self;
  final $Res Function(_BannerItem) _then;

/// Create a copy of BannerItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = null,Object? link = null,}) {
  return _then(_BannerItem(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
