// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameIndex {

 int get gameIndex; Species get version;
/// Create a copy of GameIndex
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameIndexCopyWith<GameIndex> get copyWith => _$GameIndexCopyWithImpl<GameIndex>(this as GameIndex, _$identity);

  /// Serializes this GameIndex to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameIndex&&(identical(other.gameIndex, gameIndex) || other.gameIndex == gameIndex)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gameIndex,version);

@override
String toString() {
  return 'GameIndex(gameIndex: $gameIndex, version: $version)';
}


}

/// @nodoc
abstract mixin class $GameIndexCopyWith<$Res>  {
  factory $GameIndexCopyWith(GameIndex value, $Res Function(GameIndex) _then) = _$GameIndexCopyWithImpl;
@useResult
$Res call({
 int gameIndex, Species version
});


$SpeciesCopyWith<$Res> get version;

}
/// @nodoc
class _$GameIndexCopyWithImpl<$Res>
    implements $GameIndexCopyWith<$Res> {
  _$GameIndexCopyWithImpl(this._self, this._then);

  final GameIndex _self;
  final $Res Function(GameIndex) _then;

/// Create a copy of GameIndex
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gameIndex = null,Object? version = null,}) {
  return _then(_self.copyWith(
gameIndex: null == gameIndex ? _self.gameIndex : gameIndex // ignore: cast_nullable_to_non_nullable
as int,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Species,
  ));
}
/// Create a copy of GameIndex
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get version {
  
  return $SpeciesCopyWith<$Res>(_self.version, (value) {
    return _then(_self.copyWith(version: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameIndex].
extension GameIndexPatterns on GameIndex {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameIndex value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameIndex() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameIndex value)  $default,){
final _that = this;
switch (_that) {
case _GameIndex():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameIndex value)?  $default,){
final _that = this;
switch (_that) {
case _GameIndex() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int gameIndex,  Species version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameIndex() when $default != null:
return $default(_that.gameIndex,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int gameIndex,  Species version)  $default,) {final _that = this;
switch (_that) {
case _GameIndex():
return $default(_that.gameIndex,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int gameIndex,  Species version)?  $default,) {final _that = this;
switch (_that) {
case _GameIndex() when $default != null:
return $default(_that.gameIndex,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameIndex implements GameIndex {
  const _GameIndex({required this.gameIndex, required this.version});
  factory _GameIndex.fromJson(Map<String, dynamic> json) => _$GameIndexFromJson(json);

@override final  int gameIndex;
@override final  Species version;

/// Create a copy of GameIndex
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameIndexCopyWith<_GameIndex> get copyWith => __$GameIndexCopyWithImpl<_GameIndex>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameIndexToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameIndex&&(identical(other.gameIndex, gameIndex) || other.gameIndex == gameIndex)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gameIndex,version);

@override
String toString() {
  return 'GameIndex(gameIndex: $gameIndex, version: $version)';
}


}

/// @nodoc
abstract mixin class _$GameIndexCopyWith<$Res> implements $GameIndexCopyWith<$Res> {
  factory _$GameIndexCopyWith(_GameIndex value, $Res Function(_GameIndex) _then) = __$GameIndexCopyWithImpl;
@override @useResult
$Res call({
 int gameIndex, Species version
});


@override $SpeciesCopyWith<$Res> get version;

}
/// @nodoc
class __$GameIndexCopyWithImpl<$Res>
    implements _$GameIndexCopyWith<$Res> {
  __$GameIndexCopyWithImpl(this._self, this._then);

  final _GameIndex _self;
  final $Res Function(_GameIndex) _then;

/// Create a copy of GameIndex
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gameIndex = null,Object? version = null,}) {
  return _then(_GameIndex(
gameIndex: null == gameIndex ? _self.gameIndex : gameIndex // ignore: cast_nullable_to_non_nullable
as int,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Species,
  ));
}

/// Create a copy of GameIndex
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get version {
  
  return $SpeciesCopyWith<$Res>(_self.version, (value) {
    return _then(_self.copyWith(version: value));
  });
}
}

// dart format on
