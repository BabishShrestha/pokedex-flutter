// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Pokemon {

 List<Ability> get abilities; int? get baseExperience; List<Species> get forms; List<GameIndex>? get gameIndices; int get height; List<HeldItem>? get heldItems; int get id; bool? get isDefault; String? get locationAreaEncounters; List<Move> get moves; String get name; int get order; List<dynamic> get pastTypes; Species get species; Sprites get sprites; List<Stat> get stats; List<Type> get types; int get weight;
/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonCopyWith<Pokemon> get copyWith => _$PokemonCopyWithImpl<Pokemon>(this as Pokemon, _$identity);

  /// Serializes this Pokemon to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pokemon&&const DeepCollectionEquality().equals(other.abilities, abilities)&&(identical(other.baseExperience, baseExperience) || other.baseExperience == baseExperience)&&const DeepCollectionEquality().equals(other.forms, forms)&&const DeepCollectionEquality().equals(other.gameIndices, gameIndices)&&(identical(other.height, height) || other.height == height)&&const DeepCollectionEquality().equals(other.heldItems, heldItems)&&(identical(other.id, id) || other.id == id)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.locationAreaEncounters, locationAreaEncounters) || other.locationAreaEncounters == locationAreaEncounters)&&const DeepCollectionEquality().equals(other.moves, moves)&&(identical(other.name, name) || other.name == name)&&(identical(other.order, order) || other.order == order)&&const DeepCollectionEquality().equals(other.pastTypes, pastTypes)&&(identical(other.species, species) || other.species == species)&&(identical(other.sprites, sprites) || other.sprites == sprites)&&const DeepCollectionEquality().equals(other.stats, stats)&&const DeepCollectionEquality().equals(other.types, types)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(abilities),baseExperience,const DeepCollectionEquality().hash(forms),const DeepCollectionEquality().hash(gameIndices),height,const DeepCollectionEquality().hash(heldItems),id,isDefault,locationAreaEncounters,const DeepCollectionEquality().hash(moves),name,order,const DeepCollectionEquality().hash(pastTypes),species,sprites,const DeepCollectionEquality().hash(stats),const DeepCollectionEquality().hash(types),weight);

@override
String toString() {
  return 'Pokemon(abilities: $abilities, baseExperience: $baseExperience, forms: $forms, gameIndices: $gameIndices, height: $height, heldItems: $heldItems, id: $id, isDefault: $isDefault, locationAreaEncounters: $locationAreaEncounters, moves: $moves, name: $name, order: $order, pastTypes: $pastTypes, species: $species, sprites: $sprites, stats: $stats, types: $types, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $PokemonCopyWith<$Res>  {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) _then) = _$PokemonCopyWithImpl;
@useResult
$Res call({
 List<Ability> abilities, int? baseExperience, List<Species> forms, List<GameIndex>? gameIndices, int height, List<HeldItem>? heldItems, int id, bool? isDefault, String? locationAreaEncounters, List<Move> moves, String name, int order, List<dynamic> pastTypes, Species species, Sprites sprites, List<Stat> stats, List<Type> types, int weight
});


$SpeciesCopyWith<$Res> get species;$SpritesCopyWith<$Res> get sprites;

}
/// @nodoc
class _$PokemonCopyWithImpl<$Res>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._self, this._then);

  final Pokemon _self;
  final $Res Function(Pokemon) _then;

/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? abilities = null,Object? baseExperience = freezed,Object? forms = null,Object? gameIndices = freezed,Object? height = null,Object? heldItems = freezed,Object? id = null,Object? isDefault = freezed,Object? locationAreaEncounters = freezed,Object? moves = null,Object? name = null,Object? order = null,Object? pastTypes = null,Object? species = null,Object? sprites = null,Object? stats = null,Object? types = null,Object? weight = null,}) {
  return _then(_self.copyWith(
abilities: null == abilities ? _self.abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<Ability>,baseExperience: freezed == baseExperience ? _self.baseExperience : baseExperience // ignore: cast_nullable_to_non_nullable
as int?,forms: null == forms ? _self.forms : forms // ignore: cast_nullable_to_non_nullable
as List<Species>,gameIndices: freezed == gameIndices ? _self.gameIndices : gameIndices // ignore: cast_nullable_to_non_nullable
as List<GameIndex>?,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,heldItems: freezed == heldItems ? _self.heldItems : heldItems // ignore: cast_nullable_to_non_nullable
as List<HeldItem>?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,locationAreaEncounters: freezed == locationAreaEncounters ? _self.locationAreaEncounters : locationAreaEncounters // ignore: cast_nullable_to_non_nullable
as String?,moves: null == moves ? _self.moves : moves // ignore: cast_nullable_to_non_nullable
as List<Move>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,pastTypes: null == pastTypes ? _self.pastTypes : pastTypes // ignore: cast_nullable_to_non_nullable
as List<dynamic>,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as Species,sprites: null == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as Sprites,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as List<Stat>,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<Type>,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get species {
  
  return $SpeciesCopyWith<$Res>(_self.species, (value) {
    return _then(_self.copyWith(species: value));
  });
}/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesCopyWith<$Res> get sprites {
  
  return $SpritesCopyWith<$Res>(_self.sprites, (value) {
    return _then(_self.copyWith(sprites: value));
  });
}
}


/// Adds pattern-matching-related methods to [Pokemon].
extension PokemonPatterns on Pokemon {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pokemon value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pokemon() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pokemon value)  $default,){
final _that = this;
switch (_that) {
case _Pokemon():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pokemon value)?  $default,){
final _that = this;
switch (_that) {
case _Pokemon() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Ability> abilities,  int? baseExperience,  List<Species> forms,  List<GameIndex>? gameIndices,  int height,  List<HeldItem>? heldItems,  int id,  bool? isDefault,  String? locationAreaEncounters,  List<Move> moves,  String name,  int order,  List<dynamic> pastTypes,  Species species,  Sprites sprites,  List<Stat> stats,  List<Type> types,  int weight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pokemon() when $default != null:
return $default(_that.abilities,_that.baseExperience,_that.forms,_that.gameIndices,_that.height,_that.heldItems,_that.id,_that.isDefault,_that.locationAreaEncounters,_that.moves,_that.name,_that.order,_that.pastTypes,_that.species,_that.sprites,_that.stats,_that.types,_that.weight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Ability> abilities,  int? baseExperience,  List<Species> forms,  List<GameIndex>? gameIndices,  int height,  List<HeldItem>? heldItems,  int id,  bool? isDefault,  String? locationAreaEncounters,  List<Move> moves,  String name,  int order,  List<dynamic> pastTypes,  Species species,  Sprites sprites,  List<Stat> stats,  List<Type> types,  int weight)  $default,) {final _that = this;
switch (_that) {
case _Pokemon():
return $default(_that.abilities,_that.baseExperience,_that.forms,_that.gameIndices,_that.height,_that.heldItems,_that.id,_that.isDefault,_that.locationAreaEncounters,_that.moves,_that.name,_that.order,_that.pastTypes,_that.species,_that.sprites,_that.stats,_that.types,_that.weight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Ability> abilities,  int? baseExperience,  List<Species> forms,  List<GameIndex>? gameIndices,  int height,  List<HeldItem>? heldItems,  int id,  bool? isDefault,  String? locationAreaEncounters,  List<Move> moves,  String name,  int order,  List<dynamic> pastTypes,  Species species,  Sprites sprites,  List<Stat> stats,  List<Type> types,  int weight)?  $default,) {final _that = this;
switch (_that) {
case _Pokemon() when $default != null:
return $default(_that.abilities,_that.baseExperience,_that.forms,_that.gameIndices,_that.height,_that.heldItems,_that.id,_that.isDefault,_that.locationAreaEncounters,_that.moves,_that.name,_that.order,_that.pastTypes,_that.species,_that.sprites,_that.stats,_that.types,_that.weight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pokemon implements Pokemon {
  const _Pokemon({required final  List<Ability> abilities, this.baseExperience, required final  List<Species> forms, required final  List<GameIndex>? gameIndices, required this.height, required final  List<HeldItem>? heldItems, required this.id, required this.isDefault, required this.locationAreaEncounters, required final  List<Move> moves, required this.name, required this.order, final  List<dynamic> pastTypes = const [], required this.species, required this.sprites, required final  List<Stat> stats, required final  List<Type> types, required this.weight}): _abilities = abilities,_forms = forms,_gameIndices = gameIndices,_heldItems = heldItems,_moves = moves,_pastTypes = pastTypes,_stats = stats,_types = types;
  factory _Pokemon.fromJson(Map<String, dynamic> json) => _$PokemonFromJson(json);

 final  List<Ability> _abilities;
@override List<Ability> get abilities {
  if (_abilities is EqualUnmodifiableListView) return _abilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_abilities);
}

@override final  int? baseExperience;
 final  List<Species> _forms;
@override List<Species> get forms {
  if (_forms is EqualUnmodifiableListView) return _forms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_forms);
}

 final  List<GameIndex>? _gameIndices;
@override List<GameIndex>? get gameIndices {
  final value = _gameIndices;
  if (value == null) return null;
  if (_gameIndices is EqualUnmodifiableListView) return _gameIndices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int height;
 final  List<HeldItem>? _heldItems;
@override List<HeldItem>? get heldItems {
  final value = _heldItems;
  if (value == null) return null;
  if (_heldItems is EqualUnmodifiableListView) return _heldItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int id;
@override final  bool? isDefault;
@override final  String? locationAreaEncounters;
 final  List<Move> _moves;
@override List<Move> get moves {
  if (_moves is EqualUnmodifiableListView) return _moves;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_moves);
}

@override final  String name;
@override final  int order;
 final  List<dynamic> _pastTypes;
@override@JsonKey() List<dynamic> get pastTypes {
  if (_pastTypes is EqualUnmodifiableListView) return _pastTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pastTypes);
}

@override final  Species species;
@override final  Sprites sprites;
 final  List<Stat> _stats;
@override List<Stat> get stats {
  if (_stats is EqualUnmodifiableListView) return _stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stats);
}

 final  List<Type> _types;
@override List<Type> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}

@override final  int weight;

/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonCopyWith<_Pokemon> get copyWith => __$PokemonCopyWithImpl<_Pokemon>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pokemon&&const DeepCollectionEquality().equals(other._abilities, _abilities)&&(identical(other.baseExperience, baseExperience) || other.baseExperience == baseExperience)&&const DeepCollectionEquality().equals(other._forms, _forms)&&const DeepCollectionEquality().equals(other._gameIndices, _gameIndices)&&(identical(other.height, height) || other.height == height)&&const DeepCollectionEquality().equals(other._heldItems, _heldItems)&&(identical(other.id, id) || other.id == id)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.locationAreaEncounters, locationAreaEncounters) || other.locationAreaEncounters == locationAreaEncounters)&&const DeepCollectionEquality().equals(other._moves, _moves)&&(identical(other.name, name) || other.name == name)&&(identical(other.order, order) || other.order == order)&&const DeepCollectionEquality().equals(other._pastTypes, _pastTypes)&&(identical(other.species, species) || other.species == species)&&(identical(other.sprites, sprites) || other.sprites == sprites)&&const DeepCollectionEquality().equals(other._stats, _stats)&&const DeepCollectionEquality().equals(other._types, _types)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_abilities),baseExperience,const DeepCollectionEquality().hash(_forms),const DeepCollectionEquality().hash(_gameIndices),height,const DeepCollectionEquality().hash(_heldItems),id,isDefault,locationAreaEncounters,const DeepCollectionEquality().hash(_moves),name,order,const DeepCollectionEquality().hash(_pastTypes),species,sprites,const DeepCollectionEquality().hash(_stats),const DeepCollectionEquality().hash(_types),weight);

@override
String toString() {
  return 'Pokemon(abilities: $abilities, baseExperience: $baseExperience, forms: $forms, gameIndices: $gameIndices, height: $height, heldItems: $heldItems, id: $id, isDefault: $isDefault, locationAreaEncounters: $locationAreaEncounters, moves: $moves, name: $name, order: $order, pastTypes: $pastTypes, species: $species, sprites: $sprites, stats: $stats, types: $types, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$PokemonCopyWith(_Pokemon value, $Res Function(_Pokemon) _then) = __$PokemonCopyWithImpl;
@override @useResult
$Res call({
 List<Ability> abilities, int? baseExperience, List<Species> forms, List<GameIndex>? gameIndices, int height, List<HeldItem>? heldItems, int id, bool? isDefault, String? locationAreaEncounters, List<Move> moves, String name, int order, List<dynamic> pastTypes, Species species, Sprites sprites, List<Stat> stats, List<Type> types, int weight
});


@override $SpeciesCopyWith<$Res> get species;@override $SpritesCopyWith<$Res> get sprites;

}
/// @nodoc
class __$PokemonCopyWithImpl<$Res>
    implements _$PokemonCopyWith<$Res> {
  __$PokemonCopyWithImpl(this._self, this._then);

  final _Pokemon _self;
  final $Res Function(_Pokemon) _then;

/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? abilities = null,Object? baseExperience = freezed,Object? forms = null,Object? gameIndices = freezed,Object? height = null,Object? heldItems = freezed,Object? id = null,Object? isDefault = freezed,Object? locationAreaEncounters = freezed,Object? moves = null,Object? name = null,Object? order = null,Object? pastTypes = null,Object? species = null,Object? sprites = null,Object? stats = null,Object? types = null,Object? weight = null,}) {
  return _then(_Pokemon(
abilities: null == abilities ? _self._abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<Ability>,baseExperience: freezed == baseExperience ? _self.baseExperience : baseExperience // ignore: cast_nullable_to_non_nullable
as int?,forms: null == forms ? _self._forms : forms // ignore: cast_nullable_to_non_nullable
as List<Species>,gameIndices: freezed == gameIndices ? _self._gameIndices : gameIndices // ignore: cast_nullable_to_non_nullable
as List<GameIndex>?,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,heldItems: freezed == heldItems ? _self._heldItems : heldItems // ignore: cast_nullable_to_non_nullable
as List<HeldItem>?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,locationAreaEncounters: freezed == locationAreaEncounters ? _self.locationAreaEncounters : locationAreaEncounters // ignore: cast_nullable_to_non_nullable
as String?,moves: null == moves ? _self._moves : moves // ignore: cast_nullable_to_non_nullable
as List<Move>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,pastTypes: null == pastTypes ? _self._pastTypes : pastTypes // ignore: cast_nullable_to_non_nullable
as List<dynamic>,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as Species,sprites: null == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as Sprites,stats: null == stats ? _self._stats : stats // ignore: cast_nullable_to_non_nullable
as List<Stat>,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<Type>,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get species {
  
  return $SpeciesCopyWith<$Res>(_self.species, (value) {
    return _then(_self.copyWith(species: value));
  });
}/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesCopyWith<$Res> get sprites {
  
  return $SpritesCopyWith<$Res>(_self.sprites, (value) {
    return _then(_self.copyWith(sprites: value));
  });
}
}


/// @nodoc
mixin _$HeldItem {

 Species get item; List<VersionDetail> get versionDetails;
/// Create a copy of HeldItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeldItemCopyWith<HeldItem> get copyWith => _$HeldItemCopyWithImpl<HeldItem>(this as HeldItem, _$identity);

  /// Serializes this HeldItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeldItem&&(identical(other.item, item) || other.item == item)&&const DeepCollectionEquality().equals(other.versionDetails, versionDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,item,const DeepCollectionEquality().hash(versionDetails));

@override
String toString() {
  return 'HeldItem(item: $item, versionDetails: $versionDetails)';
}


}

/// @nodoc
abstract mixin class $HeldItemCopyWith<$Res>  {
  factory $HeldItemCopyWith(HeldItem value, $Res Function(HeldItem) _then) = _$HeldItemCopyWithImpl;
@useResult
$Res call({
 Species item, List<VersionDetail> versionDetails
});


$SpeciesCopyWith<$Res> get item;

}
/// @nodoc
class _$HeldItemCopyWithImpl<$Res>
    implements $HeldItemCopyWith<$Res> {
  _$HeldItemCopyWithImpl(this._self, this._then);

  final HeldItem _self;
  final $Res Function(HeldItem) _then;

/// Create a copy of HeldItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,Object? versionDetails = null,}) {
  return _then(_self.copyWith(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as Species,versionDetails: null == versionDetails ? _self.versionDetails : versionDetails // ignore: cast_nullable_to_non_nullable
as List<VersionDetail>,
  ));
}
/// Create a copy of HeldItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get item {
  
  return $SpeciesCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}


/// Adds pattern-matching-related methods to [HeldItem].
extension HeldItemPatterns on HeldItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeldItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeldItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeldItem value)  $default,){
final _that = this;
switch (_that) {
case _HeldItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeldItem value)?  $default,){
final _that = this;
switch (_that) {
case _HeldItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Species item,  List<VersionDetail> versionDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeldItem() when $default != null:
return $default(_that.item,_that.versionDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Species item,  List<VersionDetail> versionDetails)  $default,) {final _that = this;
switch (_that) {
case _HeldItem():
return $default(_that.item,_that.versionDetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Species item,  List<VersionDetail> versionDetails)?  $default,) {final _that = this;
switch (_that) {
case _HeldItem() when $default != null:
return $default(_that.item,_that.versionDetails);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HeldItem implements HeldItem {
  const _HeldItem({required this.item, required final  List<VersionDetail> versionDetails}): _versionDetails = versionDetails;
  factory _HeldItem.fromJson(Map<String, dynamic> json) => _$HeldItemFromJson(json);

@override final  Species item;
 final  List<VersionDetail> _versionDetails;
@override List<VersionDetail> get versionDetails {
  if (_versionDetails is EqualUnmodifiableListView) return _versionDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_versionDetails);
}


/// Create a copy of HeldItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeldItemCopyWith<_HeldItem> get copyWith => __$HeldItemCopyWithImpl<_HeldItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeldItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeldItem&&(identical(other.item, item) || other.item == item)&&const DeepCollectionEquality().equals(other._versionDetails, _versionDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,item,const DeepCollectionEquality().hash(_versionDetails));

@override
String toString() {
  return 'HeldItem(item: $item, versionDetails: $versionDetails)';
}


}

/// @nodoc
abstract mixin class _$HeldItemCopyWith<$Res> implements $HeldItemCopyWith<$Res> {
  factory _$HeldItemCopyWith(_HeldItem value, $Res Function(_HeldItem) _then) = __$HeldItemCopyWithImpl;
@override @useResult
$Res call({
 Species item, List<VersionDetail> versionDetails
});


@override $SpeciesCopyWith<$Res> get item;

}
/// @nodoc
class __$HeldItemCopyWithImpl<$Res>
    implements _$HeldItemCopyWith<$Res> {
  __$HeldItemCopyWithImpl(this._self, this._then);

  final _HeldItem _self;
  final $Res Function(_HeldItem) _then;

/// Create a copy of HeldItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,Object? versionDetails = null,}) {
  return _then(_HeldItem(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as Species,versionDetails: null == versionDetails ? _self._versionDetails : versionDetails // ignore: cast_nullable_to_non_nullable
as List<VersionDetail>,
  ));
}

/// Create a copy of HeldItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get item {
  
  return $SpeciesCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}


/// @nodoc
mixin _$VersionDetail {

 int get rarity; Species get version;
/// Create a copy of VersionDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VersionDetailCopyWith<VersionDetail> get copyWith => _$VersionDetailCopyWithImpl<VersionDetail>(this as VersionDetail, _$identity);

  /// Serializes this VersionDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VersionDetail&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rarity,version);

@override
String toString() {
  return 'VersionDetail(rarity: $rarity, version: $version)';
}


}

/// @nodoc
abstract mixin class $VersionDetailCopyWith<$Res>  {
  factory $VersionDetailCopyWith(VersionDetail value, $Res Function(VersionDetail) _then) = _$VersionDetailCopyWithImpl;
@useResult
$Res call({
 int rarity, Species version
});


$SpeciesCopyWith<$Res> get version;

}
/// @nodoc
class _$VersionDetailCopyWithImpl<$Res>
    implements $VersionDetailCopyWith<$Res> {
  _$VersionDetailCopyWithImpl(this._self, this._then);

  final VersionDetail _self;
  final $Res Function(VersionDetail) _then;

/// Create a copy of VersionDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rarity = null,Object? version = null,}) {
  return _then(_self.copyWith(
rarity: null == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as int,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Species,
  ));
}
/// Create a copy of VersionDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get version {
  
  return $SpeciesCopyWith<$Res>(_self.version, (value) {
    return _then(_self.copyWith(version: value));
  });
}
}


/// Adds pattern-matching-related methods to [VersionDetail].
extension VersionDetailPatterns on VersionDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VersionDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VersionDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VersionDetail value)  $default,){
final _that = this;
switch (_that) {
case _VersionDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VersionDetail value)?  $default,){
final _that = this;
switch (_that) {
case _VersionDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int rarity,  Species version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VersionDetail() when $default != null:
return $default(_that.rarity,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int rarity,  Species version)  $default,) {final _that = this;
switch (_that) {
case _VersionDetail():
return $default(_that.rarity,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int rarity,  Species version)?  $default,) {final _that = this;
switch (_that) {
case _VersionDetail() when $default != null:
return $default(_that.rarity,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VersionDetail implements VersionDetail {
  const _VersionDetail({required this.rarity, required this.version});
  factory _VersionDetail.fromJson(Map<String, dynamic> json) => _$VersionDetailFromJson(json);

@override final  int rarity;
@override final  Species version;

/// Create a copy of VersionDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VersionDetailCopyWith<_VersionDetail> get copyWith => __$VersionDetailCopyWithImpl<_VersionDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VersionDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VersionDetail&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rarity,version);

@override
String toString() {
  return 'VersionDetail(rarity: $rarity, version: $version)';
}


}

/// @nodoc
abstract mixin class _$VersionDetailCopyWith<$Res> implements $VersionDetailCopyWith<$Res> {
  factory _$VersionDetailCopyWith(_VersionDetail value, $Res Function(_VersionDetail) _then) = __$VersionDetailCopyWithImpl;
@override @useResult
$Res call({
 int rarity, Species version
});


@override $SpeciesCopyWith<$Res> get version;

}
/// @nodoc
class __$VersionDetailCopyWithImpl<$Res>
    implements _$VersionDetailCopyWith<$Res> {
  __$VersionDetailCopyWithImpl(this._self, this._then);

  final _VersionDetail _self;
  final $Res Function(_VersionDetail) _then;

/// Create a copy of VersionDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rarity = null,Object? version = null,}) {
  return _then(_VersionDetail(
rarity: null == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as int,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Species,
  ));
}

/// Create a copy of VersionDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get version {
  
  return $SpeciesCopyWith<$Res>(_self.version, (value) {
    return _then(_self.copyWith(version: value));
  });
}
}


/// @nodoc
mixin _$Move {

 Species get move; List<VersionGroupDetail>? get versionGroupDetails;
/// Create a copy of Move
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoveCopyWith<Move> get copyWith => _$MoveCopyWithImpl<Move>(this as Move, _$identity);

  /// Serializes this Move to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Move&&(identical(other.move, move) || other.move == move)&&const DeepCollectionEquality().equals(other.versionGroupDetails, versionGroupDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,move,const DeepCollectionEquality().hash(versionGroupDetails));

@override
String toString() {
  return 'Move(move: $move, versionGroupDetails: $versionGroupDetails)';
}


}

/// @nodoc
abstract mixin class $MoveCopyWith<$Res>  {
  factory $MoveCopyWith(Move value, $Res Function(Move) _then) = _$MoveCopyWithImpl;
@useResult
$Res call({
 Species move, List<VersionGroupDetail>? versionGroupDetails
});


$SpeciesCopyWith<$Res> get move;

}
/// @nodoc
class _$MoveCopyWithImpl<$Res>
    implements $MoveCopyWith<$Res> {
  _$MoveCopyWithImpl(this._self, this._then);

  final Move _self;
  final $Res Function(Move) _then;

/// Create a copy of Move
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? move = null,Object? versionGroupDetails = freezed,}) {
  return _then(_self.copyWith(
move: null == move ? _self.move : move // ignore: cast_nullable_to_non_nullable
as Species,versionGroupDetails: freezed == versionGroupDetails ? _self.versionGroupDetails : versionGroupDetails // ignore: cast_nullable_to_non_nullable
as List<VersionGroupDetail>?,
  ));
}
/// Create a copy of Move
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get move {
  
  return $SpeciesCopyWith<$Res>(_self.move, (value) {
    return _then(_self.copyWith(move: value));
  });
}
}


/// Adds pattern-matching-related methods to [Move].
extension MovePatterns on Move {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Move value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Move() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Move value)  $default,){
final _that = this;
switch (_that) {
case _Move():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Move value)?  $default,){
final _that = this;
switch (_that) {
case _Move() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Species move,  List<VersionGroupDetail>? versionGroupDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Move() when $default != null:
return $default(_that.move,_that.versionGroupDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Species move,  List<VersionGroupDetail>? versionGroupDetails)  $default,) {final _that = this;
switch (_that) {
case _Move():
return $default(_that.move,_that.versionGroupDetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Species move,  List<VersionGroupDetail>? versionGroupDetails)?  $default,) {final _that = this;
switch (_that) {
case _Move() when $default != null:
return $default(_that.move,_that.versionGroupDetails);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Move implements Move {
  const _Move({required this.move, required final  List<VersionGroupDetail>? versionGroupDetails}): _versionGroupDetails = versionGroupDetails;
  factory _Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);

@override final  Species move;
 final  List<VersionGroupDetail>? _versionGroupDetails;
@override List<VersionGroupDetail>? get versionGroupDetails {
  final value = _versionGroupDetails;
  if (value == null) return null;
  if (_versionGroupDetails is EqualUnmodifiableListView) return _versionGroupDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Move
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoveCopyWith<_Move> get copyWith => __$MoveCopyWithImpl<_Move>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoveToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Move&&(identical(other.move, move) || other.move == move)&&const DeepCollectionEquality().equals(other._versionGroupDetails, _versionGroupDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,move,const DeepCollectionEquality().hash(_versionGroupDetails));

@override
String toString() {
  return 'Move(move: $move, versionGroupDetails: $versionGroupDetails)';
}


}

/// @nodoc
abstract mixin class _$MoveCopyWith<$Res> implements $MoveCopyWith<$Res> {
  factory _$MoveCopyWith(_Move value, $Res Function(_Move) _then) = __$MoveCopyWithImpl;
@override @useResult
$Res call({
 Species move, List<VersionGroupDetail>? versionGroupDetails
});


@override $SpeciesCopyWith<$Res> get move;

}
/// @nodoc
class __$MoveCopyWithImpl<$Res>
    implements _$MoveCopyWith<$Res> {
  __$MoveCopyWithImpl(this._self, this._then);

  final _Move _self;
  final $Res Function(_Move) _then;

/// Create a copy of Move
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? move = null,Object? versionGroupDetails = freezed,}) {
  return _then(_Move(
move: null == move ? _self.move : move // ignore: cast_nullable_to_non_nullable
as Species,versionGroupDetails: freezed == versionGroupDetails ? _self._versionGroupDetails : versionGroupDetails // ignore: cast_nullable_to_non_nullable
as List<VersionGroupDetail>?,
  ));
}

/// Create a copy of Move
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get move {
  
  return $SpeciesCopyWith<$Res>(_self.move, (value) {
    return _then(_self.copyWith(move: value));
  });
}
}


/// @nodoc
mixin _$VersionGroupDetail {

 int get levelLearnedAt; Species get moveLearnMethod; Species get versionGroup;
/// Create a copy of VersionGroupDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VersionGroupDetailCopyWith<VersionGroupDetail> get copyWith => _$VersionGroupDetailCopyWithImpl<VersionGroupDetail>(this as VersionGroupDetail, _$identity);

  /// Serializes this VersionGroupDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VersionGroupDetail&&(identical(other.levelLearnedAt, levelLearnedAt) || other.levelLearnedAt == levelLearnedAt)&&(identical(other.moveLearnMethod, moveLearnMethod) || other.moveLearnMethod == moveLearnMethod)&&(identical(other.versionGroup, versionGroup) || other.versionGroup == versionGroup));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,levelLearnedAt,moveLearnMethod,versionGroup);

@override
String toString() {
  return 'VersionGroupDetail(levelLearnedAt: $levelLearnedAt, moveLearnMethod: $moveLearnMethod, versionGroup: $versionGroup)';
}


}

/// @nodoc
abstract mixin class $VersionGroupDetailCopyWith<$Res>  {
  factory $VersionGroupDetailCopyWith(VersionGroupDetail value, $Res Function(VersionGroupDetail) _then) = _$VersionGroupDetailCopyWithImpl;
@useResult
$Res call({
 int levelLearnedAt, Species moveLearnMethod, Species versionGroup
});


$SpeciesCopyWith<$Res> get moveLearnMethod;$SpeciesCopyWith<$Res> get versionGroup;

}
/// @nodoc
class _$VersionGroupDetailCopyWithImpl<$Res>
    implements $VersionGroupDetailCopyWith<$Res> {
  _$VersionGroupDetailCopyWithImpl(this._self, this._then);

  final VersionGroupDetail _self;
  final $Res Function(VersionGroupDetail) _then;

/// Create a copy of VersionGroupDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? levelLearnedAt = null,Object? moveLearnMethod = null,Object? versionGroup = null,}) {
  return _then(_self.copyWith(
levelLearnedAt: null == levelLearnedAt ? _self.levelLearnedAt : levelLearnedAt // ignore: cast_nullable_to_non_nullable
as int,moveLearnMethod: null == moveLearnMethod ? _self.moveLearnMethod : moveLearnMethod // ignore: cast_nullable_to_non_nullable
as Species,versionGroup: null == versionGroup ? _self.versionGroup : versionGroup // ignore: cast_nullable_to_non_nullable
as Species,
  ));
}
/// Create a copy of VersionGroupDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get moveLearnMethod {
  
  return $SpeciesCopyWith<$Res>(_self.moveLearnMethod, (value) {
    return _then(_self.copyWith(moveLearnMethod: value));
  });
}/// Create a copy of VersionGroupDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get versionGroup {
  
  return $SpeciesCopyWith<$Res>(_self.versionGroup, (value) {
    return _then(_self.copyWith(versionGroup: value));
  });
}
}


/// Adds pattern-matching-related methods to [VersionGroupDetail].
extension VersionGroupDetailPatterns on VersionGroupDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VersionGroupDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VersionGroupDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VersionGroupDetail value)  $default,){
final _that = this;
switch (_that) {
case _VersionGroupDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VersionGroupDetail value)?  $default,){
final _that = this;
switch (_that) {
case _VersionGroupDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int levelLearnedAt,  Species moveLearnMethod,  Species versionGroup)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VersionGroupDetail() when $default != null:
return $default(_that.levelLearnedAt,_that.moveLearnMethod,_that.versionGroup);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int levelLearnedAt,  Species moveLearnMethod,  Species versionGroup)  $default,) {final _that = this;
switch (_that) {
case _VersionGroupDetail():
return $default(_that.levelLearnedAt,_that.moveLearnMethod,_that.versionGroup);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int levelLearnedAt,  Species moveLearnMethod,  Species versionGroup)?  $default,) {final _that = this;
switch (_that) {
case _VersionGroupDetail() when $default != null:
return $default(_that.levelLearnedAt,_that.moveLearnMethod,_that.versionGroup);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VersionGroupDetail implements VersionGroupDetail {
  const _VersionGroupDetail({required this.levelLearnedAt, required this.moveLearnMethod, required this.versionGroup});
  factory _VersionGroupDetail.fromJson(Map<String, dynamic> json) => _$VersionGroupDetailFromJson(json);

@override final  int levelLearnedAt;
@override final  Species moveLearnMethod;
@override final  Species versionGroup;

/// Create a copy of VersionGroupDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VersionGroupDetailCopyWith<_VersionGroupDetail> get copyWith => __$VersionGroupDetailCopyWithImpl<_VersionGroupDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VersionGroupDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VersionGroupDetail&&(identical(other.levelLearnedAt, levelLearnedAt) || other.levelLearnedAt == levelLearnedAt)&&(identical(other.moveLearnMethod, moveLearnMethod) || other.moveLearnMethod == moveLearnMethod)&&(identical(other.versionGroup, versionGroup) || other.versionGroup == versionGroup));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,levelLearnedAt,moveLearnMethod,versionGroup);

@override
String toString() {
  return 'VersionGroupDetail(levelLearnedAt: $levelLearnedAt, moveLearnMethod: $moveLearnMethod, versionGroup: $versionGroup)';
}


}

/// @nodoc
abstract mixin class _$VersionGroupDetailCopyWith<$Res> implements $VersionGroupDetailCopyWith<$Res> {
  factory _$VersionGroupDetailCopyWith(_VersionGroupDetail value, $Res Function(_VersionGroupDetail) _then) = __$VersionGroupDetailCopyWithImpl;
@override @useResult
$Res call({
 int levelLearnedAt, Species moveLearnMethod, Species versionGroup
});


@override $SpeciesCopyWith<$Res> get moveLearnMethod;@override $SpeciesCopyWith<$Res> get versionGroup;

}
/// @nodoc
class __$VersionGroupDetailCopyWithImpl<$Res>
    implements _$VersionGroupDetailCopyWith<$Res> {
  __$VersionGroupDetailCopyWithImpl(this._self, this._then);

  final _VersionGroupDetail _self;
  final $Res Function(_VersionGroupDetail) _then;

/// Create a copy of VersionGroupDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? levelLearnedAt = null,Object? moveLearnMethod = null,Object? versionGroup = null,}) {
  return _then(_VersionGroupDetail(
levelLearnedAt: null == levelLearnedAt ? _self.levelLearnedAt : levelLearnedAt // ignore: cast_nullable_to_non_nullable
as int,moveLearnMethod: null == moveLearnMethod ? _self.moveLearnMethod : moveLearnMethod // ignore: cast_nullable_to_non_nullable
as Species,versionGroup: null == versionGroup ? _self.versionGroup : versionGroup // ignore: cast_nullable_to_non_nullable
as Species,
  ));
}

/// Create a copy of VersionGroupDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get moveLearnMethod {
  
  return $SpeciesCopyWith<$Res>(_self.moveLearnMethod, (value) {
    return _then(_self.copyWith(moveLearnMethod: value));
  });
}/// Create a copy of VersionGroupDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get versionGroup {
  
  return $SpeciesCopyWith<$Res>(_self.versionGroup, (value) {
    return _then(_self.copyWith(versionGroup: value));
  });
}
}


/// @nodoc
mixin _$GenerationV {

 Sprites get blackWhite;
/// Create a copy of GenerationV
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerationVCopyWith<GenerationV> get copyWith => _$GenerationVCopyWithImpl<GenerationV>(this as GenerationV, _$identity);

  /// Serializes this GenerationV to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerationV&&(identical(other.blackWhite, blackWhite) || other.blackWhite == blackWhite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,blackWhite);

@override
String toString() {
  return 'GenerationV(blackWhite: $blackWhite)';
}


}

/// @nodoc
abstract mixin class $GenerationVCopyWith<$Res>  {
  factory $GenerationVCopyWith(GenerationV value, $Res Function(GenerationV) _then) = _$GenerationVCopyWithImpl;
@useResult
$Res call({
 Sprites blackWhite
});


$SpritesCopyWith<$Res> get blackWhite;

}
/// @nodoc
class _$GenerationVCopyWithImpl<$Res>
    implements $GenerationVCopyWith<$Res> {
  _$GenerationVCopyWithImpl(this._self, this._then);

  final GenerationV _self;
  final $Res Function(GenerationV) _then;

/// Create a copy of GenerationV
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? blackWhite = null,}) {
  return _then(_self.copyWith(
blackWhite: null == blackWhite ? _self.blackWhite : blackWhite // ignore: cast_nullable_to_non_nullable
as Sprites,
  ));
}
/// Create a copy of GenerationV
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesCopyWith<$Res> get blackWhite {
  
  return $SpritesCopyWith<$Res>(_self.blackWhite, (value) {
    return _then(_self.copyWith(blackWhite: value));
  });
}
}


/// Adds pattern-matching-related methods to [GenerationV].
extension GenerationVPatterns on GenerationV {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenerationV value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenerationV() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenerationV value)  $default,){
final _that = this;
switch (_that) {
case _GenerationV():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenerationV value)?  $default,){
final _that = this;
switch (_that) {
case _GenerationV() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Sprites blackWhite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenerationV() when $default != null:
return $default(_that.blackWhite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Sprites blackWhite)  $default,) {final _that = this;
switch (_that) {
case _GenerationV():
return $default(_that.blackWhite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Sprites blackWhite)?  $default,) {final _that = this;
switch (_that) {
case _GenerationV() when $default != null:
return $default(_that.blackWhite);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GenerationV implements GenerationV {
  const _GenerationV({required this.blackWhite});
  factory _GenerationV.fromJson(Map<String, dynamic> json) => _$GenerationVFromJson(json);

@override final  Sprites blackWhite;

/// Create a copy of GenerationV
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenerationVCopyWith<_GenerationV> get copyWith => __$GenerationVCopyWithImpl<_GenerationV>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenerationVToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerationV&&(identical(other.blackWhite, blackWhite) || other.blackWhite == blackWhite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,blackWhite);

@override
String toString() {
  return 'GenerationV(blackWhite: $blackWhite)';
}


}

/// @nodoc
abstract mixin class _$GenerationVCopyWith<$Res> implements $GenerationVCopyWith<$Res> {
  factory _$GenerationVCopyWith(_GenerationV value, $Res Function(_GenerationV) _then) = __$GenerationVCopyWithImpl;
@override @useResult
$Res call({
 Sprites blackWhite
});


@override $SpritesCopyWith<$Res> get blackWhite;

}
/// @nodoc
class __$GenerationVCopyWithImpl<$Res>
    implements _$GenerationVCopyWith<$Res> {
  __$GenerationVCopyWithImpl(this._self, this._then);

  final _GenerationV _self;
  final $Res Function(_GenerationV) _then;

/// Create a copy of GenerationV
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? blackWhite = null,}) {
  return _then(_GenerationV(
blackWhite: null == blackWhite ? _self.blackWhite : blackWhite // ignore: cast_nullable_to_non_nullable
as Sprites,
  ));
}

/// Create a copy of GenerationV
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesCopyWith<$Res> get blackWhite {
  
  return $SpritesCopyWith<$Res>(_self.blackWhite, (value) {
    return _then(_self.copyWith(blackWhite: value));
  });
}
}


/// @nodoc
mixin _$GenerationIv {

 Sprites get diamondPearl; Sprites get heartgoldSoulsilver; Sprites get platinum;
/// Create a copy of GenerationIv
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerationIvCopyWith<GenerationIv> get copyWith => _$GenerationIvCopyWithImpl<GenerationIv>(this as GenerationIv, _$identity);

  /// Serializes this GenerationIv to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerationIv&&(identical(other.diamondPearl, diamondPearl) || other.diamondPearl == diamondPearl)&&(identical(other.heartgoldSoulsilver, heartgoldSoulsilver) || other.heartgoldSoulsilver == heartgoldSoulsilver)&&(identical(other.platinum, platinum) || other.platinum == platinum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,diamondPearl,heartgoldSoulsilver,platinum);

@override
String toString() {
  return 'GenerationIv(diamondPearl: $diamondPearl, heartgoldSoulsilver: $heartgoldSoulsilver, platinum: $platinum)';
}


}

/// @nodoc
abstract mixin class $GenerationIvCopyWith<$Res>  {
  factory $GenerationIvCopyWith(GenerationIv value, $Res Function(GenerationIv) _then) = _$GenerationIvCopyWithImpl;
@useResult
$Res call({
 Sprites diamondPearl, Sprites heartgoldSoulsilver, Sprites platinum
});


$SpritesCopyWith<$Res> get diamondPearl;$SpritesCopyWith<$Res> get heartgoldSoulsilver;$SpritesCopyWith<$Res> get platinum;

}
/// @nodoc
class _$GenerationIvCopyWithImpl<$Res>
    implements $GenerationIvCopyWith<$Res> {
  _$GenerationIvCopyWithImpl(this._self, this._then);

  final GenerationIv _self;
  final $Res Function(GenerationIv) _then;

/// Create a copy of GenerationIv
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? diamondPearl = null,Object? heartgoldSoulsilver = null,Object? platinum = null,}) {
  return _then(_self.copyWith(
diamondPearl: null == diamondPearl ? _self.diamondPearl : diamondPearl // ignore: cast_nullable_to_non_nullable
as Sprites,heartgoldSoulsilver: null == heartgoldSoulsilver ? _self.heartgoldSoulsilver : heartgoldSoulsilver // ignore: cast_nullable_to_non_nullable
as Sprites,platinum: null == platinum ? _self.platinum : platinum // ignore: cast_nullable_to_non_nullable
as Sprites,
  ));
}
/// Create a copy of GenerationIv
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesCopyWith<$Res> get diamondPearl {
  
  return $SpritesCopyWith<$Res>(_self.diamondPearl, (value) {
    return _then(_self.copyWith(diamondPearl: value));
  });
}/// Create a copy of GenerationIv
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesCopyWith<$Res> get heartgoldSoulsilver {
  
  return $SpritesCopyWith<$Res>(_self.heartgoldSoulsilver, (value) {
    return _then(_self.copyWith(heartgoldSoulsilver: value));
  });
}/// Create a copy of GenerationIv
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesCopyWith<$Res> get platinum {
  
  return $SpritesCopyWith<$Res>(_self.platinum, (value) {
    return _then(_self.copyWith(platinum: value));
  });
}
}


/// Adds pattern-matching-related methods to [GenerationIv].
extension GenerationIvPatterns on GenerationIv {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenerationIv value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenerationIv() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenerationIv value)  $default,){
final _that = this;
switch (_that) {
case _GenerationIv():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenerationIv value)?  $default,){
final _that = this;
switch (_that) {
case _GenerationIv() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Sprites diamondPearl,  Sprites heartgoldSoulsilver,  Sprites platinum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenerationIv() when $default != null:
return $default(_that.diamondPearl,_that.heartgoldSoulsilver,_that.platinum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Sprites diamondPearl,  Sprites heartgoldSoulsilver,  Sprites platinum)  $default,) {final _that = this;
switch (_that) {
case _GenerationIv():
return $default(_that.diamondPearl,_that.heartgoldSoulsilver,_that.platinum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Sprites diamondPearl,  Sprites heartgoldSoulsilver,  Sprites platinum)?  $default,) {final _that = this;
switch (_that) {
case _GenerationIv() when $default != null:
return $default(_that.diamondPearl,_that.heartgoldSoulsilver,_that.platinum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GenerationIv implements GenerationIv {
  const _GenerationIv({required this.diamondPearl, required this.heartgoldSoulsilver, required this.platinum});
  factory _GenerationIv.fromJson(Map<String, dynamic> json) => _$GenerationIvFromJson(json);

@override final  Sprites diamondPearl;
@override final  Sprites heartgoldSoulsilver;
@override final  Sprites platinum;

/// Create a copy of GenerationIv
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenerationIvCopyWith<_GenerationIv> get copyWith => __$GenerationIvCopyWithImpl<_GenerationIv>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenerationIvToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerationIv&&(identical(other.diamondPearl, diamondPearl) || other.diamondPearl == diamondPearl)&&(identical(other.heartgoldSoulsilver, heartgoldSoulsilver) || other.heartgoldSoulsilver == heartgoldSoulsilver)&&(identical(other.platinum, platinum) || other.platinum == platinum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,diamondPearl,heartgoldSoulsilver,platinum);

@override
String toString() {
  return 'GenerationIv(diamondPearl: $diamondPearl, heartgoldSoulsilver: $heartgoldSoulsilver, platinum: $platinum)';
}


}

/// @nodoc
abstract mixin class _$GenerationIvCopyWith<$Res> implements $GenerationIvCopyWith<$Res> {
  factory _$GenerationIvCopyWith(_GenerationIv value, $Res Function(_GenerationIv) _then) = __$GenerationIvCopyWithImpl;
@override @useResult
$Res call({
 Sprites diamondPearl, Sprites heartgoldSoulsilver, Sprites platinum
});


@override $SpritesCopyWith<$Res> get diamondPearl;@override $SpritesCopyWith<$Res> get heartgoldSoulsilver;@override $SpritesCopyWith<$Res> get platinum;

}
/// @nodoc
class __$GenerationIvCopyWithImpl<$Res>
    implements _$GenerationIvCopyWith<$Res> {
  __$GenerationIvCopyWithImpl(this._self, this._then);

  final _GenerationIv _self;
  final $Res Function(_GenerationIv) _then;

/// Create a copy of GenerationIv
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? diamondPearl = null,Object? heartgoldSoulsilver = null,Object? platinum = null,}) {
  return _then(_GenerationIv(
diamondPearl: null == diamondPearl ? _self.diamondPearl : diamondPearl // ignore: cast_nullable_to_non_nullable
as Sprites,heartgoldSoulsilver: null == heartgoldSoulsilver ? _self.heartgoldSoulsilver : heartgoldSoulsilver // ignore: cast_nullable_to_non_nullable
as Sprites,platinum: null == platinum ? _self.platinum : platinum // ignore: cast_nullable_to_non_nullable
as Sprites,
  ));
}

/// Create a copy of GenerationIv
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesCopyWith<$Res> get diamondPearl {
  
  return $SpritesCopyWith<$Res>(_self.diamondPearl, (value) {
    return _then(_self.copyWith(diamondPearl: value));
  });
}/// Create a copy of GenerationIv
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesCopyWith<$Res> get heartgoldSoulsilver {
  
  return $SpritesCopyWith<$Res>(_self.heartgoldSoulsilver, (value) {
    return _then(_self.copyWith(heartgoldSoulsilver: value));
  });
}/// Create a copy of GenerationIv
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesCopyWith<$Res> get platinum {
  
  return $SpritesCopyWith<$Res>(_self.platinum, (value) {
    return _then(_self.copyWith(platinum: value));
  });
}
}


/// @nodoc
mixin _$Versions {

 GenerationI? get generationI; GenerationIi? get generationIi; GenerationIii? get generationIii; GenerationIv? get generationIv; GenerationV? get generationV; Map<String, Home>? get generationVi; GenerationVii? get generationVii; GenerationViii? get generationViii;
/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VersionsCopyWith<Versions> get copyWith => _$VersionsCopyWithImpl<Versions>(this as Versions, _$identity);

  /// Serializes this Versions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Versions&&(identical(other.generationI, generationI) || other.generationI == generationI)&&(identical(other.generationIi, generationIi) || other.generationIi == generationIi)&&(identical(other.generationIii, generationIii) || other.generationIii == generationIii)&&(identical(other.generationIv, generationIv) || other.generationIv == generationIv)&&(identical(other.generationV, generationV) || other.generationV == generationV)&&const DeepCollectionEquality().equals(other.generationVi, generationVi)&&(identical(other.generationVii, generationVii) || other.generationVii == generationVii)&&(identical(other.generationViii, generationViii) || other.generationViii == generationViii));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,generationI,generationIi,generationIii,generationIv,generationV,const DeepCollectionEquality().hash(generationVi),generationVii,generationViii);

@override
String toString() {
  return 'Versions(generationI: $generationI, generationIi: $generationIi, generationIii: $generationIii, generationIv: $generationIv, generationV: $generationV, generationVi: $generationVi, generationVii: $generationVii, generationViii: $generationViii)';
}


}

/// @nodoc
abstract mixin class $VersionsCopyWith<$Res>  {
  factory $VersionsCopyWith(Versions value, $Res Function(Versions) _then) = _$VersionsCopyWithImpl;
@useResult
$Res call({
 GenerationI? generationI, GenerationIi? generationIi, GenerationIii? generationIii, GenerationIv? generationIv, GenerationV? generationV, Map<String, Home>? generationVi, GenerationVii? generationVii, GenerationViii? generationViii
});


$GenerationICopyWith<$Res>? get generationI;$GenerationIiCopyWith<$Res>? get generationIi;$GenerationIiiCopyWith<$Res>? get generationIii;$GenerationIvCopyWith<$Res>? get generationIv;$GenerationVCopyWith<$Res>? get generationV;$GenerationViiCopyWith<$Res>? get generationVii;$GenerationViiiCopyWith<$Res>? get generationViii;

}
/// @nodoc
class _$VersionsCopyWithImpl<$Res>
    implements $VersionsCopyWith<$Res> {
  _$VersionsCopyWithImpl(this._self, this._then);

  final Versions _self;
  final $Res Function(Versions) _then;

/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? generationI = freezed,Object? generationIi = freezed,Object? generationIii = freezed,Object? generationIv = freezed,Object? generationV = freezed,Object? generationVi = freezed,Object? generationVii = freezed,Object? generationViii = freezed,}) {
  return _then(_self.copyWith(
generationI: freezed == generationI ? _self.generationI : generationI // ignore: cast_nullable_to_non_nullable
as GenerationI?,generationIi: freezed == generationIi ? _self.generationIi : generationIi // ignore: cast_nullable_to_non_nullable
as GenerationIi?,generationIii: freezed == generationIii ? _self.generationIii : generationIii // ignore: cast_nullable_to_non_nullable
as GenerationIii?,generationIv: freezed == generationIv ? _self.generationIv : generationIv // ignore: cast_nullable_to_non_nullable
as GenerationIv?,generationV: freezed == generationV ? _self.generationV : generationV // ignore: cast_nullable_to_non_nullable
as GenerationV?,generationVi: freezed == generationVi ? _self.generationVi : generationVi // ignore: cast_nullable_to_non_nullable
as Map<String, Home>?,generationVii: freezed == generationVii ? _self.generationVii : generationVii // ignore: cast_nullable_to_non_nullable
as GenerationVii?,generationViii: freezed == generationViii ? _self.generationViii : generationViii // ignore: cast_nullable_to_non_nullable
as GenerationViii?,
  ));
}
/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerationICopyWith<$Res>? get generationI {
    if (_self.generationI == null) {
    return null;
  }

  return $GenerationICopyWith<$Res>(_self.generationI!, (value) {
    return _then(_self.copyWith(generationI: value));
  });
}/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerationIiCopyWith<$Res>? get generationIi {
    if (_self.generationIi == null) {
    return null;
  }

  return $GenerationIiCopyWith<$Res>(_self.generationIi!, (value) {
    return _then(_self.copyWith(generationIi: value));
  });
}/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerationIiiCopyWith<$Res>? get generationIii {
    if (_self.generationIii == null) {
    return null;
  }

  return $GenerationIiiCopyWith<$Res>(_self.generationIii!, (value) {
    return _then(_self.copyWith(generationIii: value));
  });
}/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerationIvCopyWith<$Res>? get generationIv {
    if (_self.generationIv == null) {
    return null;
  }

  return $GenerationIvCopyWith<$Res>(_self.generationIv!, (value) {
    return _then(_self.copyWith(generationIv: value));
  });
}/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerationVCopyWith<$Res>? get generationV {
    if (_self.generationV == null) {
    return null;
  }

  return $GenerationVCopyWith<$Res>(_self.generationV!, (value) {
    return _then(_self.copyWith(generationV: value));
  });
}/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerationViiCopyWith<$Res>? get generationVii {
    if (_self.generationVii == null) {
    return null;
  }

  return $GenerationViiCopyWith<$Res>(_self.generationVii!, (value) {
    return _then(_self.copyWith(generationVii: value));
  });
}/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerationViiiCopyWith<$Res>? get generationViii {
    if (_self.generationViii == null) {
    return null;
  }

  return $GenerationViiiCopyWith<$Res>(_self.generationViii!, (value) {
    return _then(_self.copyWith(generationViii: value));
  });
}
}


/// Adds pattern-matching-related methods to [Versions].
extension VersionsPatterns on Versions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Versions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Versions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Versions value)  $default,){
final _that = this;
switch (_that) {
case _Versions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Versions value)?  $default,){
final _that = this;
switch (_that) {
case _Versions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GenerationI? generationI,  GenerationIi? generationIi,  GenerationIii? generationIii,  GenerationIv? generationIv,  GenerationV? generationV,  Map<String, Home>? generationVi,  GenerationVii? generationVii,  GenerationViii? generationViii)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Versions() when $default != null:
return $default(_that.generationI,_that.generationIi,_that.generationIii,_that.generationIv,_that.generationV,_that.generationVi,_that.generationVii,_that.generationViii);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GenerationI? generationI,  GenerationIi? generationIi,  GenerationIii? generationIii,  GenerationIv? generationIv,  GenerationV? generationV,  Map<String, Home>? generationVi,  GenerationVii? generationVii,  GenerationViii? generationViii)  $default,) {final _that = this;
switch (_that) {
case _Versions():
return $default(_that.generationI,_that.generationIi,_that.generationIii,_that.generationIv,_that.generationV,_that.generationVi,_that.generationVii,_that.generationViii);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GenerationI? generationI,  GenerationIi? generationIi,  GenerationIii? generationIii,  GenerationIv? generationIv,  GenerationV? generationV,  Map<String, Home>? generationVi,  GenerationVii? generationVii,  GenerationViii? generationViii)?  $default,) {final _that = this;
switch (_that) {
case _Versions() when $default != null:
return $default(_that.generationI,_that.generationIi,_that.generationIii,_that.generationIv,_that.generationV,_that.generationVi,_that.generationVii,_that.generationViii);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Versions implements Versions {
  const _Versions({this.generationI, this.generationIi, this.generationIii, this.generationIv, this.generationV, final  Map<String, Home>? generationVi, this.generationVii, this.generationViii}): _generationVi = generationVi;
  factory _Versions.fromJson(Map<String, dynamic> json) => _$VersionsFromJson(json);

@override final  GenerationI? generationI;
@override final  GenerationIi? generationIi;
@override final  GenerationIii? generationIii;
@override final  GenerationIv? generationIv;
@override final  GenerationV? generationV;
 final  Map<String, Home>? _generationVi;
@override Map<String, Home>? get generationVi {
  final value = _generationVi;
  if (value == null) return null;
  if (_generationVi is EqualUnmodifiableMapView) return _generationVi;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  GenerationVii? generationVii;
@override final  GenerationViii? generationViii;

/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VersionsCopyWith<_Versions> get copyWith => __$VersionsCopyWithImpl<_Versions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VersionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Versions&&(identical(other.generationI, generationI) || other.generationI == generationI)&&(identical(other.generationIi, generationIi) || other.generationIi == generationIi)&&(identical(other.generationIii, generationIii) || other.generationIii == generationIii)&&(identical(other.generationIv, generationIv) || other.generationIv == generationIv)&&(identical(other.generationV, generationV) || other.generationV == generationV)&&const DeepCollectionEquality().equals(other._generationVi, _generationVi)&&(identical(other.generationVii, generationVii) || other.generationVii == generationVii)&&(identical(other.generationViii, generationViii) || other.generationViii == generationViii));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,generationI,generationIi,generationIii,generationIv,generationV,const DeepCollectionEquality().hash(_generationVi),generationVii,generationViii);

@override
String toString() {
  return 'Versions(generationI: $generationI, generationIi: $generationIi, generationIii: $generationIii, generationIv: $generationIv, generationV: $generationV, generationVi: $generationVi, generationVii: $generationVii, generationViii: $generationViii)';
}


}

/// @nodoc
abstract mixin class _$VersionsCopyWith<$Res> implements $VersionsCopyWith<$Res> {
  factory _$VersionsCopyWith(_Versions value, $Res Function(_Versions) _then) = __$VersionsCopyWithImpl;
@override @useResult
$Res call({
 GenerationI? generationI, GenerationIi? generationIi, GenerationIii? generationIii, GenerationIv? generationIv, GenerationV? generationV, Map<String, Home>? generationVi, GenerationVii? generationVii, GenerationViii? generationViii
});


@override $GenerationICopyWith<$Res>? get generationI;@override $GenerationIiCopyWith<$Res>? get generationIi;@override $GenerationIiiCopyWith<$Res>? get generationIii;@override $GenerationIvCopyWith<$Res>? get generationIv;@override $GenerationVCopyWith<$Res>? get generationV;@override $GenerationViiCopyWith<$Res>? get generationVii;@override $GenerationViiiCopyWith<$Res>? get generationViii;

}
/// @nodoc
class __$VersionsCopyWithImpl<$Res>
    implements _$VersionsCopyWith<$Res> {
  __$VersionsCopyWithImpl(this._self, this._then);

  final _Versions _self;
  final $Res Function(_Versions) _then;

/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? generationI = freezed,Object? generationIi = freezed,Object? generationIii = freezed,Object? generationIv = freezed,Object? generationV = freezed,Object? generationVi = freezed,Object? generationVii = freezed,Object? generationViii = freezed,}) {
  return _then(_Versions(
generationI: freezed == generationI ? _self.generationI : generationI // ignore: cast_nullable_to_non_nullable
as GenerationI?,generationIi: freezed == generationIi ? _self.generationIi : generationIi // ignore: cast_nullable_to_non_nullable
as GenerationIi?,generationIii: freezed == generationIii ? _self.generationIii : generationIii // ignore: cast_nullable_to_non_nullable
as GenerationIii?,generationIv: freezed == generationIv ? _self.generationIv : generationIv // ignore: cast_nullable_to_non_nullable
as GenerationIv?,generationV: freezed == generationV ? _self.generationV : generationV // ignore: cast_nullable_to_non_nullable
as GenerationV?,generationVi: freezed == generationVi ? _self._generationVi : generationVi // ignore: cast_nullable_to_non_nullable
as Map<String, Home>?,generationVii: freezed == generationVii ? _self.generationVii : generationVii // ignore: cast_nullable_to_non_nullable
as GenerationVii?,generationViii: freezed == generationViii ? _self.generationViii : generationViii // ignore: cast_nullable_to_non_nullable
as GenerationViii?,
  ));
}

/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerationICopyWith<$Res>? get generationI {
    if (_self.generationI == null) {
    return null;
  }

  return $GenerationICopyWith<$Res>(_self.generationI!, (value) {
    return _then(_self.copyWith(generationI: value));
  });
}/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerationIiCopyWith<$Res>? get generationIi {
    if (_self.generationIi == null) {
    return null;
  }

  return $GenerationIiCopyWith<$Res>(_self.generationIi!, (value) {
    return _then(_self.copyWith(generationIi: value));
  });
}/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerationIiiCopyWith<$Res>? get generationIii {
    if (_self.generationIii == null) {
    return null;
  }

  return $GenerationIiiCopyWith<$Res>(_self.generationIii!, (value) {
    return _then(_self.copyWith(generationIii: value));
  });
}/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerationIvCopyWith<$Res>? get generationIv {
    if (_self.generationIv == null) {
    return null;
  }

  return $GenerationIvCopyWith<$Res>(_self.generationIv!, (value) {
    return _then(_self.copyWith(generationIv: value));
  });
}/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerationVCopyWith<$Res>? get generationV {
    if (_self.generationV == null) {
    return null;
  }

  return $GenerationVCopyWith<$Res>(_self.generationV!, (value) {
    return _then(_self.copyWith(generationV: value));
  });
}/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerationViiCopyWith<$Res>? get generationVii {
    if (_self.generationVii == null) {
    return null;
  }

  return $GenerationViiCopyWith<$Res>(_self.generationVii!, (value) {
    return _then(_self.copyWith(generationVii: value));
  });
}/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerationViiiCopyWith<$Res>? get generationViii {
    if (_self.generationViii == null) {
    return null;
  }

  return $GenerationViiiCopyWith<$Res>(_self.generationViii!, (value) {
    return _then(_self.copyWith(generationViii: value));
  });
}
}


/// @nodoc
mixin _$Sprites {

 String? get backDefault; dynamic get backFemale; String? get backShiny; dynamic get backShinyFemale; String? get frontDefault; dynamic get frontFemale; String? get frontShiny; dynamic get frontShinyFemale; Other? get other; Versions? get versions; Sprites? get animated;
/// Create a copy of Sprites
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpritesCopyWith<Sprites> get copyWith => _$SpritesCopyWithImpl<Sprites>(this as Sprites, _$identity);

  /// Serializes this Sprites to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sprites&&(identical(other.backDefault, backDefault) || other.backDefault == backDefault)&&const DeepCollectionEquality().equals(other.backFemale, backFemale)&&(identical(other.backShiny, backShiny) || other.backShiny == backShiny)&&const DeepCollectionEquality().equals(other.backShinyFemale, backShinyFemale)&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&const DeepCollectionEquality().equals(other.frontFemale, frontFemale)&&(identical(other.frontShiny, frontShiny) || other.frontShiny == frontShiny)&&const DeepCollectionEquality().equals(other.frontShinyFemale, frontShinyFemale)&&(identical(other.other, this.other) || other.other == this.other)&&(identical(other.versions, versions) || other.versions == versions)&&(identical(other.animated, animated) || other.animated == animated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backDefault,const DeepCollectionEquality().hash(backFemale),backShiny,const DeepCollectionEquality().hash(backShinyFemale),frontDefault,const DeepCollectionEquality().hash(frontFemale),frontShiny,const DeepCollectionEquality().hash(frontShinyFemale),other,versions,animated);

@override
String toString() {
  return 'Sprites(backDefault: $backDefault, backFemale: $backFemale, backShiny: $backShiny, backShinyFemale: $backShinyFemale, frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale, other: $other, versions: $versions, animated: $animated)';
}


}

/// @nodoc
abstract mixin class $SpritesCopyWith<$Res>  {
  factory $SpritesCopyWith(Sprites value, $Res Function(Sprites) _then) = _$SpritesCopyWithImpl;
@useResult
$Res call({
 String? backDefault, dynamic backFemale, String? backShiny, dynamic backShinyFemale, String? frontDefault, dynamic frontFemale, String? frontShiny, dynamic frontShinyFemale, Other? other, Versions? versions, Sprites? animated
});


$OtherCopyWith<$Res>? get other;$VersionsCopyWith<$Res>? get versions;$SpritesCopyWith<$Res>? get animated;

}
/// @nodoc
class _$SpritesCopyWithImpl<$Res>
    implements $SpritesCopyWith<$Res> {
  _$SpritesCopyWithImpl(this._self, this._then);

  final Sprites _self;
  final $Res Function(Sprites) _then;

/// Create a copy of Sprites
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backDefault = freezed,Object? backFemale = freezed,Object? backShiny = freezed,Object? backShinyFemale = freezed,Object? frontDefault = freezed,Object? frontFemale = freezed,Object? frontShiny = freezed,Object? frontShinyFemale = freezed,Object? other = freezed,Object? versions = freezed,Object? animated = freezed,}) {
  return _then(_self.copyWith(
backDefault: freezed == backDefault ? _self.backDefault : backDefault // ignore: cast_nullable_to_non_nullable
as String?,backFemale: freezed == backFemale ? _self.backFemale : backFemale // ignore: cast_nullable_to_non_nullable
as dynamic,backShiny: freezed == backShiny ? _self.backShiny : backShiny // ignore: cast_nullable_to_non_nullable
as String?,backShinyFemale: freezed == backShinyFemale ? _self.backShinyFemale : backShinyFemale // ignore: cast_nullable_to_non_nullable
as dynamic,frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,frontFemale: freezed == frontFemale ? _self.frontFemale : frontFemale // ignore: cast_nullable_to_non_nullable
as dynamic,frontShiny: freezed == frontShiny ? _self.frontShiny : frontShiny // ignore: cast_nullable_to_non_nullable
as String?,frontShinyFemale: freezed == frontShinyFemale ? _self.frontShinyFemale : frontShinyFemale // ignore: cast_nullable_to_non_nullable
as dynamic,other: freezed == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as Other?,versions: freezed == versions ? _self.versions : versions // ignore: cast_nullable_to_non_nullable
as Versions?,animated: freezed == animated ? _self.animated : animated // ignore: cast_nullable_to_non_nullable
as Sprites?,
  ));
}
/// Create a copy of Sprites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtherCopyWith<$Res>? get other {
    if (_self.other == null) {
    return null;
  }

  return $OtherCopyWith<$Res>(_self.other!, (value) {
    return _then(_self.copyWith(other: value));
  });
}/// Create a copy of Sprites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VersionsCopyWith<$Res>? get versions {
    if (_self.versions == null) {
    return null;
  }

  return $VersionsCopyWith<$Res>(_self.versions!, (value) {
    return _then(_self.copyWith(versions: value));
  });
}/// Create a copy of Sprites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesCopyWith<$Res>? get animated {
    if (_self.animated == null) {
    return null;
  }

  return $SpritesCopyWith<$Res>(_self.animated!, (value) {
    return _then(_self.copyWith(animated: value));
  });
}
}


/// Adds pattern-matching-related methods to [Sprites].
extension SpritesPatterns on Sprites {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sprites value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sprites() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sprites value)  $default,){
final _that = this;
switch (_that) {
case _Sprites():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sprites value)?  $default,){
final _that = this;
switch (_that) {
case _Sprites() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? backDefault,  dynamic backFemale,  String? backShiny,  dynamic backShinyFemale,  String? frontDefault,  dynamic frontFemale,  String? frontShiny,  dynamic frontShinyFemale,  Other? other,  Versions? versions,  Sprites? animated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sprites() when $default != null:
return $default(_that.backDefault,_that.backFemale,_that.backShiny,_that.backShinyFemale,_that.frontDefault,_that.frontFemale,_that.frontShiny,_that.frontShinyFemale,_that.other,_that.versions,_that.animated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? backDefault,  dynamic backFemale,  String? backShiny,  dynamic backShinyFemale,  String? frontDefault,  dynamic frontFemale,  String? frontShiny,  dynamic frontShinyFemale,  Other? other,  Versions? versions,  Sprites? animated)  $default,) {final _that = this;
switch (_that) {
case _Sprites():
return $default(_that.backDefault,_that.backFemale,_that.backShiny,_that.backShinyFemale,_that.frontDefault,_that.frontFemale,_that.frontShiny,_that.frontShinyFemale,_that.other,_that.versions,_that.animated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? backDefault,  dynamic backFemale,  String? backShiny,  dynamic backShinyFemale,  String? frontDefault,  dynamic frontFemale,  String? frontShiny,  dynamic frontShinyFemale,  Other? other,  Versions? versions,  Sprites? animated)?  $default,) {final _that = this;
switch (_that) {
case _Sprites() when $default != null:
return $default(_that.backDefault,_that.backFemale,_that.backShiny,_that.backShinyFemale,_that.frontDefault,_that.frontFemale,_that.frontShiny,_that.frontShinyFemale,_that.other,_that.versions,_that.animated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Sprites implements Sprites {
  const _Sprites({required this.backDefault, required this.backFemale, required this.backShiny, required this.backShinyFemale, required this.frontDefault, required this.frontFemale, required this.frontShiny, required this.frontShinyFemale, required this.other, required this.versions, required this.animated});
  factory _Sprites.fromJson(Map<String, dynamic> json) => _$SpritesFromJson(json);

@override final  String? backDefault;
@override final  dynamic backFemale;
@override final  String? backShiny;
@override final  dynamic backShinyFemale;
@override final  String? frontDefault;
@override final  dynamic frontFemale;
@override final  String? frontShiny;
@override final  dynamic frontShinyFemale;
@override final  Other? other;
@override final  Versions? versions;
@override final  Sprites? animated;

/// Create a copy of Sprites
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpritesCopyWith<_Sprites> get copyWith => __$SpritesCopyWithImpl<_Sprites>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpritesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sprites&&(identical(other.backDefault, backDefault) || other.backDefault == backDefault)&&const DeepCollectionEquality().equals(other.backFemale, backFemale)&&(identical(other.backShiny, backShiny) || other.backShiny == backShiny)&&const DeepCollectionEquality().equals(other.backShinyFemale, backShinyFemale)&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&const DeepCollectionEquality().equals(other.frontFemale, frontFemale)&&(identical(other.frontShiny, frontShiny) || other.frontShiny == frontShiny)&&const DeepCollectionEquality().equals(other.frontShinyFemale, frontShinyFemale)&&(identical(other.other, this.other) || other.other == this.other)&&(identical(other.versions, versions) || other.versions == versions)&&(identical(other.animated, animated) || other.animated == animated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backDefault,const DeepCollectionEquality().hash(backFemale),backShiny,const DeepCollectionEquality().hash(backShinyFemale),frontDefault,const DeepCollectionEquality().hash(frontFemale),frontShiny,const DeepCollectionEquality().hash(frontShinyFemale),other,versions,animated);

@override
String toString() {
  return 'Sprites(backDefault: $backDefault, backFemale: $backFemale, backShiny: $backShiny, backShinyFemale: $backShinyFemale, frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale, other: $other, versions: $versions, animated: $animated)';
}


}

/// @nodoc
abstract mixin class _$SpritesCopyWith<$Res> implements $SpritesCopyWith<$Res> {
  factory _$SpritesCopyWith(_Sprites value, $Res Function(_Sprites) _then) = __$SpritesCopyWithImpl;
@override @useResult
$Res call({
 String? backDefault, dynamic backFemale, String? backShiny, dynamic backShinyFemale, String? frontDefault, dynamic frontFemale, String? frontShiny, dynamic frontShinyFemale, Other? other, Versions? versions, Sprites? animated
});


@override $OtherCopyWith<$Res>? get other;@override $VersionsCopyWith<$Res>? get versions;@override $SpritesCopyWith<$Res>? get animated;

}
/// @nodoc
class __$SpritesCopyWithImpl<$Res>
    implements _$SpritesCopyWith<$Res> {
  __$SpritesCopyWithImpl(this._self, this._then);

  final _Sprites _self;
  final $Res Function(_Sprites) _then;

/// Create a copy of Sprites
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backDefault = freezed,Object? backFemale = freezed,Object? backShiny = freezed,Object? backShinyFemale = freezed,Object? frontDefault = freezed,Object? frontFemale = freezed,Object? frontShiny = freezed,Object? frontShinyFemale = freezed,Object? other = freezed,Object? versions = freezed,Object? animated = freezed,}) {
  return _then(_Sprites(
backDefault: freezed == backDefault ? _self.backDefault : backDefault // ignore: cast_nullable_to_non_nullable
as String?,backFemale: freezed == backFemale ? _self.backFemale : backFemale // ignore: cast_nullable_to_non_nullable
as dynamic,backShiny: freezed == backShiny ? _self.backShiny : backShiny // ignore: cast_nullable_to_non_nullable
as String?,backShinyFemale: freezed == backShinyFemale ? _self.backShinyFemale : backShinyFemale // ignore: cast_nullable_to_non_nullable
as dynamic,frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,frontFemale: freezed == frontFemale ? _self.frontFemale : frontFemale // ignore: cast_nullable_to_non_nullable
as dynamic,frontShiny: freezed == frontShiny ? _self.frontShiny : frontShiny // ignore: cast_nullable_to_non_nullable
as String?,frontShinyFemale: freezed == frontShinyFemale ? _self.frontShinyFemale : frontShinyFemale // ignore: cast_nullable_to_non_nullable
as dynamic,other: freezed == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as Other?,versions: freezed == versions ? _self.versions : versions // ignore: cast_nullable_to_non_nullable
as Versions?,animated: freezed == animated ? _self.animated : animated // ignore: cast_nullable_to_non_nullable
as Sprites?,
  ));
}

/// Create a copy of Sprites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtherCopyWith<$Res>? get other {
    if (_self.other == null) {
    return null;
  }

  return $OtherCopyWith<$Res>(_self.other!, (value) {
    return _then(_self.copyWith(other: value));
  });
}/// Create a copy of Sprites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VersionsCopyWith<$Res>? get versions {
    if (_self.versions == null) {
    return null;
  }

  return $VersionsCopyWith<$Res>(_self.versions!, (value) {
    return _then(_self.copyWith(versions: value));
  });
}/// Create a copy of Sprites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesCopyWith<$Res>? get animated {
    if (_self.animated == null) {
    return null;
  }

  return $SpritesCopyWith<$Res>(_self.animated!, (value) {
    return _then(_self.copyWith(animated: value));
  });
}
}


/// @nodoc
mixin _$GenerationI {

 RedBlue get redBlue; RedBlue get yellow;
/// Create a copy of GenerationI
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerationICopyWith<GenerationI> get copyWith => _$GenerationICopyWithImpl<GenerationI>(this as GenerationI, _$identity);

  /// Serializes this GenerationI to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerationI&&(identical(other.redBlue, redBlue) || other.redBlue == redBlue)&&(identical(other.yellow, yellow) || other.yellow == yellow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,redBlue,yellow);

@override
String toString() {
  return 'GenerationI(redBlue: $redBlue, yellow: $yellow)';
}


}

/// @nodoc
abstract mixin class $GenerationICopyWith<$Res>  {
  factory $GenerationICopyWith(GenerationI value, $Res Function(GenerationI) _then) = _$GenerationICopyWithImpl;
@useResult
$Res call({
 RedBlue redBlue, RedBlue yellow
});


$RedBlueCopyWith<$Res> get redBlue;$RedBlueCopyWith<$Res> get yellow;

}
/// @nodoc
class _$GenerationICopyWithImpl<$Res>
    implements $GenerationICopyWith<$Res> {
  _$GenerationICopyWithImpl(this._self, this._then);

  final GenerationI _self;
  final $Res Function(GenerationI) _then;

/// Create a copy of GenerationI
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? redBlue = null,Object? yellow = null,}) {
  return _then(_self.copyWith(
redBlue: null == redBlue ? _self.redBlue : redBlue // ignore: cast_nullable_to_non_nullable
as RedBlue,yellow: null == yellow ? _self.yellow : yellow // ignore: cast_nullable_to_non_nullable
as RedBlue,
  ));
}
/// Create a copy of GenerationI
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RedBlueCopyWith<$Res> get redBlue {
  
  return $RedBlueCopyWith<$Res>(_self.redBlue, (value) {
    return _then(_self.copyWith(redBlue: value));
  });
}/// Create a copy of GenerationI
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RedBlueCopyWith<$Res> get yellow {
  
  return $RedBlueCopyWith<$Res>(_self.yellow, (value) {
    return _then(_self.copyWith(yellow: value));
  });
}
}


/// Adds pattern-matching-related methods to [GenerationI].
extension GenerationIPatterns on GenerationI {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenerationI value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenerationI() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenerationI value)  $default,){
final _that = this;
switch (_that) {
case _GenerationI():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenerationI value)?  $default,){
final _that = this;
switch (_that) {
case _GenerationI() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RedBlue redBlue,  RedBlue yellow)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenerationI() when $default != null:
return $default(_that.redBlue,_that.yellow);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RedBlue redBlue,  RedBlue yellow)  $default,) {final _that = this;
switch (_that) {
case _GenerationI():
return $default(_that.redBlue,_that.yellow);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RedBlue redBlue,  RedBlue yellow)?  $default,) {final _that = this;
switch (_that) {
case _GenerationI() when $default != null:
return $default(_that.redBlue,_that.yellow);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GenerationI implements GenerationI {
  const _GenerationI({required this.redBlue, required this.yellow});
  factory _GenerationI.fromJson(Map<String, dynamic> json) => _$GenerationIFromJson(json);

@override final  RedBlue redBlue;
@override final  RedBlue yellow;

/// Create a copy of GenerationI
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenerationICopyWith<_GenerationI> get copyWith => __$GenerationICopyWithImpl<_GenerationI>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenerationIToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerationI&&(identical(other.redBlue, redBlue) || other.redBlue == redBlue)&&(identical(other.yellow, yellow) || other.yellow == yellow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,redBlue,yellow);

@override
String toString() {
  return 'GenerationI(redBlue: $redBlue, yellow: $yellow)';
}


}

/// @nodoc
abstract mixin class _$GenerationICopyWith<$Res> implements $GenerationICopyWith<$Res> {
  factory _$GenerationICopyWith(_GenerationI value, $Res Function(_GenerationI) _then) = __$GenerationICopyWithImpl;
@override @useResult
$Res call({
 RedBlue redBlue, RedBlue yellow
});


@override $RedBlueCopyWith<$Res> get redBlue;@override $RedBlueCopyWith<$Res> get yellow;

}
/// @nodoc
class __$GenerationICopyWithImpl<$Res>
    implements _$GenerationICopyWith<$Res> {
  __$GenerationICopyWithImpl(this._self, this._then);

  final _GenerationI _self;
  final $Res Function(_GenerationI) _then;

/// Create a copy of GenerationI
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? redBlue = null,Object? yellow = null,}) {
  return _then(_GenerationI(
redBlue: null == redBlue ? _self.redBlue : redBlue // ignore: cast_nullable_to_non_nullable
as RedBlue,yellow: null == yellow ? _self.yellow : yellow // ignore: cast_nullable_to_non_nullable
as RedBlue,
  ));
}

/// Create a copy of GenerationI
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RedBlueCopyWith<$Res> get redBlue {
  
  return $RedBlueCopyWith<$Res>(_self.redBlue, (value) {
    return _then(_self.copyWith(redBlue: value));
  });
}/// Create a copy of GenerationI
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RedBlueCopyWith<$Res> get yellow {
  
  return $RedBlueCopyWith<$Res>(_self.yellow, (value) {
    return _then(_self.copyWith(yellow: value));
  });
}
}


/// @nodoc
mixin _$RedBlue {

 String get backDefault; String get backGray; String get backTransparent; String get frontDefault; String get frontGray; String get frontTransparent;
/// Create a copy of RedBlue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RedBlueCopyWith<RedBlue> get copyWith => _$RedBlueCopyWithImpl<RedBlue>(this as RedBlue, _$identity);

  /// Serializes this RedBlue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RedBlue&&(identical(other.backDefault, backDefault) || other.backDefault == backDefault)&&(identical(other.backGray, backGray) || other.backGray == backGray)&&(identical(other.backTransparent, backTransparent) || other.backTransparent == backTransparent)&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.frontGray, frontGray) || other.frontGray == frontGray)&&(identical(other.frontTransparent, frontTransparent) || other.frontTransparent == frontTransparent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backDefault,backGray,backTransparent,frontDefault,frontGray,frontTransparent);

@override
String toString() {
  return 'RedBlue(backDefault: $backDefault, backGray: $backGray, backTransparent: $backTransparent, frontDefault: $frontDefault, frontGray: $frontGray, frontTransparent: $frontTransparent)';
}


}

/// @nodoc
abstract mixin class $RedBlueCopyWith<$Res>  {
  factory $RedBlueCopyWith(RedBlue value, $Res Function(RedBlue) _then) = _$RedBlueCopyWithImpl;
@useResult
$Res call({
 String backDefault, String backGray, String backTransparent, String frontDefault, String frontGray, String frontTransparent
});




}
/// @nodoc
class _$RedBlueCopyWithImpl<$Res>
    implements $RedBlueCopyWith<$Res> {
  _$RedBlueCopyWithImpl(this._self, this._then);

  final RedBlue _self;
  final $Res Function(RedBlue) _then;

/// Create a copy of RedBlue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backDefault = null,Object? backGray = null,Object? backTransparent = null,Object? frontDefault = null,Object? frontGray = null,Object? frontTransparent = null,}) {
  return _then(_self.copyWith(
backDefault: null == backDefault ? _self.backDefault : backDefault // ignore: cast_nullable_to_non_nullable
as String,backGray: null == backGray ? _self.backGray : backGray // ignore: cast_nullable_to_non_nullable
as String,backTransparent: null == backTransparent ? _self.backTransparent : backTransparent // ignore: cast_nullable_to_non_nullable
as String,frontDefault: null == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String,frontGray: null == frontGray ? _self.frontGray : frontGray // ignore: cast_nullable_to_non_nullable
as String,frontTransparent: null == frontTransparent ? _self.frontTransparent : frontTransparent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RedBlue].
extension RedBluePatterns on RedBlue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RedBlue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RedBlue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RedBlue value)  $default,){
final _that = this;
switch (_that) {
case _RedBlue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RedBlue value)?  $default,){
final _that = this;
switch (_that) {
case _RedBlue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String backDefault,  String backGray,  String backTransparent,  String frontDefault,  String frontGray,  String frontTransparent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RedBlue() when $default != null:
return $default(_that.backDefault,_that.backGray,_that.backTransparent,_that.frontDefault,_that.frontGray,_that.frontTransparent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String backDefault,  String backGray,  String backTransparent,  String frontDefault,  String frontGray,  String frontTransparent)  $default,) {final _that = this;
switch (_that) {
case _RedBlue():
return $default(_that.backDefault,_that.backGray,_that.backTransparent,_that.frontDefault,_that.frontGray,_that.frontTransparent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String backDefault,  String backGray,  String backTransparent,  String frontDefault,  String frontGray,  String frontTransparent)?  $default,) {final _that = this;
switch (_that) {
case _RedBlue() when $default != null:
return $default(_that.backDefault,_that.backGray,_that.backTransparent,_that.frontDefault,_that.frontGray,_that.frontTransparent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RedBlue implements RedBlue {
  const _RedBlue({required this.backDefault, required this.backGray, required this.backTransparent, required this.frontDefault, required this.frontGray, required this.frontTransparent});
  factory _RedBlue.fromJson(Map<String, dynamic> json) => _$RedBlueFromJson(json);

@override final  String backDefault;
@override final  String backGray;
@override final  String backTransparent;
@override final  String frontDefault;
@override final  String frontGray;
@override final  String frontTransparent;

/// Create a copy of RedBlue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RedBlueCopyWith<_RedBlue> get copyWith => __$RedBlueCopyWithImpl<_RedBlue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RedBlueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedBlue&&(identical(other.backDefault, backDefault) || other.backDefault == backDefault)&&(identical(other.backGray, backGray) || other.backGray == backGray)&&(identical(other.backTransparent, backTransparent) || other.backTransparent == backTransparent)&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.frontGray, frontGray) || other.frontGray == frontGray)&&(identical(other.frontTransparent, frontTransparent) || other.frontTransparent == frontTransparent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backDefault,backGray,backTransparent,frontDefault,frontGray,frontTransparent);

@override
String toString() {
  return 'RedBlue(backDefault: $backDefault, backGray: $backGray, backTransparent: $backTransparent, frontDefault: $frontDefault, frontGray: $frontGray, frontTransparent: $frontTransparent)';
}


}

/// @nodoc
abstract mixin class _$RedBlueCopyWith<$Res> implements $RedBlueCopyWith<$Res> {
  factory _$RedBlueCopyWith(_RedBlue value, $Res Function(_RedBlue) _then) = __$RedBlueCopyWithImpl;
@override @useResult
$Res call({
 String backDefault, String backGray, String backTransparent, String frontDefault, String frontGray, String frontTransparent
});




}
/// @nodoc
class __$RedBlueCopyWithImpl<$Res>
    implements _$RedBlueCopyWith<$Res> {
  __$RedBlueCopyWithImpl(this._self, this._then);

  final _RedBlue _self;
  final $Res Function(_RedBlue) _then;

/// Create a copy of RedBlue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backDefault = null,Object? backGray = null,Object? backTransparent = null,Object? frontDefault = null,Object? frontGray = null,Object? frontTransparent = null,}) {
  return _then(_RedBlue(
backDefault: null == backDefault ? _self.backDefault : backDefault // ignore: cast_nullable_to_non_nullable
as String,backGray: null == backGray ? _self.backGray : backGray // ignore: cast_nullable_to_non_nullable
as String,backTransparent: null == backTransparent ? _self.backTransparent : backTransparent // ignore: cast_nullable_to_non_nullable
as String,frontDefault: null == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String,frontGray: null == frontGray ? _self.frontGray : frontGray // ignore: cast_nullable_to_non_nullable
as String,frontTransparent: null == frontTransparent ? _self.frontTransparent : frontTransparent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$GenerationIi {

 Crystal get crystal; Gold get gold; Gold get silver;
/// Create a copy of GenerationIi
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerationIiCopyWith<GenerationIi> get copyWith => _$GenerationIiCopyWithImpl<GenerationIi>(this as GenerationIi, _$identity);

  /// Serializes this GenerationIi to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerationIi&&(identical(other.crystal, crystal) || other.crystal == crystal)&&(identical(other.gold, gold) || other.gold == gold)&&(identical(other.silver, silver) || other.silver == silver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,crystal,gold,silver);

@override
String toString() {
  return 'GenerationIi(crystal: $crystal, gold: $gold, silver: $silver)';
}


}

/// @nodoc
abstract mixin class $GenerationIiCopyWith<$Res>  {
  factory $GenerationIiCopyWith(GenerationIi value, $Res Function(GenerationIi) _then) = _$GenerationIiCopyWithImpl;
@useResult
$Res call({
 Crystal crystal, Gold gold, Gold silver
});


$CrystalCopyWith<$Res> get crystal;$GoldCopyWith<$Res> get gold;$GoldCopyWith<$Res> get silver;

}
/// @nodoc
class _$GenerationIiCopyWithImpl<$Res>
    implements $GenerationIiCopyWith<$Res> {
  _$GenerationIiCopyWithImpl(this._self, this._then);

  final GenerationIi _self;
  final $Res Function(GenerationIi) _then;

/// Create a copy of GenerationIi
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? crystal = null,Object? gold = null,Object? silver = null,}) {
  return _then(_self.copyWith(
crystal: null == crystal ? _self.crystal : crystal // ignore: cast_nullable_to_non_nullable
as Crystal,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as Gold,silver: null == silver ? _self.silver : silver // ignore: cast_nullable_to_non_nullable
as Gold,
  ));
}
/// Create a copy of GenerationIi
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CrystalCopyWith<$Res> get crystal {
  
  return $CrystalCopyWith<$Res>(_self.crystal, (value) {
    return _then(_self.copyWith(crystal: value));
  });
}/// Create a copy of GenerationIi
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoldCopyWith<$Res> get gold {
  
  return $GoldCopyWith<$Res>(_self.gold, (value) {
    return _then(_self.copyWith(gold: value));
  });
}/// Create a copy of GenerationIi
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoldCopyWith<$Res> get silver {
  
  return $GoldCopyWith<$Res>(_self.silver, (value) {
    return _then(_self.copyWith(silver: value));
  });
}
}


/// Adds pattern-matching-related methods to [GenerationIi].
extension GenerationIiPatterns on GenerationIi {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenerationIi value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenerationIi() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenerationIi value)  $default,){
final _that = this;
switch (_that) {
case _GenerationIi():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenerationIi value)?  $default,){
final _that = this;
switch (_that) {
case _GenerationIi() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Crystal crystal,  Gold gold,  Gold silver)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenerationIi() when $default != null:
return $default(_that.crystal,_that.gold,_that.silver);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Crystal crystal,  Gold gold,  Gold silver)  $default,) {final _that = this;
switch (_that) {
case _GenerationIi():
return $default(_that.crystal,_that.gold,_that.silver);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Crystal crystal,  Gold gold,  Gold silver)?  $default,) {final _that = this;
switch (_that) {
case _GenerationIi() when $default != null:
return $default(_that.crystal,_that.gold,_that.silver);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GenerationIi implements GenerationIi {
  const _GenerationIi({required this.crystal, required this.gold, required this.silver});
  factory _GenerationIi.fromJson(Map<String, dynamic> json) => _$GenerationIiFromJson(json);

@override final  Crystal crystal;
@override final  Gold gold;
@override final  Gold silver;

/// Create a copy of GenerationIi
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenerationIiCopyWith<_GenerationIi> get copyWith => __$GenerationIiCopyWithImpl<_GenerationIi>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenerationIiToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerationIi&&(identical(other.crystal, crystal) || other.crystal == crystal)&&(identical(other.gold, gold) || other.gold == gold)&&(identical(other.silver, silver) || other.silver == silver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,crystal,gold,silver);

@override
String toString() {
  return 'GenerationIi(crystal: $crystal, gold: $gold, silver: $silver)';
}


}

/// @nodoc
abstract mixin class _$GenerationIiCopyWith<$Res> implements $GenerationIiCopyWith<$Res> {
  factory _$GenerationIiCopyWith(_GenerationIi value, $Res Function(_GenerationIi) _then) = __$GenerationIiCopyWithImpl;
@override @useResult
$Res call({
 Crystal crystal, Gold gold, Gold silver
});


@override $CrystalCopyWith<$Res> get crystal;@override $GoldCopyWith<$Res> get gold;@override $GoldCopyWith<$Res> get silver;

}
/// @nodoc
class __$GenerationIiCopyWithImpl<$Res>
    implements _$GenerationIiCopyWith<$Res> {
  __$GenerationIiCopyWithImpl(this._self, this._then);

  final _GenerationIi _self;
  final $Res Function(_GenerationIi) _then;

/// Create a copy of GenerationIi
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? crystal = null,Object? gold = null,Object? silver = null,}) {
  return _then(_GenerationIi(
crystal: null == crystal ? _self.crystal : crystal // ignore: cast_nullable_to_non_nullable
as Crystal,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as Gold,silver: null == silver ? _self.silver : silver // ignore: cast_nullable_to_non_nullable
as Gold,
  ));
}

/// Create a copy of GenerationIi
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CrystalCopyWith<$Res> get crystal {
  
  return $CrystalCopyWith<$Res>(_self.crystal, (value) {
    return _then(_self.copyWith(crystal: value));
  });
}/// Create a copy of GenerationIi
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoldCopyWith<$Res> get gold {
  
  return $GoldCopyWith<$Res>(_self.gold, (value) {
    return _then(_self.copyWith(gold: value));
  });
}/// Create a copy of GenerationIi
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoldCopyWith<$Res> get silver {
  
  return $GoldCopyWith<$Res>(_self.silver, (value) {
    return _then(_self.copyWith(silver: value));
  });
}
}


/// @nodoc
mixin _$Crystal {

 String get backDefault; String get backShiny; String get backShinyTransparent; String get backTransparent; String get frontDefault; String get frontShiny; String get frontShinyTransparent; String get frontTransparent;
/// Create a copy of Crystal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrystalCopyWith<Crystal> get copyWith => _$CrystalCopyWithImpl<Crystal>(this as Crystal, _$identity);

  /// Serializes this Crystal to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Crystal&&(identical(other.backDefault, backDefault) || other.backDefault == backDefault)&&(identical(other.backShiny, backShiny) || other.backShiny == backShiny)&&(identical(other.backShinyTransparent, backShinyTransparent) || other.backShinyTransparent == backShinyTransparent)&&(identical(other.backTransparent, backTransparent) || other.backTransparent == backTransparent)&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.frontShiny, frontShiny) || other.frontShiny == frontShiny)&&(identical(other.frontShinyTransparent, frontShinyTransparent) || other.frontShinyTransparent == frontShinyTransparent)&&(identical(other.frontTransparent, frontTransparent) || other.frontTransparent == frontTransparent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backDefault,backShiny,backShinyTransparent,backTransparent,frontDefault,frontShiny,frontShinyTransparent,frontTransparent);

@override
String toString() {
  return 'Crystal(backDefault: $backDefault, backShiny: $backShiny, backShinyTransparent: $backShinyTransparent, backTransparent: $backTransparent, frontDefault: $frontDefault, frontShiny: $frontShiny, frontShinyTransparent: $frontShinyTransparent, frontTransparent: $frontTransparent)';
}


}

/// @nodoc
abstract mixin class $CrystalCopyWith<$Res>  {
  factory $CrystalCopyWith(Crystal value, $Res Function(Crystal) _then) = _$CrystalCopyWithImpl;
@useResult
$Res call({
 String backDefault, String backShiny, String backShinyTransparent, String backTransparent, String frontDefault, String frontShiny, String frontShinyTransparent, String frontTransparent
});




}
/// @nodoc
class _$CrystalCopyWithImpl<$Res>
    implements $CrystalCopyWith<$Res> {
  _$CrystalCopyWithImpl(this._self, this._then);

  final Crystal _self;
  final $Res Function(Crystal) _then;

/// Create a copy of Crystal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backDefault = null,Object? backShiny = null,Object? backShinyTransparent = null,Object? backTransparent = null,Object? frontDefault = null,Object? frontShiny = null,Object? frontShinyTransparent = null,Object? frontTransparent = null,}) {
  return _then(_self.copyWith(
backDefault: null == backDefault ? _self.backDefault : backDefault // ignore: cast_nullable_to_non_nullable
as String,backShiny: null == backShiny ? _self.backShiny : backShiny // ignore: cast_nullable_to_non_nullable
as String,backShinyTransparent: null == backShinyTransparent ? _self.backShinyTransparent : backShinyTransparent // ignore: cast_nullable_to_non_nullable
as String,backTransparent: null == backTransparent ? _self.backTransparent : backTransparent // ignore: cast_nullable_to_non_nullable
as String,frontDefault: null == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String,frontShiny: null == frontShiny ? _self.frontShiny : frontShiny // ignore: cast_nullable_to_non_nullable
as String,frontShinyTransparent: null == frontShinyTransparent ? _self.frontShinyTransparent : frontShinyTransparent // ignore: cast_nullable_to_non_nullable
as String,frontTransparent: null == frontTransparent ? _self.frontTransparent : frontTransparent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Crystal].
extension CrystalPatterns on Crystal {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Crystal value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Crystal() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Crystal value)  $default,){
final _that = this;
switch (_that) {
case _Crystal():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Crystal value)?  $default,){
final _that = this;
switch (_that) {
case _Crystal() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String backDefault,  String backShiny,  String backShinyTransparent,  String backTransparent,  String frontDefault,  String frontShiny,  String frontShinyTransparent,  String frontTransparent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Crystal() when $default != null:
return $default(_that.backDefault,_that.backShiny,_that.backShinyTransparent,_that.backTransparent,_that.frontDefault,_that.frontShiny,_that.frontShinyTransparent,_that.frontTransparent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String backDefault,  String backShiny,  String backShinyTransparent,  String backTransparent,  String frontDefault,  String frontShiny,  String frontShinyTransparent,  String frontTransparent)  $default,) {final _that = this;
switch (_that) {
case _Crystal():
return $default(_that.backDefault,_that.backShiny,_that.backShinyTransparent,_that.backTransparent,_that.frontDefault,_that.frontShiny,_that.frontShinyTransparent,_that.frontTransparent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String backDefault,  String backShiny,  String backShinyTransparent,  String backTransparent,  String frontDefault,  String frontShiny,  String frontShinyTransparent,  String frontTransparent)?  $default,) {final _that = this;
switch (_that) {
case _Crystal() when $default != null:
return $default(_that.backDefault,_that.backShiny,_that.backShinyTransparent,_that.backTransparent,_that.frontDefault,_that.frontShiny,_that.frontShinyTransparent,_that.frontTransparent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Crystal implements Crystal {
  const _Crystal({required this.backDefault, required this.backShiny, required this.backShinyTransparent, required this.backTransparent, required this.frontDefault, required this.frontShiny, required this.frontShinyTransparent, required this.frontTransparent});
  factory _Crystal.fromJson(Map<String, dynamic> json) => _$CrystalFromJson(json);

@override final  String backDefault;
@override final  String backShiny;
@override final  String backShinyTransparent;
@override final  String backTransparent;
@override final  String frontDefault;
@override final  String frontShiny;
@override final  String frontShinyTransparent;
@override final  String frontTransparent;

/// Create a copy of Crystal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CrystalCopyWith<_Crystal> get copyWith => __$CrystalCopyWithImpl<_Crystal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CrystalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Crystal&&(identical(other.backDefault, backDefault) || other.backDefault == backDefault)&&(identical(other.backShiny, backShiny) || other.backShiny == backShiny)&&(identical(other.backShinyTransparent, backShinyTransparent) || other.backShinyTransparent == backShinyTransparent)&&(identical(other.backTransparent, backTransparent) || other.backTransparent == backTransparent)&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.frontShiny, frontShiny) || other.frontShiny == frontShiny)&&(identical(other.frontShinyTransparent, frontShinyTransparent) || other.frontShinyTransparent == frontShinyTransparent)&&(identical(other.frontTransparent, frontTransparent) || other.frontTransparent == frontTransparent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backDefault,backShiny,backShinyTransparent,backTransparent,frontDefault,frontShiny,frontShinyTransparent,frontTransparent);

@override
String toString() {
  return 'Crystal(backDefault: $backDefault, backShiny: $backShiny, backShinyTransparent: $backShinyTransparent, backTransparent: $backTransparent, frontDefault: $frontDefault, frontShiny: $frontShiny, frontShinyTransparent: $frontShinyTransparent, frontTransparent: $frontTransparent)';
}


}

/// @nodoc
abstract mixin class _$CrystalCopyWith<$Res> implements $CrystalCopyWith<$Res> {
  factory _$CrystalCopyWith(_Crystal value, $Res Function(_Crystal) _then) = __$CrystalCopyWithImpl;
@override @useResult
$Res call({
 String backDefault, String backShiny, String backShinyTransparent, String backTransparent, String frontDefault, String frontShiny, String frontShinyTransparent, String frontTransparent
});




}
/// @nodoc
class __$CrystalCopyWithImpl<$Res>
    implements _$CrystalCopyWith<$Res> {
  __$CrystalCopyWithImpl(this._self, this._then);

  final _Crystal _self;
  final $Res Function(_Crystal) _then;

/// Create a copy of Crystal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backDefault = null,Object? backShiny = null,Object? backShinyTransparent = null,Object? backTransparent = null,Object? frontDefault = null,Object? frontShiny = null,Object? frontShinyTransparent = null,Object? frontTransparent = null,}) {
  return _then(_Crystal(
backDefault: null == backDefault ? _self.backDefault : backDefault // ignore: cast_nullable_to_non_nullable
as String,backShiny: null == backShiny ? _self.backShiny : backShiny // ignore: cast_nullable_to_non_nullable
as String,backShinyTransparent: null == backShinyTransparent ? _self.backShinyTransparent : backShinyTransparent // ignore: cast_nullable_to_non_nullable
as String,backTransparent: null == backTransparent ? _self.backTransparent : backTransparent // ignore: cast_nullable_to_non_nullable
as String,frontDefault: null == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String,frontShiny: null == frontShiny ? _self.frontShiny : frontShiny // ignore: cast_nullable_to_non_nullable
as String,frontShinyTransparent: null == frontShinyTransparent ? _self.frontShinyTransparent : frontShinyTransparent // ignore: cast_nullable_to_non_nullable
as String,frontTransparent: null == frontTransparent ? _self.frontTransparent : frontTransparent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Gold {

 String get backDefault; String get backShiny; String get frontDefault; String get frontShiny; String get frontTransparent;
/// Create a copy of Gold
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoldCopyWith<Gold> get copyWith => _$GoldCopyWithImpl<Gold>(this as Gold, _$identity);

  /// Serializes this Gold to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Gold&&(identical(other.backDefault, backDefault) || other.backDefault == backDefault)&&(identical(other.backShiny, backShiny) || other.backShiny == backShiny)&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.frontShiny, frontShiny) || other.frontShiny == frontShiny)&&(identical(other.frontTransparent, frontTransparent) || other.frontTransparent == frontTransparent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backDefault,backShiny,frontDefault,frontShiny,frontTransparent);

@override
String toString() {
  return 'Gold(backDefault: $backDefault, backShiny: $backShiny, frontDefault: $frontDefault, frontShiny: $frontShiny, frontTransparent: $frontTransparent)';
}


}

/// @nodoc
abstract mixin class $GoldCopyWith<$Res>  {
  factory $GoldCopyWith(Gold value, $Res Function(Gold) _then) = _$GoldCopyWithImpl;
@useResult
$Res call({
 String backDefault, String backShiny, String frontDefault, String frontShiny, String frontTransparent
});




}
/// @nodoc
class _$GoldCopyWithImpl<$Res>
    implements $GoldCopyWith<$Res> {
  _$GoldCopyWithImpl(this._self, this._then);

  final Gold _self;
  final $Res Function(Gold) _then;

/// Create a copy of Gold
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backDefault = null,Object? backShiny = null,Object? frontDefault = null,Object? frontShiny = null,Object? frontTransparent = null,}) {
  return _then(_self.copyWith(
backDefault: null == backDefault ? _self.backDefault : backDefault // ignore: cast_nullable_to_non_nullable
as String,backShiny: null == backShiny ? _self.backShiny : backShiny // ignore: cast_nullable_to_non_nullable
as String,frontDefault: null == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String,frontShiny: null == frontShiny ? _self.frontShiny : frontShiny // ignore: cast_nullable_to_non_nullable
as String,frontTransparent: null == frontTransparent ? _self.frontTransparent : frontTransparent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Gold].
extension GoldPatterns on Gold {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Gold value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Gold() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Gold value)  $default,){
final _that = this;
switch (_that) {
case _Gold():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Gold value)?  $default,){
final _that = this;
switch (_that) {
case _Gold() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String backDefault,  String backShiny,  String frontDefault,  String frontShiny,  String frontTransparent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Gold() when $default != null:
return $default(_that.backDefault,_that.backShiny,_that.frontDefault,_that.frontShiny,_that.frontTransparent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String backDefault,  String backShiny,  String frontDefault,  String frontShiny,  String frontTransparent)  $default,) {final _that = this;
switch (_that) {
case _Gold():
return $default(_that.backDefault,_that.backShiny,_that.frontDefault,_that.frontShiny,_that.frontTransparent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String backDefault,  String backShiny,  String frontDefault,  String frontShiny,  String frontTransparent)?  $default,) {final _that = this;
switch (_that) {
case _Gold() when $default != null:
return $default(_that.backDefault,_that.backShiny,_that.frontDefault,_that.frontShiny,_that.frontTransparent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Gold implements Gold {
  const _Gold({required this.backDefault, required this.backShiny, required this.frontDefault, required this.frontShiny, required this.frontTransparent});
  factory _Gold.fromJson(Map<String, dynamic> json) => _$GoldFromJson(json);

@override final  String backDefault;
@override final  String backShiny;
@override final  String frontDefault;
@override final  String frontShiny;
@override final  String frontTransparent;

/// Create a copy of Gold
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoldCopyWith<_Gold> get copyWith => __$GoldCopyWithImpl<_Gold>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoldToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Gold&&(identical(other.backDefault, backDefault) || other.backDefault == backDefault)&&(identical(other.backShiny, backShiny) || other.backShiny == backShiny)&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.frontShiny, frontShiny) || other.frontShiny == frontShiny)&&(identical(other.frontTransparent, frontTransparent) || other.frontTransparent == frontTransparent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backDefault,backShiny,frontDefault,frontShiny,frontTransparent);

@override
String toString() {
  return 'Gold(backDefault: $backDefault, backShiny: $backShiny, frontDefault: $frontDefault, frontShiny: $frontShiny, frontTransparent: $frontTransparent)';
}


}

/// @nodoc
abstract mixin class _$GoldCopyWith<$Res> implements $GoldCopyWith<$Res> {
  factory _$GoldCopyWith(_Gold value, $Res Function(_Gold) _then) = __$GoldCopyWithImpl;
@override @useResult
$Res call({
 String backDefault, String backShiny, String frontDefault, String frontShiny, String frontTransparent
});




}
/// @nodoc
class __$GoldCopyWithImpl<$Res>
    implements _$GoldCopyWith<$Res> {
  __$GoldCopyWithImpl(this._self, this._then);

  final _Gold _self;
  final $Res Function(_Gold) _then;

/// Create a copy of Gold
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backDefault = null,Object? backShiny = null,Object? frontDefault = null,Object? frontShiny = null,Object? frontTransparent = null,}) {
  return _then(_Gold(
backDefault: null == backDefault ? _self.backDefault : backDefault // ignore: cast_nullable_to_non_nullable
as String,backShiny: null == backShiny ? _self.backShiny : backShiny // ignore: cast_nullable_to_non_nullable
as String,frontDefault: null == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String,frontShiny: null == frontShiny ? _self.frontShiny : frontShiny // ignore: cast_nullable_to_non_nullable
as String,frontTransparent: null == frontTransparent ? _self.frontTransparent : frontTransparent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$GenerationIii {

 Emerald get emerald; Gold get fireredLeafgreen; Gold get rubySapphire;
/// Create a copy of GenerationIii
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerationIiiCopyWith<GenerationIii> get copyWith => _$GenerationIiiCopyWithImpl<GenerationIii>(this as GenerationIii, _$identity);

  /// Serializes this GenerationIii to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerationIii&&(identical(other.emerald, emerald) || other.emerald == emerald)&&(identical(other.fireredLeafgreen, fireredLeafgreen) || other.fireredLeafgreen == fireredLeafgreen)&&(identical(other.rubySapphire, rubySapphire) || other.rubySapphire == rubySapphire));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,emerald,fireredLeafgreen,rubySapphire);

@override
String toString() {
  return 'GenerationIii(emerald: $emerald, fireredLeafgreen: $fireredLeafgreen, rubySapphire: $rubySapphire)';
}


}

/// @nodoc
abstract mixin class $GenerationIiiCopyWith<$Res>  {
  factory $GenerationIiiCopyWith(GenerationIii value, $Res Function(GenerationIii) _then) = _$GenerationIiiCopyWithImpl;
@useResult
$Res call({
 Emerald emerald, Gold fireredLeafgreen, Gold rubySapphire
});


$EmeraldCopyWith<$Res> get emerald;$GoldCopyWith<$Res> get fireredLeafgreen;$GoldCopyWith<$Res> get rubySapphire;

}
/// @nodoc
class _$GenerationIiiCopyWithImpl<$Res>
    implements $GenerationIiiCopyWith<$Res> {
  _$GenerationIiiCopyWithImpl(this._self, this._then);

  final GenerationIii _self;
  final $Res Function(GenerationIii) _then;

/// Create a copy of GenerationIii
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emerald = null,Object? fireredLeafgreen = null,Object? rubySapphire = null,}) {
  return _then(_self.copyWith(
emerald: null == emerald ? _self.emerald : emerald // ignore: cast_nullable_to_non_nullable
as Emerald,fireredLeafgreen: null == fireredLeafgreen ? _self.fireredLeafgreen : fireredLeafgreen // ignore: cast_nullable_to_non_nullable
as Gold,rubySapphire: null == rubySapphire ? _self.rubySapphire : rubySapphire // ignore: cast_nullable_to_non_nullable
as Gold,
  ));
}
/// Create a copy of GenerationIii
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmeraldCopyWith<$Res> get emerald {
  
  return $EmeraldCopyWith<$Res>(_self.emerald, (value) {
    return _then(_self.copyWith(emerald: value));
  });
}/// Create a copy of GenerationIii
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoldCopyWith<$Res> get fireredLeafgreen {
  
  return $GoldCopyWith<$Res>(_self.fireredLeafgreen, (value) {
    return _then(_self.copyWith(fireredLeafgreen: value));
  });
}/// Create a copy of GenerationIii
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoldCopyWith<$Res> get rubySapphire {
  
  return $GoldCopyWith<$Res>(_self.rubySapphire, (value) {
    return _then(_self.copyWith(rubySapphire: value));
  });
}
}


/// Adds pattern-matching-related methods to [GenerationIii].
extension GenerationIiiPatterns on GenerationIii {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenerationIii value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenerationIii() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenerationIii value)  $default,){
final _that = this;
switch (_that) {
case _GenerationIii():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenerationIii value)?  $default,){
final _that = this;
switch (_that) {
case _GenerationIii() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Emerald emerald,  Gold fireredLeafgreen,  Gold rubySapphire)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenerationIii() when $default != null:
return $default(_that.emerald,_that.fireredLeafgreen,_that.rubySapphire);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Emerald emerald,  Gold fireredLeafgreen,  Gold rubySapphire)  $default,) {final _that = this;
switch (_that) {
case _GenerationIii():
return $default(_that.emerald,_that.fireredLeafgreen,_that.rubySapphire);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Emerald emerald,  Gold fireredLeafgreen,  Gold rubySapphire)?  $default,) {final _that = this;
switch (_that) {
case _GenerationIii() when $default != null:
return $default(_that.emerald,_that.fireredLeafgreen,_that.rubySapphire);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GenerationIii implements GenerationIii {
  const _GenerationIii({required this.emerald, required this.fireredLeafgreen, required this.rubySapphire});
  factory _GenerationIii.fromJson(Map<String, dynamic> json) => _$GenerationIiiFromJson(json);

@override final  Emerald emerald;
@override final  Gold fireredLeafgreen;
@override final  Gold rubySapphire;

/// Create a copy of GenerationIii
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenerationIiiCopyWith<_GenerationIii> get copyWith => __$GenerationIiiCopyWithImpl<_GenerationIii>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenerationIiiToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerationIii&&(identical(other.emerald, emerald) || other.emerald == emerald)&&(identical(other.fireredLeafgreen, fireredLeafgreen) || other.fireredLeafgreen == fireredLeafgreen)&&(identical(other.rubySapphire, rubySapphire) || other.rubySapphire == rubySapphire));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,emerald,fireredLeafgreen,rubySapphire);

@override
String toString() {
  return 'GenerationIii(emerald: $emerald, fireredLeafgreen: $fireredLeafgreen, rubySapphire: $rubySapphire)';
}


}

/// @nodoc
abstract mixin class _$GenerationIiiCopyWith<$Res> implements $GenerationIiiCopyWith<$Res> {
  factory _$GenerationIiiCopyWith(_GenerationIii value, $Res Function(_GenerationIii) _then) = __$GenerationIiiCopyWithImpl;
@override @useResult
$Res call({
 Emerald emerald, Gold fireredLeafgreen, Gold rubySapphire
});


@override $EmeraldCopyWith<$Res> get emerald;@override $GoldCopyWith<$Res> get fireredLeafgreen;@override $GoldCopyWith<$Res> get rubySapphire;

}
/// @nodoc
class __$GenerationIiiCopyWithImpl<$Res>
    implements _$GenerationIiiCopyWith<$Res> {
  __$GenerationIiiCopyWithImpl(this._self, this._then);

  final _GenerationIii _self;
  final $Res Function(_GenerationIii) _then;

/// Create a copy of GenerationIii
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emerald = null,Object? fireredLeafgreen = null,Object? rubySapphire = null,}) {
  return _then(_GenerationIii(
emerald: null == emerald ? _self.emerald : emerald // ignore: cast_nullable_to_non_nullable
as Emerald,fireredLeafgreen: null == fireredLeafgreen ? _self.fireredLeafgreen : fireredLeafgreen // ignore: cast_nullable_to_non_nullable
as Gold,rubySapphire: null == rubySapphire ? _self.rubySapphire : rubySapphire // ignore: cast_nullable_to_non_nullable
as Gold,
  ));
}

/// Create a copy of GenerationIii
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmeraldCopyWith<$Res> get emerald {
  
  return $EmeraldCopyWith<$Res>(_self.emerald, (value) {
    return _then(_self.copyWith(emerald: value));
  });
}/// Create a copy of GenerationIii
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoldCopyWith<$Res> get fireredLeafgreen {
  
  return $GoldCopyWith<$Res>(_self.fireredLeafgreen, (value) {
    return _then(_self.copyWith(fireredLeafgreen: value));
  });
}/// Create a copy of GenerationIii
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoldCopyWith<$Res> get rubySapphire {
  
  return $GoldCopyWith<$Res>(_self.rubySapphire, (value) {
    return _then(_self.copyWith(rubySapphire: value));
  });
}
}


/// @nodoc
mixin _$Emerald {

 String? get frontDefault; String get frontShiny;
/// Create a copy of Emerald
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmeraldCopyWith<Emerald> get copyWith => _$EmeraldCopyWithImpl<Emerald>(this as Emerald, _$identity);

  /// Serializes this Emerald to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Emerald&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.frontShiny, frontShiny) || other.frontShiny == frontShiny));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault,frontShiny);

@override
String toString() {
  return 'Emerald(frontDefault: $frontDefault, frontShiny: $frontShiny)';
}


}

/// @nodoc
abstract mixin class $EmeraldCopyWith<$Res>  {
  factory $EmeraldCopyWith(Emerald value, $Res Function(Emerald) _then) = _$EmeraldCopyWithImpl;
@useResult
$Res call({
 String? frontDefault, String frontShiny
});




}
/// @nodoc
class _$EmeraldCopyWithImpl<$Res>
    implements $EmeraldCopyWith<$Res> {
  _$EmeraldCopyWithImpl(this._self, this._then);

  final Emerald _self;
  final $Res Function(Emerald) _then;

/// Create a copy of Emerald
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frontDefault = freezed,Object? frontShiny = null,}) {
  return _then(_self.copyWith(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,frontShiny: null == frontShiny ? _self.frontShiny : frontShiny // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Emerald].
extension EmeraldPatterns on Emerald {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Emerald value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Emerald() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Emerald value)  $default,){
final _that = this;
switch (_that) {
case _Emerald():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Emerald value)?  $default,){
final _that = this;
switch (_that) {
case _Emerald() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? frontDefault,  String frontShiny)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Emerald() when $default != null:
return $default(_that.frontDefault,_that.frontShiny);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? frontDefault,  String frontShiny)  $default,) {final _that = this;
switch (_that) {
case _Emerald():
return $default(_that.frontDefault,_that.frontShiny);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? frontDefault,  String frontShiny)?  $default,) {final _that = this;
switch (_that) {
case _Emerald() when $default != null:
return $default(_that.frontDefault,_that.frontShiny);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Emerald implements Emerald {
  const _Emerald({required this.frontDefault, required this.frontShiny});
  factory _Emerald.fromJson(Map<String, dynamic> json) => _$EmeraldFromJson(json);

@override final  String? frontDefault;
@override final  String frontShiny;

/// Create a copy of Emerald
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmeraldCopyWith<_Emerald> get copyWith => __$EmeraldCopyWithImpl<_Emerald>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmeraldToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Emerald&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.frontShiny, frontShiny) || other.frontShiny == frontShiny));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault,frontShiny);

@override
String toString() {
  return 'Emerald(frontDefault: $frontDefault, frontShiny: $frontShiny)';
}


}

/// @nodoc
abstract mixin class _$EmeraldCopyWith<$Res> implements $EmeraldCopyWith<$Res> {
  factory _$EmeraldCopyWith(_Emerald value, $Res Function(_Emerald) _then) = __$EmeraldCopyWithImpl;
@override @useResult
$Res call({
 String? frontDefault, String frontShiny
});




}
/// @nodoc
class __$EmeraldCopyWithImpl<$Res>
    implements _$EmeraldCopyWith<$Res> {
  __$EmeraldCopyWithImpl(this._self, this._then);

  final _Emerald _self;
  final $Res Function(_Emerald) _then;

/// Create a copy of Emerald
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frontDefault = freezed,Object? frontShiny = null,}) {
  return _then(_Emerald(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,frontShiny: null == frontShiny ? _self.frontShiny : frontShiny // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Home {

 String? get frontDefault; dynamic get frontFemale; String? get frontShiny; dynamic get frontShinyFemale;
/// Create a copy of Home
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeCopyWith<Home> get copyWith => _$HomeCopyWithImpl<Home>(this as Home, _$identity);

  /// Serializes this Home to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Home&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&const DeepCollectionEquality().equals(other.frontFemale, frontFemale)&&(identical(other.frontShiny, frontShiny) || other.frontShiny == frontShiny)&&const DeepCollectionEquality().equals(other.frontShinyFemale, frontShinyFemale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault,const DeepCollectionEquality().hash(frontFemale),frontShiny,const DeepCollectionEquality().hash(frontShinyFemale));

@override
String toString() {
  return 'Home(frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
}


}

/// @nodoc
abstract mixin class $HomeCopyWith<$Res>  {
  factory $HomeCopyWith(Home value, $Res Function(Home) _then) = _$HomeCopyWithImpl;
@useResult
$Res call({
 String? frontDefault, dynamic frontFemale, String? frontShiny, dynamic frontShinyFemale
});




}
/// @nodoc
class _$HomeCopyWithImpl<$Res>
    implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._self, this._then);

  final Home _self;
  final $Res Function(Home) _then;

/// Create a copy of Home
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frontDefault = freezed,Object? frontFemale = freezed,Object? frontShiny = freezed,Object? frontShinyFemale = freezed,}) {
  return _then(_self.copyWith(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,frontFemale: freezed == frontFemale ? _self.frontFemale : frontFemale // ignore: cast_nullable_to_non_nullable
as dynamic,frontShiny: freezed == frontShiny ? _self.frontShiny : frontShiny // ignore: cast_nullable_to_non_nullable
as String?,frontShinyFemale: freezed == frontShinyFemale ? _self.frontShinyFemale : frontShinyFemale // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [Home].
extension HomePatterns on Home {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Home value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Home() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Home value)  $default,){
final _that = this;
switch (_that) {
case _Home():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Home value)?  $default,){
final _that = this;
switch (_that) {
case _Home() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? frontDefault,  dynamic frontFemale,  String? frontShiny,  dynamic frontShinyFemale)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Home() when $default != null:
return $default(_that.frontDefault,_that.frontFemale,_that.frontShiny,_that.frontShinyFemale);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? frontDefault,  dynamic frontFemale,  String? frontShiny,  dynamic frontShinyFemale)  $default,) {final _that = this;
switch (_that) {
case _Home():
return $default(_that.frontDefault,_that.frontFemale,_that.frontShiny,_that.frontShinyFemale);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? frontDefault,  dynamic frontFemale,  String? frontShiny,  dynamic frontShinyFemale)?  $default,) {final _that = this;
switch (_that) {
case _Home() when $default != null:
return $default(_that.frontDefault,_that.frontFemale,_that.frontShiny,_that.frontShinyFemale);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Home implements Home {
  const _Home({required this.frontDefault, required this.frontFemale, required this.frontShiny, required this.frontShinyFemale});
  factory _Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);

@override final  String? frontDefault;
@override final  dynamic frontFemale;
@override final  String? frontShiny;
@override final  dynamic frontShinyFemale;

/// Create a copy of Home
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeCopyWith<_Home> get copyWith => __$HomeCopyWithImpl<_Home>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Home&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&const DeepCollectionEquality().equals(other.frontFemale, frontFemale)&&(identical(other.frontShiny, frontShiny) || other.frontShiny == frontShiny)&&const DeepCollectionEquality().equals(other.frontShinyFemale, frontShinyFemale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault,const DeepCollectionEquality().hash(frontFemale),frontShiny,const DeepCollectionEquality().hash(frontShinyFemale));

@override
String toString() {
  return 'Home(frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
}


}

/// @nodoc
abstract mixin class _$HomeCopyWith<$Res> implements $HomeCopyWith<$Res> {
  factory _$HomeCopyWith(_Home value, $Res Function(_Home) _then) = __$HomeCopyWithImpl;
@override @useResult
$Res call({
 String? frontDefault, dynamic frontFemale, String? frontShiny, dynamic frontShinyFemale
});




}
/// @nodoc
class __$HomeCopyWithImpl<$Res>
    implements _$HomeCopyWith<$Res> {
  __$HomeCopyWithImpl(this._self, this._then);

  final _Home _self;
  final $Res Function(_Home) _then;

/// Create a copy of Home
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frontDefault = freezed,Object? frontFemale = freezed,Object? frontShiny = freezed,Object? frontShinyFemale = freezed,}) {
  return _then(_Home(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,frontFemale: freezed == frontFemale ? _self.frontFemale : frontFemale // ignore: cast_nullable_to_non_nullable
as dynamic,frontShiny: freezed == frontShiny ? _self.frontShiny : frontShiny // ignore: cast_nullable_to_non_nullable
as String?,frontShinyFemale: freezed == frontShinyFemale ? _self.frontShinyFemale : frontShinyFemale // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$GenerationVii {

 DreamWorld? get icons; Home get ultraSunUltraMoon;
/// Create a copy of GenerationVii
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerationViiCopyWith<GenerationVii> get copyWith => _$GenerationViiCopyWithImpl<GenerationVii>(this as GenerationVii, _$identity);

  /// Serializes this GenerationVii to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerationVii&&(identical(other.icons, icons) || other.icons == icons)&&(identical(other.ultraSunUltraMoon, ultraSunUltraMoon) || other.ultraSunUltraMoon == ultraSunUltraMoon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,icons,ultraSunUltraMoon);

@override
String toString() {
  return 'GenerationVii(icons: $icons, ultraSunUltraMoon: $ultraSunUltraMoon)';
}


}

/// @nodoc
abstract mixin class $GenerationViiCopyWith<$Res>  {
  factory $GenerationViiCopyWith(GenerationVii value, $Res Function(GenerationVii) _then) = _$GenerationViiCopyWithImpl;
@useResult
$Res call({
 DreamWorld? icons, Home ultraSunUltraMoon
});


$DreamWorldCopyWith<$Res>? get icons;$HomeCopyWith<$Res> get ultraSunUltraMoon;

}
/// @nodoc
class _$GenerationViiCopyWithImpl<$Res>
    implements $GenerationViiCopyWith<$Res> {
  _$GenerationViiCopyWithImpl(this._self, this._then);

  final GenerationVii _self;
  final $Res Function(GenerationVii) _then;

/// Create a copy of GenerationVii
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? icons = freezed,Object? ultraSunUltraMoon = null,}) {
  return _then(_self.copyWith(
icons: freezed == icons ? _self.icons : icons // ignore: cast_nullable_to_non_nullable
as DreamWorld?,ultraSunUltraMoon: null == ultraSunUltraMoon ? _self.ultraSunUltraMoon : ultraSunUltraMoon // ignore: cast_nullable_to_non_nullable
as Home,
  ));
}
/// Create a copy of GenerationVii
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DreamWorldCopyWith<$Res>? get icons {
    if (_self.icons == null) {
    return null;
  }

  return $DreamWorldCopyWith<$Res>(_self.icons!, (value) {
    return _then(_self.copyWith(icons: value));
  });
}/// Create a copy of GenerationVii
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeCopyWith<$Res> get ultraSunUltraMoon {
  
  return $HomeCopyWith<$Res>(_self.ultraSunUltraMoon, (value) {
    return _then(_self.copyWith(ultraSunUltraMoon: value));
  });
}
}


/// Adds pattern-matching-related methods to [GenerationVii].
extension GenerationViiPatterns on GenerationVii {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenerationVii value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenerationVii() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenerationVii value)  $default,){
final _that = this;
switch (_that) {
case _GenerationVii():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenerationVii value)?  $default,){
final _that = this;
switch (_that) {
case _GenerationVii() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DreamWorld? icons,  Home ultraSunUltraMoon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenerationVii() when $default != null:
return $default(_that.icons,_that.ultraSunUltraMoon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DreamWorld? icons,  Home ultraSunUltraMoon)  $default,) {final _that = this;
switch (_that) {
case _GenerationVii():
return $default(_that.icons,_that.ultraSunUltraMoon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DreamWorld? icons,  Home ultraSunUltraMoon)?  $default,) {final _that = this;
switch (_that) {
case _GenerationVii() when $default != null:
return $default(_that.icons,_that.ultraSunUltraMoon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GenerationVii implements GenerationVii {
  const _GenerationVii({required this.icons, required this.ultraSunUltraMoon});
  factory _GenerationVii.fromJson(Map<String, dynamic> json) => _$GenerationViiFromJson(json);

@override final  DreamWorld? icons;
@override final  Home ultraSunUltraMoon;

/// Create a copy of GenerationVii
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenerationViiCopyWith<_GenerationVii> get copyWith => __$GenerationViiCopyWithImpl<_GenerationVii>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenerationViiToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerationVii&&(identical(other.icons, icons) || other.icons == icons)&&(identical(other.ultraSunUltraMoon, ultraSunUltraMoon) || other.ultraSunUltraMoon == ultraSunUltraMoon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,icons,ultraSunUltraMoon);

@override
String toString() {
  return 'GenerationVii(icons: $icons, ultraSunUltraMoon: $ultraSunUltraMoon)';
}


}

/// @nodoc
abstract mixin class _$GenerationViiCopyWith<$Res> implements $GenerationViiCopyWith<$Res> {
  factory _$GenerationViiCopyWith(_GenerationVii value, $Res Function(_GenerationVii) _then) = __$GenerationViiCopyWithImpl;
@override @useResult
$Res call({
 DreamWorld? icons, Home ultraSunUltraMoon
});


@override $DreamWorldCopyWith<$Res>? get icons;@override $HomeCopyWith<$Res> get ultraSunUltraMoon;

}
/// @nodoc
class __$GenerationViiCopyWithImpl<$Res>
    implements _$GenerationViiCopyWith<$Res> {
  __$GenerationViiCopyWithImpl(this._self, this._then);

  final _GenerationVii _self;
  final $Res Function(_GenerationVii) _then;

/// Create a copy of GenerationVii
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? icons = freezed,Object? ultraSunUltraMoon = null,}) {
  return _then(_GenerationVii(
icons: freezed == icons ? _self.icons : icons // ignore: cast_nullable_to_non_nullable
as DreamWorld?,ultraSunUltraMoon: null == ultraSunUltraMoon ? _self.ultraSunUltraMoon : ultraSunUltraMoon // ignore: cast_nullable_to_non_nullable
as Home,
  ));
}

/// Create a copy of GenerationVii
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DreamWorldCopyWith<$Res>? get icons {
    if (_self.icons == null) {
    return null;
  }

  return $DreamWorldCopyWith<$Res>(_self.icons!, (value) {
    return _then(_self.copyWith(icons: value));
  });
}/// Create a copy of GenerationVii
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeCopyWith<$Res> get ultraSunUltraMoon {
  
  return $HomeCopyWith<$Res>(_self.ultraSunUltraMoon, (value) {
    return _then(_self.copyWith(ultraSunUltraMoon: value));
  });
}
}


/// @nodoc
mixin _$DreamWorld {

 String get frontDefault; dynamic get frontFemale;
/// Create a copy of DreamWorld
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DreamWorldCopyWith<DreamWorld> get copyWith => _$DreamWorldCopyWithImpl<DreamWorld>(this as DreamWorld, _$identity);

  /// Serializes this DreamWorld to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DreamWorld&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&const DeepCollectionEquality().equals(other.frontFemale, frontFemale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault,const DeepCollectionEquality().hash(frontFemale));

@override
String toString() {
  return 'DreamWorld(frontDefault: $frontDefault, frontFemale: $frontFemale)';
}


}

/// @nodoc
abstract mixin class $DreamWorldCopyWith<$Res>  {
  factory $DreamWorldCopyWith(DreamWorld value, $Res Function(DreamWorld) _then) = _$DreamWorldCopyWithImpl;
@useResult
$Res call({
 String frontDefault, dynamic frontFemale
});




}
/// @nodoc
class _$DreamWorldCopyWithImpl<$Res>
    implements $DreamWorldCopyWith<$Res> {
  _$DreamWorldCopyWithImpl(this._self, this._then);

  final DreamWorld _self;
  final $Res Function(DreamWorld) _then;

/// Create a copy of DreamWorld
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frontDefault = null,Object? frontFemale = freezed,}) {
  return _then(_self.copyWith(
frontDefault: null == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String,frontFemale: freezed == frontFemale ? _self.frontFemale : frontFemale // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [DreamWorld].
extension DreamWorldPatterns on DreamWorld {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DreamWorld value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DreamWorld() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DreamWorld value)  $default,){
final _that = this;
switch (_that) {
case _DreamWorld():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DreamWorld value)?  $default,){
final _that = this;
switch (_that) {
case _DreamWorld() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String frontDefault,  dynamic frontFemale)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DreamWorld() when $default != null:
return $default(_that.frontDefault,_that.frontFemale);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String frontDefault,  dynamic frontFemale)  $default,) {final _that = this;
switch (_that) {
case _DreamWorld():
return $default(_that.frontDefault,_that.frontFemale);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String frontDefault,  dynamic frontFemale)?  $default,) {final _that = this;
switch (_that) {
case _DreamWorld() when $default != null:
return $default(_that.frontDefault,_that.frontFemale);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DreamWorld implements DreamWorld {
  const _DreamWorld({required this.frontDefault, required this.frontFemale});
  factory _DreamWorld.fromJson(Map<String, dynamic> json) => _$DreamWorldFromJson(json);

@override final  String frontDefault;
@override final  dynamic frontFemale;

/// Create a copy of DreamWorld
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DreamWorldCopyWith<_DreamWorld> get copyWith => __$DreamWorldCopyWithImpl<_DreamWorld>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DreamWorldToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DreamWorld&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&const DeepCollectionEquality().equals(other.frontFemale, frontFemale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault,const DeepCollectionEquality().hash(frontFemale));

@override
String toString() {
  return 'DreamWorld(frontDefault: $frontDefault, frontFemale: $frontFemale)';
}


}

/// @nodoc
abstract mixin class _$DreamWorldCopyWith<$Res> implements $DreamWorldCopyWith<$Res> {
  factory _$DreamWorldCopyWith(_DreamWorld value, $Res Function(_DreamWorld) _then) = __$DreamWorldCopyWithImpl;
@override @useResult
$Res call({
 String frontDefault, dynamic frontFemale
});




}
/// @nodoc
class __$DreamWorldCopyWithImpl<$Res>
    implements _$DreamWorldCopyWith<$Res> {
  __$DreamWorldCopyWithImpl(this._self, this._then);

  final _DreamWorld _self;
  final $Res Function(_DreamWorld) _then;

/// Create a copy of DreamWorld
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frontDefault = null,Object? frontFemale = freezed,}) {
  return _then(_DreamWorld(
frontDefault: null == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String,frontFemale: freezed == frontFemale ? _self.frontFemale : frontFemale // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$GenerationViii {

 DreamWorld? get icons;
/// Create a copy of GenerationViii
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerationViiiCopyWith<GenerationViii> get copyWith => _$GenerationViiiCopyWithImpl<GenerationViii>(this as GenerationViii, _$identity);

  /// Serializes this GenerationViii to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerationViii&&(identical(other.icons, icons) || other.icons == icons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,icons);

@override
String toString() {
  return 'GenerationViii(icons: $icons)';
}


}

/// @nodoc
abstract mixin class $GenerationViiiCopyWith<$Res>  {
  factory $GenerationViiiCopyWith(GenerationViii value, $Res Function(GenerationViii) _then) = _$GenerationViiiCopyWithImpl;
@useResult
$Res call({
 DreamWorld? icons
});


$DreamWorldCopyWith<$Res>? get icons;

}
/// @nodoc
class _$GenerationViiiCopyWithImpl<$Res>
    implements $GenerationViiiCopyWith<$Res> {
  _$GenerationViiiCopyWithImpl(this._self, this._then);

  final GenerationViii _self;
  final $Res Function(GenerationViii) _then;

/// Create a copy of GenerationViii
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? icons = freezed,}) {
  return _then(_self.copyWith(
icons: freezed == icons ? _self.icons : icons // ignore: cast_nullable_to_non_nullable
as DreamWorld?,
  ));
}
/// Create a copy of GenerationViii
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DreamWorldCopyWith<$Res>? get icons {
    if (_self.icons == null) {
    return null;
  }

  return $DreamWorldCopyWith<$Res>(_self.icons!, (value) {
    return _then(_self.copyWith(icons: value));
  });
}
}


/// Adds pattern-matching-related methods to [GenerationViii].
extension GenerationViiiPatterns on GenerationViii {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenerationViii value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenerationViii() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenerationViii value)  $default,){
final _that = this;
switch (_that) {
case _GenerationViii():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenerationViii value)?  $default,){
final _that = this;
switch (_that) {
case _GenerationViii() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DreamWorld? icons)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenerationViii() when $default != null:
return $default(_that.icons);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DreamWorld? icons)  $default,) {final _that = this;
switch (_that) {
case _GenerationViii():
return $default(_that.icons);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DreamWorld? icons)?  $default,) {final _that = this;
switch (_that) {
case _GenerationViii() when $default != null:
return $default(_that.icons);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GenerationViii implements GenerationViii {
  const _GenerationViii({required this.icons});
  factory _GenerationViii.fromJson(Map<String, dynamic> json) => _$GenerationViiiFromJson(json);

@override final  DreamWorld? icons;

/// Create a copy of GenerationViii
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenerationViiiCopyWith<_GenerationViii> get copyWith => __$GenerationViiiCopyWithImpl<_GenerationViii>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenerationViiiToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerationViii&&(identical(other.icons, icons) || other.icons == icons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,icons);

@override
String toString() {
  return 'GenerationViii(icons: $icons)';
}


}

/// @nodoc
abstract mixin class _$GenerationViiiCopyWith<$Res> implements $GenerationViiiCopyWith<$Res> {
  factory _$GenerationViiiCopyWith(_GenerationViii value, $Res Function(_GenerationViii) _then) = __$GenerationViiiCopyWithImpl;
@override @useResult
$Res call({
 DreamWorld? icons
});


@override $DreamWorldCopyWith<$Res>? get icons;

}
/// @nodoc
class __$GenerationViiiCopyWithImpl<$Res>
    implements _$GenerationViiiCopyWith<$Res> {
  __$GenerationViiiCopyWithImpl(this._self, this._then);

  final _GenerationViii _self;
  final $Res Function(_GenerationViii) _then;

/// Create a copy of GenerationViii
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? icons = freezed,}) {
  return _then(_GenerationViii(
icons: freezed == icons ? _self.icons : icons // ignore: cast_nullable_to_non_nullable
as DreamWorld?,
  ));
}

/// Create a copy of GenerationViii
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DreamWorldCopyWith<$Res>? get icons {
    if (_self.icons == null) {
    return null;
  }

  return $DreamWorldCopyWith<$Res>(_self.icons!, (value) {
    return _then(_self.copyWith(icons: value));
  });
}
}


/// @nodoc
mixin _$Other {

 DreamWorld? get dreamWorld; Home? get home; OfficialArtwork? get officialArtwork;
/// Create a copy of Other
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtherCopyWith<Other> get copyWith => _$OtherCopyWithImpl<Other>(this as Other, _$identity);

  /// Serializes this Other to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Other&&(identical(other.dreamWorld, dreamWorld) || other.dreamWorld == dreamWorld)&&(identical(other.home, home) || other.home == home)&&(identical(other.officialArtwork, officialArtwork) || other.officialArtwork == officialArtwork));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dreamWorld,home,officialArtwork);

@override
String toString() {
  return 'Other(dreamWorld: $dreamWorld, home: $home, officialArtwork: $officialArtwork)';
}


}

/// @nodoc
abstract mixin class $OtherCopyWith<$Res>  {
  factory $OtherCopyWith(Other value, $Res Function(Other) _then) = _$OtherCopyWithImpl;
@useResult
$Res call({
 DreamWorld? dreamWorld, Home? home, OfficialArtwork? officialArtwork
});


$DreamWorldCopyWith<$Res>? get dreamWorld;$HomeCopyWith<$Res>? get home;$OfficialArtworkCopyWith<$Res>? get officialArtwork;

}
/// @nodoc
class _$OtherCopyWithImpl<$Res>
    implements $OtherCopyWith<$Res> {
  _$OtherCopyWithImpl(this._self, this._then);

  final Other _self;
  final $Res Function(Other) _then;

/// Create a copy of Other
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dreamWorld = freezed,Object? home = freezed,Object? officialArtwork = freezed,}) {
  return _then(_self.copyWith(
dreamWorld: freezed == dreamWorld ? _self.dreamWorld : dreamWorld // ignore: cast_nullable_to_non_nullable
as DreamWorld?,home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as Home?,officialArtwork: freezed == officialArtwork ? _self.officialArtwork : officialArtwork // ignore: cast_nullable_to_non_nullable
as OfficialArtwork?,
  ));
}
/// Create a copy of Other
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DreamWorldCopyWith<$Res>? get dreamWorld {
    if (_self.dreamWorld == null) {
    return null;
  }

  return $DreamWorldCopyWith<$Res>(_self.dreamWorld!, (value) {
    return _then(_self.copyWith(dreamWorld: value));
  });
}/// Create a copy of Other
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeCopyWith<$Res>? get home {
    if (_self.home == null) {
    return null;
  }

  return $HomeCopyWith<$Res>(_self.home!, (value) {
    return _then(_self.copyWith(home: value));
  });
}/// Create a copy of Other
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfficialArtworkCopyWith<$Res>? get officialArtwork {
    if (_self.officialArtwork == null) {
    return null;
  }

  return $OfficialArtworkCopyWith<$Res>(_self.officialArtwork!, (value) {
    return _then(_self.copyWith(officialArtwork: value));
  });
}
}


/// Adds pattern-matching-related methods to [Other].
extension OtherPatterns on Other {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Other value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Other() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Other value)  $default,){
final _that = this;
switch (_that) {
case _Other():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Other value)?  $default,){
final _that = this;
switch (_that) {
case _Other() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DreamWorld? dreamWorld,  Home? home,  OfficialArtwork? officialArtwork)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Other() when $default != null:
return $default(_that.dreamWorld,_that.home,_that.officialArtwork);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DreamWorld? dreamWorld,  Home? home,  OfficialArtwork? officialArtwork)  $default,) {final _that = this;
switch (_that) {
case _Other():
return $default(_that.dreamWorld,_that.home,_that.officialArtwork);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DreamWorld? dreamWorld,  Home? home,  OfficialArtwork? officialArtwork)?  $default,) {final _that = this;
switch (_that) {
case _Other() when $default != null:
return $default(_that.dreamWorld,_that.home,_that.officialArtwork);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Other implements Other {
  const _Other({this.dreamWorld, this.home, this.officialArtwork});
  factory _Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);

@override final  DreamWorld? dreamWorld;
@override final  Home? home;
@override final  OfficialArtwork? officialArtwork;

/// Create a copy of Other
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtherCopyWith<_Other> get copyWith => __$OtherCopyWithImpl<_Other>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtherToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Other&&(identical(other.dreamWorld, dreamWorld) || other.dreamWorld == dreamWorld)&&(identical(other.home, home) || other.home == home)&&(identical(other.officialArtwork, officialArtwork) || other.officialArtwork == officialArtwork));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dreamWorld,home,officialArtwork);

@override
String toString() {
  return 'Other(dreamWorld: $dreamWorld, home: $home, officialArtwork: $officialArtwork)';
}


}

/// @nodoc
abstract mixin class _$OtherCopyWith<$Res> implements $OtherCopyWith<$Res> {
  factory _$OtherCopyWith(_Other value, $Res Function(_Other) _then) = __$OtherCopyWithImpl;
@override @useResult
$Res call({
 DreamWorld? dreamWorld, Home? home, OfficialArtwork? officialArtwork
});


@override $DreamWorldCopyWith<$Res>? get dreamWorld;@override $HomeCopyWith<$Res>? get home;@override $OfficialArtworkCopyWith<$Res>? get officialArtwork;

}
/// @nodoc
class __$OtherCopyWithImpl<$Res>
    implements _$OtherCopyWith<$Res> {
  __$OtherCopyWithImpl(this._self, this._then);

  final _Other _self;
  final $Res Function(_Other) _then;

/// Create a copy of Other
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dreamWorld = freezed,Object? home = freezed,Object? officialArtwork = freezed,}) {
  return _then(_Other(
dreamWorld: freezed == dreamWorld ? _self.dreamWorld : dreamWorld // ignore: cast_nullable_to_non_nullable
as DreamWorld?,home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as Home?,officialArtwork: freezed == officialArtwork ? _self.officialArtwork : officialArtwork // ignore: cast_nullable_to_non_nullable
as OfficialArtwork?,
  ));
}

/// Create a copy of Other
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DreamWorldCopyWith<$Res>? get dreamWorld {
    if (_self.dreamWorld == null) {
    return null;
  }

  return $DreamWorldCopyWith<$Res>(_self.dreamWorld!, (value) {
    return _then(_self.copyWith(dreamWorld: value));
  });
}/// Create a copy of Other
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeCopyWith<$Res>? get home {
    if (_self.home == null) {
    return null;
  }

  return $HomeCopyWith<$Res>(_self.home!, (value) {
    return _then(_self.copyWith(home: value));
  });
}/// Create a copy of Other
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfficialArtworkCopyWith<$Res>? get officialArtwork {
    if (_self.officialArtwork == null) {
    return null;
  }

  return $OfficialArtworkCopyWith<$Res>(_self.officialArtwork!, (value) {
    return _then(_self.copyWith(officialArtwork: value));
  });
}
}


/// @nodoc
mixin _$OfficialArtwork {

 String? get frontDefault;
/// Create a copy of OfficialArtwork
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfficialArtworkCopyWith<OfficialArtwork> get copyWith => _$OfficialArtworkCopyWithImpl<OfficialArtwork>(this as OfficialArtwork, _$identity);

  /// Serializes this OfficialArtwork to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfficialArtwork&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault);

@override
String toString() {
  return 'OfficialArtwork(frontDefault: $frontDefault)';
}


}

/// @nodoc
abstract mixin class $OfficialArtworkCopyWith<$Res>  {
  factory $OfficialArtworkCopyWith(OfficialArtwork value, $Res Function(OfficialArtwork) _then) = _$OfficialArtworkCopyWithImpl;
@useResult
$Res call({
 String? frontDefault
});




}
/// @nodoc
class _$OfficialArtworkCopyWithImpl<$Res>
    implements $OfficialArtworkCopyWith<$Res> {
  _$OfficialArtworkCopyWithImpl(this._self, this._then);

  final OfficialArtwork _self;
  final $Res Function(OfficialArtwork) _then;

/// Create a copy of OfficialArtwork
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frontDefault = freezed,}) {
  return _then(_self.copyWith(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OfficialArtwork].
extension OfficialArtworkPatterns on OfficialArtwork {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfficialArtwork value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfficialArtwork() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfficialArtwork value)  $default,){
final _that = this;
switch (_that) {
case _OfficialArtwork():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfficialArtwork value)?  $default,){
final _that = this;
switch (_that) {
case _OfficialArtwork() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? frontDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfficialArtwork() when $default != null:
return $default(_that.frontDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? frontDefault)  $default,) {final _that = this;
switch (_that) {
case _OfficialArtwork():
return $default(_that.frontDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? frontDefault)?  $default,) {final _that = this;
switch (_that) {
case _OfficialArtwork() when $default != null:
return $default(_that.frontDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfficialArtwork implements OfficialArtwork {
  const _OfficialArtwork({required this.frontDefault});
  factory _OfficialArtwork.fromJson(Map<String, dynamic> json) => _$OfficialArtworkFromJson(json);

@override final  String? frontDefault;

/// Create a copy of OfficialArtwork
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfficialArtworkCopyWith<_OfficialArtwork> get copyWith => __$OfficialArtworkCopyWithImpl<_OfficialArtwork>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfficialArtworkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfficialArtwork&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault);

@override
String toString() {
  return 'OfficialArtwork(frontDefault: $frontDefault)';
}


}

/// @nodoc
abstract mixin class _$OfficialArtworkCopyWith<$Res> implements $OfficialArtworkCopyWith<$Res> {
  factory _$OfficialArtworkCopyWith(_OfficialArtwork value, $Res Function(_OfficialArtwork) _then) = __$OfficialArtworkCopyWithImpl;
@override @useResult
$Res call({
 String? frontDefault
});




}
/// @nodoc
class __$OfficialArtworkCopyWithImpl<$Res>
    implements _$OfficialArtworkCopyWith<$Res> {
  __$OfficialArtworkCopyWithImpl(this._self, this._then);

  final _OfficialArtwork _self;
  final $Res Function(_OfficialArtwork) _then;

/// Create a copy of OfficialArtwork
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frontDefault = freezed,}) {
  return _then(_OfficialArtwork(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Stat {

 int get baseStat; int get effort; Species get stat;
/// Create a copy of Stat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatCopyWith<Stat> get copyWith => _$StatCopyWithImpl<Stat>(this as Stat, _$identity);

  /// Serializes this Stat to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Stat&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat)&&(identical(other.effort, effort) || other.effort == effort)&&(identical(other.stat, stat) || other.stat == stat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseStat,effort,stat);

@override
String toString() {
  return 'Stat(baseStat: $baseStat, effort: $effort, stat: $stat)';
}


}

/// @nodoc
abstract mixin class $StatCopyWith<$Res>  {
  factory $StatCopyWith(Stat value, $Res Function(Stat) _then) = _$StatCopyWithImpl;
@useResult
$Res call({
 int baseStat, int effort, Species stat
});


$SpeciesCopyWith<$Res> get stat;

}
/// @nodoc
class _$StatCopyWithImpl<$Res>
    implements $StatCopyWith<$Res> {
  _$StatCopyWithImpl(this._self, this._then);

  final Stat _self;
  final $Res Function(Stat) _then;

/// Create a copy of Stat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseStat = null,Object? effort = null,Object? stat = null,}) {
  return _then(_self.copyWith(
baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,effort: null == effort ? _self.effort : effort // ignore: cast_nullable_to_non_nullable
as int,stat: null == stat ? _self.stat : stat // ignore: cast_nullable_to_non_nullable
as Species,
  ));
}
/// Create a copy of Stat
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get stat {
  
  return $SpeciesCopyWith<$Res>(_self.stat, (value) {
    return _then(_self.copyWith(stat: value));
  });
}
}


/// Adds pattern-matching-related methods to [Stat].
extension StatPatterns on Stat {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Stat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Stat() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Stat value)  $default,){
final _that = this;
switch (_that) {
case _Stat():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Stat value)?  $default,){
final _that = this;
switch (_that) {
case _Stat() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int baseStat,  int effort,  Species stat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Stat() when $default != null:
return $default(_that.baseStat,_that.effort,_that.stat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int baseStat,  int effort,  Species stat)  $default,) {final _that = this;
switch (_that) {
case _Stat():
return $default(_that.baseStat,_that.effort,_that.stat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int baseStat,  int effort,  Species stat)?  $default,) {final _that = this;
switch (_that) {
case _Stat() when $default != null:
return $default(_that.baseStat,_that.effort,_that.stat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Stat implements Stat {
  const _Stat({required this.baseStat, required this.effort, required this.stat});
  factory _Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);

@override final  int baseStat;
@override final  int effort;
@override final  Species stat;

/// Create a copy of Stat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatCopyWith<_Stat> get copyWith => __$StatCopyWithImpl<_Stat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Stat&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat)&&(identical(other.effort, effort) || other.effort == effort)&&(identical(other.stat, stat) || other.stat == stat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseStat,effort,stat);

@override
String toString() {
  return 'Stat(baseStat: $baseStat, effort: $effort, stat: $stat)';
}


}

/// @nodoc
abstract mixin class _$StatCopyWith<$Res> implements $StatCopyWith<$Res> {
  factory _$StatCopyWith(_Stat value, $Res Function(_Stat) _then) = __$StatCopyWithImpl;
@override @useResult
$Res call({
 int baseStat, int effort, Species stat
});


@override $SpeciesCopyWith<$Res> get stat;

}
/// @nodoc
class __$StatCopyWithImpl<$Res>
    implements _$StatCopyWith<$Res> {
  __$StatCopyWithImpl(this._self, this._then);

  final _Stat _self;
  final $Res Function(_Stat) _then;

/// Create a copy of Stat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseStat = null,Object? effort = null,Object? stat = null,}) {
  return _then(_Stat(
baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,effort: null == effort ? _self.effort : effort // ignore: cast_nullable_to_non_nullable
as int,stat: null == stat ? _self.stat : stat // ignore: cast_nullable_to_non_nullable
as Species,
  ));
}

/// Create a copy of Stat
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get stat {
  
  return $SpeciesCopyWith<$Res>(_self.stat, (value) {
    return _then(_self.copyWith(stat: value));
  });
}
}


/// @nodoc
mixin _$Type {

 int get slot; Species get type;
/// Create a copy of Type
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeCopyWith<Type> get copyWith => _$TypeCopyWithImpl<Type>(this as Type, _$identity);

  /// Serializes this Type to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Type&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'Type(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class $TypeCopyWith<$Res>  {
  factory $TypeCopyWith(Type value, $Res Function(Type) _then) = _$TypeCopyWithImpl;
@useResult
$Res call({
 int slot, Species type
});


$SpeciesCopyWith<$Res> get type;

}
/// @nodoc
class _$TypeCopyWithImpl<$Res>
    implements $TypeCopyWith<$Res> {
  _$TypeCopyWithImpl(this._self, this._then);

  final Type _self;
  final $Res Function(Type) _then;

/// Create a copy of Type
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slot = null,Object? type = null,}) {
  return _then(_self.copyWith(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Species,
  ));
}
/// Create a copy of Type
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get type {
  
  return $SpeciesCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// Adds pattern-matching-related methods to [Type].
extension TypePatterns on Type {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Type value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Type() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Type value)  $default,){
final _that = this;
switch (_that) {
case _Type():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Type value)?  $default,){
final _that = this;
switch (_that) {
case _Type() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int slot,  Species type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Type() when $default != null:
return $default(_that.slot,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int slot,  Species type)  $default,) {final _that = this;
switch (_that) {
case _Type():
return $default(_that.slot,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int slot,  Species type)?  $default,) {final _that = this;
switch (_that) {
case _Type() when $default != null:
return $default(_that.slot,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Type implements Type {
  const _Type({required this.slot, required this.type});
  factory _Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);

@override final  int slot;
@override final  Species type;

/// Create a copy of Type
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypeCopyWith<_Type> get copyWith => __$TypeCopyWithImpl<_Type>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Type&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'Type(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class _$TypeCopyWith<$Res> implements $TypeCopyWith<$Res> {
  factory _$TypeCopyWith(_Type value, $Res Function(_Type) _then) = __$TypeCopyWithImpl;
@override @useResult
$Res call({
 int slot, Species type
});


@override $SpeciesCopyWith<$Res> get type;

}
/// @nodoc
class __$TypeCopyWithImpl<$Res>
    implements _$TypeCopyWith<$Res> {
  __$TypeCopyWithImpl(this._self, this._then);

  final _Type _self;
  final $Res Function(_Type) _then;

/// Create a copy of Type
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slot = null,Object? type = null,}) {
  return _then(_Type(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Species,
  ));
}

/// Create a copy of Type
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesCopyWith<$Res> get type {
  
  return $SpeciesCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}

// dart format on
