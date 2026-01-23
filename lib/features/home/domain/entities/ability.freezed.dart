// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Ability {

 Species get ability; bool? get isHidden; int get slot;
/// Create a copy of Ability
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AbilityCopyWith<Ability> get copyWith => _$AbilityCopyWithImpl<Ability>(this as Ability, _$identity);

  /// Serializes this Ability to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ability&&(identical(other.ability, ability) || other.ability == ability)&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.slot, slot) || other.slot == slot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ability,isHidden,slot);

@override
String toString() {
  return 'Ability(ability: $ability, isHidden: $isHidden, slot: $slot)';
}


}

/// @nodoc
abstract mixin class $AbilityCopyWith<$Res>  {
  factory $AbilityCopyWith(Ability value, $Res Function(Ability) _then) = _$AbilityCopyWithImpl;
@useResult
$Res call({
 Species ability, bool? isHidden, int slot
});


$SpeciesCopyWith<$Res> get ability;

}
/// @nodoc
class _$AbilityCopyWithImpl<$Res>
    implements $AbilityCopyWith<$Res> {
  _$AbilityCopyWithImpl(this._self, this._then);

  final Ability _self;
  final $Res Function(Ability) _then;

/// Create a copy of Ability
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ability = null,Object? isHidden = freezed,Object? slot = null,}) {
  return _then(_self.copyWith(
ability: null == ability ? _self.ability : ability // ignore: cast_nullable_to_non_nullable
as Species,isHidden: freezed == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool?,slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Ability
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get ability {
  
  return $SpeciesCopyWith<$Res>(_self.ability, (value) {
    return _then(_self.copyWith(ability: value));
  });
}
}


/// Adds pattern-matching-related methods to [Ability].
extension AbilityPatterns on Ability {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ability value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ability() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ability value)  $default,){
final _that = this;
switch (_that) {
case _Ability():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ability value)?  $default,){
final _that = this;
switch (_that) {
case _Ability() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Species ability,  bool? isHidden,  int slot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ability() when $default != null:
return $default(_that.ability,_that.isHidden,_that.slot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Species ability,  bool? isHidden,  int slot)  $default,) {final _that = this;
switch (_that) {
case _Ability():
return $default(_that.ability,_that.isHidden,_that.slot);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Species ability,  bool? isHidden,  int slot)?  $default,) {final _that = this;
switch (_that) {
case _Ability() when $default != null:
return $default(_that.ability,_that.isHidden,_that.slot);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Ability implements Ability {
  const _Ability({required this.ability, this.isHidden, required this.slot});
  factory _Ability.fromJson(Map<String, dynamic> json) => _$AbilityFromJson(json);

@override final  Species ability;
@override final  bool? isHidden;
@override final  int slot;

/// Create a copy of Ability
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AbilityCopyWith<_Ability> get copyWith => __$AbilityCopyWithImpl<_Ability>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AbilityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ability&&(identical(other.ability, ability) || other.ability == ability)&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.slot, slot) || other.slot == slot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ability,isHidden,slot);

@override
String toString() {
  return 'Ability(ability: $ability, isHidden: $isHidden, slot: $slot)';
}


}

/// @nodoc
abstract mixin class _$AbilityCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$AbilityCopyWith(_Ability value, $Res Function(_Ability) _then) = __$AbilityCopyWithImpl;
@override @useResult
$Res call({
 Species ability, bool? isHidden, int slot
});


@override $SpeciesCopyWith<$Res> get ability;

}
/// @nodoc
class __$AbilityCopyWithImpl<$Res>
    implements _$AbilityCopyWith<$Res> {
  __$AbilityCopyWithImpl(this._self, this._then);

  final _Ability _self;
  final $Res Function(_Ability) _then;

/// Create a copy of Ability
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ability = null,Object? isHidden = freezed,Object? slot = null,}) {
  return _then(_Ability(
ability: null == ability ? _self.ability : ability // ignore: cast_nullable_to_non_nullable
as Species,isHidden: freezed == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool?,slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Ability
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get ability {
  
  return $SpeciesCopyWith<$Res>(_self.ability, (value) {
    return _then(_self.copyWith(ability: value));
  });
}
}

// dart format on
