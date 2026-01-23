// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

/// @nodoc
mixin _$Pokemon {
  List<Ability> get abilities => throw _privateConstructorUsedError;
  int get baseExperience => throw _privateConstructorUsedError;
  List<Species> get forms => throw _privateConstructorUsedError;
  List<GameIndex> get gameIndices => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  List<HeldItem> get heldItems => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;
  String get locationAreaEncounters => throw _privateConstructorUsedError;
  List<Move> get moves => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  List<dynamic> get pastTypes => throw _privateConstructorUsedError;
  Species get species => throw _privateConstructorUsedError;
  Sprites get sprites => throw _privateConstructorUsedError;
  List<Stat> get stats => throw _privateConstructorUsedError;
  List<Type> get types => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res, Pokemon>;
  @useResult
  $Res call(
      {List<Ability> abilities,
      int baseExperience,
      List<Species> forms,
      List<GameIndex> gameIndices,
      int height,
      List<HeldItem> heldItems,
      int id,
      bool isDefault,
      String locationAreaEncounters,
      List<Move> moves,
      String name,
      int order,
      List<dynamic> pastTypes,
      Species species,
      Sprites sprites,
      List<Stat> stats,
      List<Type> types,
      int weight});

  $SpeciesCopyWith<$Res> get species;
  $SpritesCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res, $Val extends Pokemon>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abilities = null,
    Object? baseExperience = null,
    Object? forms = null,
    Object? gameIndices = null,
    Object? height = null,
    Object? heldItems = null,
    Object? id = null,
    Object? isDefault = null,
    Object? locationAreaEncounters = null,
    Object? moves = null,
    Object? name = null,
    Object? order = null,
    Object? pastTypes = null,
    Object? species = null,
    Object? sprites = null,
    Object? stats = null,
    Object? types = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      forms: null == forms
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<Species>,
      gameIndices: null == gameIndices
          ? _value.gameIndices
          : gameIndices // ignore: cast_nullable_to_non_nullable
              as List<GameIndex>,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      heldItems: null == heldItems
          ? _value.heldItems
          : heldItems // ignore: cast_nullable_to_non_nullable
              as List<HeldItem>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      locationAreaEncounters: null == locationAreaEncounters
          ? _value.locationAreaEncounters
          : locationAreaEncounters // ignore: cast_nullable_to_non_nullable
              as String,
      moves: null == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<Move>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      pastTypes: null == pastTypes
          ? _value.pastTypes
          : pastTypes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stat>,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Type>,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get species {
    return $SpeciesCopyWith<$Res>(_value.species, (value) {
      return _then(_value.copyWith(species: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesCopyWith<$Res> get sprites {
    return $SpritesCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$$_PokemonCopyWith(
          _$_Pokemon value, $Res Function(_$_Pokemon) then) =
      __$$_PokemonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Ability> abilities,
      int baseExperience,
      List<Species> forms,
      List<GameIndex> gameIndices,
      int height,
      List<HeldItem> heldItems,
      int id,
      bool isDefault,
      String locationAreaEncounters,
      List<Move> moves,
      String name,
      int order,
      List<dynamic> pastTypes,
      Species species,
      Sprites sprites,
      List<Stat> stats,
      List<Type> types,
      int weight});

  @override
  $SpeciesCopyWith<$Res> get species;
  @override
  $SpritesCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$_PokemonCopyWithImpl<$Res>
    extends _$PokemonCopyWithImpl<$Res, _$_Pokemon>
    implements _$$_PokemonCopyWith<$Res> {
  __$$_PokemonCopyWithImpl(_$_Pokemon _value, $Res Function(_$_Pokemon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abilities = null,
    Object? baseExperience = null,
    Object? forms = null,
    Object? gameIndices = null,
    Object? height = null,
    Object? heldItems = null,
    Object? id = null,
    Object? isDefault = null,
    Object? locationAreaEncounters = null,
    Object? moves = null,
    Object? name = null,
    Object? order = null,
    Object? pastTypes = null,
    Object? species = null,
    Object? sprites = null,
    Object? stats = null,
    Object? types = null,
    Object? weight = null,
  }) {
    return _then(_$_Pokemon(
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      forms: null == forms
          ? _value._forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<Species>,
      gameIndices: null == gameIndices
          ? _value._gameIndices
          : gameIndices // ignore: cast_nullable_to_non_nullable
              as List<GameIndex>,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      heldItems: null == heldItems
          ? _value._heldItems
          : heldItems // ignore: cast_nullable_to_non_nullable
              as List<HeldItem>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      locationAreaEncounters: null == locationAreaEncounters
          ? _value.locationAreaEncounters
          : locationAreaEncounters // ignore: cast_nullable_to_non_nullable
              as String,
      moves: null == moves
          ? _value._moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<Move>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      pastTypes: null == pastTypes
          ? _value._pastTypes
          : pastTypes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stat>,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Type>,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pokemon implements _Pokemon {
  const _$_Pokemon(
      {required final List<Ability> abilities,
      required this.baseExperience,
      required final List<Species> forms,
      required final List<GameIndex> gameIndices,
      required this.height,
      required final List<HeldItem> heldItems,
      required this.id,
      required this.isDefault,
      required this.locationAreaEncounters,
      required final List<Move> moves,
      required this.name,
      required this.order,
      required final List<dynamic> pastTypes,
      required this.species,
      required this.sprites,
      required final List<Stat> stats,
      required final List<Type> types,
      required this.weight})
      : _abilities = abilities,
        _forms = forms,
        _gameIndices = gameIndices,
        _heldItems = heldItems,
        _moves = moves,
        _pastTypes = pastTypes,
        _stats = stats,
        _types = types;

  factory _$_Pokemon.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonFromJson(json);

  final List<Ability> _abilities;
  @override
  List<Ability> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  final int baseExperience;
  final List<Species> _forms;
  @override
  List<Species> get forms {
    if (_forms is EqualUnmodifiableListView) return _forms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forms);
  }

  final List<GameIndex> _gameIndices;
  @override
  List<GameIndex> get gameIndices {
    if (_gameIndices is EqualUnmodifiableListView) return _gameIndices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameIndices);
  }

  @override
  final int height;
  final List<HeldItem> _heldItems;
  @override
  List<HeldItem> get heldItems {
    if (_heldItems is EqualUnmodifiableListView) return _heldItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_heldItems);
  }

  @override
  final int id;
  @override
  final bool isDefault;
  @override
  final String locationAreaEncounters;
  final List<Move> _moves;
  @override
  List<Move> get moves {
    if (_moves is EqualUnmodifiableListView) return _moves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moves);
  }

  @override
  final String name;
  @override
  final int order;
  final List<dynamic> _pastTypes;
  @override
  List<dynamic> get pastTypes {
    if (_pastTypes is EqualUnmodifiableListView) return _pastTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastTypes);
  }

  @override
  final Species species;
  @override
  final Sprites sprites;
  final List<Stat> _stats;
  @override
  List<Stat> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  final List<Type> _types;
  @override
  List<Type> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  final int weight;

  @override
  String toString() {
    return 'Pokemon(abilities: $abilities, baseExperience: $baseExperience, forms: $forms, gameIndices: $gameIndices, height: $height, heldItems: $heldItems, id: $id, isDefault: $isDefault, locationAreaEncounters: $locationAreaEncounters, moves: $moves, name: $name, order: $order, pastTypes: $pastTypes, species: $species, sprites: $sprites, stats: $stats, types: $types, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pokemon &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            (identical(other.baseExperience, baseExperience) ||
                other.baseExperience == baseExperience) &&
            const DeepCollectionEquality().equals(other._forms, _forms) &&
            const DeepCollectionEquality()
                .equals(other._gameIndices, _gameIndices) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality()
                .equals(other._heldItems, _heldItems) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.locationAreaEncounters, locationAreaEncounters) ||
                other.locationAreaEncounters == locationAreaEncounters) &&
            const DeepCollectionEquality().equals(other._moves, _moves) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality()
                .equals(other._pastTypes, _pastTypes) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_abilities),
      baseExperience,
      const DeepCollectionEquality().hash(_forms),
      const DeepCollectionEquality().hash(_gameIndices),
      height,
      const DeepCollectionEquality().hash(_heldItems),
      id,
      isDefault,
      locationAreaEncounters,
      const DeepCollectionEquality().hash(_moves),
      name,
      order,
      const DeepCollectionEquality().hash(_pastTypes),
      species,
      sprites,
      const DeepCollectionEquality().hash(_stats),
      const DeepCollectionEquality().hash(_types),
      weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonCopyWith<_$_Pokemon> get copyWith =>
      __$$_PokemonCopyWithImpl<_$_Pokemon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonToJson(
      this,
    );
  }
}

abstract class _Pokemon implements Pokemon {
  const factory _Pokemon(
      {required final List<Ability> abilities,
      required final int baseExperience,
      required final List<Species> forms,
      required final List<GameIndex> gameIndices,
      required final int height,
      required final List<HeldItem> heldItems,
      required final int id,
      required final bool isDefault,
      required final String locationAreaEncounters,
      required final List<Move> moves,
      required final String name,
      required final int order,
      required final List<dynamic> pastTypes,
      required final Species species,
      required final Sprites sprites,
      required final List<Stat> stats,
      required final List<Type> types,
      required final int weight}) = _$_Pokemon;

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$_Pokemon.fromJson;

  @override
  List<Ability> get abilities;
  @override
  int get baseExperience;
  @override
  List<Species> get forms;
  @override
  List<GameIndex> get gameIndices;
  @override
  int get height;
  @override
  List<HeldItem> get heldItems;
  @override
  int get id;
  @override
  bool get isDefault;
  @override
  String get locationAreaEncounters;
  @override
  List<Move> get moves;
  @override
  String get name;
  @override
  int get order;
  @override
  List<dynamic> get pastTypes;
  @override
  Species get species;
  @override
  Sprites get sprites;
  @override
  List<Stat> get stats;
  @override
  List<Type> get types;
  @override
  int get weight;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonCopyWith<_$_Pokemon> get copyWith =>
      throw _privateConstructorUsedError;
}

HeldItem _$HeldItemFromJson(Map<String, dynamic> json) {
  return _HeldItem.fromJson(json);
}

/// @nodoc
mixin _$HeldItem {
  Species get item => throw _privateConstructorUsedError;
  List<VersionDetail> get versionDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeldItemCopyWith<HeldItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeldItemCopyWith<$Res> {
  factory $HeldItemCopyWith(HeldItem value, $Res Function(HeldItem) then) =
      _$HeldItemCopyWithImpl<$Res, HeldItem>;
  @useResult
  $Res call({Species item, List<VersionDetail> versionDetails});

  $SpeciesCopyWith<$Res> get item;
}

/// @nodoc
class _$HeldItemCopyWithImpl<$Res, $Val extends HeldItem>
    implements $HeldItemCopyWith<$Res> {
  _$HeldItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? versionDetails = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Species,
      versionDetails: null == versionDetails
          ? _value.versionDetails
          : versionDetails // ignore: cast_nullable_to_non_nullable
              as List<VersionDetail>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get item {
    return $SpeciesCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HeldItemCopyWith<$Res> implements $HeldItemCopyWith<$Res> {
  factory _$$_HeldItemCopyWith(
          _$_HeldItem value, $Res Function(_$_HeldItem) then) =
      __$$_HeldItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Species item, List<VersionDetail> versionDetails});

  @override
  $SpeciesCopyWith<$Res> get item;
}

/// @nodoc
class __$$_HeldItemCopyWithImpl<$Res>
    extends _$HeldItemCopyWithImpl<$Res, _$_HeldItem>
    implements _$$_HeldItemCopyWith<$Res> {
  __$$_HeldItemCopyWithImpl(
      _$_HeldItem _value, $Res Function(_$_HeldItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? versionDetails = null,
  }) {
    return _then(_$_HeldItem(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Species,
      versionDetails: null == versionDetails
          ? _value._versionDetails
          : versionDetails // ignore: cast_nullable_to_non_nullable
              as List<VersionDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HeldItem implements _HeldItem {
  const _$_HeldItem(
      {required this.item, required final List<VersionDetail> versionDetails})
      : _versionDetails = versionDetails;

  factory _$_HeldItem.fromJson(Map<String, dynamic> json) =>
      _$$_HeldItemFromJson(json);

  @override
  final Species item;
  final List<VersionDetail> _versionDetails;
  @override
  List<VersionDetail> get versionDetails {
    if (_versionDetails is EqualUnmodifiableListView) return _versionDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_versionDetails);
  }

  @override
  String toString() {
    return 'HeldItem(item: $item, versionDetails: $versionDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HeldItem &&
            (identical(other.item, item) || other.item == item) &&
            const DeepCollectionEquality()
                .equals(other._versionDetails, _versionDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, item, const DeepCollectionEquality().hash(_versionDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HeldItemCopyWith<_$_HeldItem> get copyWith =>
      __$$_HeldItemCopyWithImpl<_$_HeldItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HeldItemToJson(
      this,
    );
  }
}

abstract class _HeldItem implements HeldItem {
  const factory _HeldItem(
      {required final Species item,
      required final List<VersionDetail> versionDetails}) = _$_HeldItem;

  factory _HeldItem.fromJson(Map<String, dynamic> json) = _$_HeldItem.fromJson;

  @override
  Species get item;
  @override
  List<VersionDetail> get versionDetails;
  @override
  @JsonKey(ignore: true)
  _$$_HeldItemCopyWith<_$_HeldItem> get copyWith =>
      throw _privateConstructorUsedError;
}

VersionDetail _$VersionDetailFromJson(Map<String, dynamic> json) {
  return _VersionDetail.fromJson(json);
}

/// @nodoc
mixin _$VersionDetail {
  int get rarity => throw _privateConstructorUsedError;
  Species get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionDetailCopyWith<VersionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionDetailCopyWith<$Res> {
  factory $VersionDetailCopyWith(
          VersionDetail value, $Res Function(VersionDetail) then) =
      _$VersionDetailCopyWithImpl<$Res, VersionDetail>;
  @useResult
  $Res call({int rarity, Species version});

  $SpeciesCopyWith<$Res> get version;
}

/// @nodoc
class _$VersionDetailCopyWithImpl<$Res, $Val extends VersionDetail>
    implements $VersionDetailCopyWith<$Res> {
  _$VersionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rarity = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Species,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get version {
    return $SpeciesCopyWith<$Res>(_value.version, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VersionDetailCopyWith<$Res>
    implements $VersionDetailCopyWith<$Res> {
  factory _$$_VersionDetailCopyWith(
          _$_VersionDetail value, $Res Function(_$_VersionDetail) then) =
      __$$_VersionDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rarity, Species version});

  @override
  $SpeciesCopyWith<$Res> get version;
}

/// @nodoc
class __$$_VersionDetailCopyWithImpl<$Res>
    extends _$VersionDetailCopyWithImpl<$Res, _$_VersionDetail>
    implements _$$_VersionDetailCopyWith<$Res> {
  __$$_VersionDetailCopyWithImpl(
      _$_VersionDetail _value, $Res Function(_$_VersionDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rarity = null,
    Object? version = null,
  }) {
    return _then(_$_VersionDetail(
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Species,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionDetail implements _VersionDetail {
  const _$_VersionDetail({required this.rarity, required this.version});

  factory _$_VersionDetail.fromJson(Map<String, dynamic> json) =>
      _$$_VersionDetailFromJson(json);

  @override
  final int rarity;
  @override
  final Species version;

  @override
  String toString() {
    return 'VersionDetail(rarity: $rarity, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersionDetail &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rarity, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionDetailCopyWith<_$_VersionDetail> get copyWith =>
      __$$_VersionDetailCopyWithImpl<_$_VersionDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionDetailToJson(
      this,
    );
  }
}

abstract class _VersionDetail implements VersionDetail {
  const factory _VersionDetail(
      {required final int rarity,
      required final Species version}) = _$_VersionDetail;

  factory _VersionDetail.fromJson(Map<String, dynamic> json) =
      _$_VersionDetail.fromJson;

  @override
  int get rarity;
  @override
  Species get version;
  @override
  @JsonKey(ignore: true)
  _$$_VersionDetailCopyWith<_$_VersionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

Move _$MoveFromJson(Map<String, dynamic> json) {
  return _Move.fromJson(json);
}

/// @nodoc
mixin _$Move {
  Species get move => throw _privateConstructorUsedError;
  List<VersionGroupDetail> get versionGroupDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveCopyWith<Move> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveCopyWith<$Res> {
  factory $MoveCopyWith(Move value, $Res Function(Move) then) =
      _$MoveCopyWithImpl<$Res, Move>;
  @useResult
  $Res call({Species move, List<VersionGroupDetail> versionGroupDetails});

  $SpeciesCopyWith<$Res> get move;
}

/// @nodoc
class _$MoveCopyWithImpl<$Res, $Val extends Move>
    implements $MoveCopyWith<$Res> {
  _$MoveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
    Object? versionGroupDetails = null,
  }) {
    return _then(_value.copyWith(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as Species,
      versionGroupDetails: null == versionGroupDetails
          ? _value.versionGroupDetails
          : versionGroupDetails // ignore: cast_nullable_to_non_nullable
              as List<VersionGroupDetail>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get move {
    return $SpeciesCopyWith<$Res>(_value.move, (value) {
      return _then(_value.copyWith(move: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MoveCopyWith<$Res> implements $MoveCopyWith<$Res> {
  factory _$$_MoveCopyWith(_$_Move value, $Res Function(_$_Move) then) =
      __$$_MoveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Species move, List<VersionGroupDetail> versionGroupDetails});

  @override
  $SpeciesCopyWith<$Res> get move;
}

/// @nodoc
class __$$_MoveCopyWithImpl<$Res> extends _$MoveCopyWithImpl<$Res, _$_Move>
    implements _$$_MoveCopyWith<$Res> {
  __$$_MoveCopyWithImpl(_$_Move _value, $Res Function(_$_Move) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
    Object? versionGroupDetails = null,
  }) {
    return _then(_$_Move(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as Species,
      versionGroupDetails: null == versionGroupDetails
          ? _value._versionGroupDetails
          : versionGroupDetails // ignore: cast_nullable_to_non_nullable
              as List<VersionGroupDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Move implements _Move {
  const _$_Move(
      {required this.move,
      required final List<VersionGroupDetail> versionGroupDetails})
      : _versionGroupDetails = versionGroupDetails;

  factory _$_Move.fromJson(Map<String, dynamic> json) => _$$_MoveFromJson(json);

  @override
  final Species move;
  final List<VersionGroupDetail> _versionGroupDetails;
  @override
  List<VersionGroupDetail> get versionGroupDetails {
    if (_versionGroupDetails is EqualUnmodifiableListView)
      return _versionGroupDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_versionGroupDetails);
  }

  @override
  String toString() {
    return 'Move(move: $move, versionGroupDetails: $versionGroupDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Move &&
            (identical(other.move, move) || other.move == move) &&
            const DeepCollectionEquality()
                .equals(other._versionGroupDetails, _versionGroupDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, move,
      const DeepCollectionEquality().hash(_versionGroupDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoveCopyWith<_$_Move> get copyWith =>
      __$$_MoveCopyWithImpl<_$_Move>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoveToJson(
      this,
    );
  }
}

abstract class _Move implements Move {
  const factory _Move(
      {required final Species move,
      required final List<VersionGroupDetail> versionGroupDetails}) = _$_Move;

  factory _Move.fromJson(Map<String, dynamic> json) = _$_Move.fromJson;

  @override
  Species get move;
  @override
  List<VersionGroupDetail> get versionGroupDetails;
  @override
  @JsonKey(ignore: true)
  _$$_MoveCopyWith<_$_Move> get copyWith => throw _privateConstructorUsedError;
}

VersionGroupDetail _$VersionGroupDetailFromJson(Map<String, dynamic> json) {
  return _VersionGroupDetail.fromJson(json);
}

/// @nodoc
mixin _$VersionGroupDetail {
  int get levelLearnedAt => throw _privateConstructorUsedError;
  Species get moveLearnMethod => throw _privateConstructorUsedError;
  Species get versionGroup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionGroupDetailCopyWith<VersionGroupDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionGroupDetailCopyWith<$Res> {
  factory $VersionGroupDetailCopyWith(
          VersionGroupDetail value, $Res Function(VersionGroupDetail) then) =
      _$VersionGroupDetailCopyWithImpl<$Res, VersionGroupDetail>;
  @useResult
  $Res call(
      {int levelLearnedAt, Species moveLearnMethod, Species versionGroup});

  $SpeciesCopyWith<$Res> get moveLearnMethod;
  $SpeciesCopyWith<$Res> get versionGroup;
}

/// @nodoc
class _$VersionGroupDetailCopyWithImpl<$Res, $Val extends VersionGroupDetail>
    implements $VersionGroupDetailCopyWith<$Res> {
  _$VersionGroupDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelLearnedAt = null,
    Object? moveLearnMethod = null,
    Object? versionGroup = null,
  }) {
    return _then(_value.copyWith(
      levelLearnedAt: null == levelLearnedAt
          ? _value.levelLearnedAt
          : levelLearnedAt // ignore: cast_nullable_to_non_nullable
              as int,
      moveLearnMethod: null == moveLearnMethod
          ? _value.moveLearnMethod
          : moveLearnMethod // ignore: cast_nullable_to_non_nullable
              as Species,
      versionGroup: null == versionGroup
          ? _value.versionGroup
          : versionGroup // ignore: cast_nullable_to_non_nullable
              as Species,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get moveLearnMethod {
    return $SpeciesCopyWith<$Res>(_value.moveLearnMethod, (value) {
      return _then(_value.copyWith(moveLearnMethod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get versionGroup {
    return $SpeciesCopyWith<$Res>(_value.versionGroup, (value) {
      return _then(_value.copyWith(versionGroup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VersionGroupDetailCopyWith<$Res>
    implements $VersionGroupDetailCopyWith<$Res> {
  factory _$$_VersionGroupDetailCopyWith(_$_VersionGroupDetail value,
          $Res Function(_$_VersionGroupDetail) then) =
      __$$_VersionGroupDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int levelLearnedAt, Species moveLearnMethod, Species versionGroup});

  @override
  $SpeciesCopyWith<$Res> get moveLearnMethod;
  @override
  $SpeciesCopyWith<$Res> get versionGroup;
}

/// @nodoc
class __$$_VersionGroupDetailCopyWithImpl<$Res>
    extends _$VersionGroupDetailCopyWithImpl<$Res, _$_VersionGroupDetail>
    implements _$$_VersionGroupDetailCopyWith<$Res> {
  __$$_VersionGroupDetailCopyWithImpl(
      _$_VersionGroupDetail _value, $Res Function(_$_VersionGroupDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelLearnedAt = null,
    Object? moveLearnMethod = null,
    Object? versionGroup = null,
  }) {
    return _then(_$_VersionGroupDetail(
      levelLearnedAt: null == levelLearnedAt
          ? _value.levelLearnedAt
          : levelLearnedAt // ignore: cast_nullable_to_non_nullable
              as int,
      moveLearnMethod: null == moveLearnMethod
          ? _value.moveLearnMethod
          : moveLearnMethod // ignore: cast_nullable_to_non_nullable
              as Species,
      versionGroup: null == versionGroup
          ? _value.versionGroup
          : versionGroup // ignore: cast_nullable_to_non_nullable
              as Species,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionGroupDetail implements _VersionGroupDetail {
  const _$_VersionGroupDetail(
      {required this.levelLearnedAt,
      required this.moveLearnMethod,
      required this.versionGroup});

  factory _$_VersionGroupDetail.fromJson(Map<String, dynamic> json) =>
      _$$_VersionGroupDetailFromJson(json);

  @override
  final int levelLearnedAt;
  @override
  final Species moveLearnMethod;
  @override
  final Species versionGroup;

  @override
  String toString() {
    return 'VersionGroupDetail(levelLearnedAt: $levelLearnedAt, moveLearnMethod: $moveLearnMethod, versionGroup: $versionGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersionGroupDetail &&
            (identical(other.levelLearnedAt, levelLearnedAt) ||
                other.levelLearnedAt == levelLearnedAt) &&
            (identical(other.moveLearnMethod, moveLearnMethod) ||
                other.moveLearnMethod == moveLearnMethod) &&
            (identical(other.versionGroup, versionGroup) ||
                other.versionGroup == versionGroup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, levelLearnedAt, moveLearnMethod, versionGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionGroupDetailCopyWith<_$_VersionGroupDetail> get copyWith =>
      __$$_VersionGroupDetailCopyWithImpl<_$_VersionGroupDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionGroupDetailToJson(
      this,
    );
  }
}

abstract class _VersionGroupDetail implements VersionGroupDetail {
  const factory _VersionGroupDetail(
      {required final int levelLearnedAt,
      required final Species moveLearnMethod,
      required final Species versionGroup}) = _$_VersionGroupDetail;

  factory _VersionGroupDetail.fromJson(Map<String, dynamic> json) =
      _$_VersionGroupDetail.fromJson;

  @override
  int get levelLearnedAt;
  @override
  Species get moveLearnMethod;
  @override
  Species get versionGroup;
  @override
  @JsonKey(ignore: true)
  _$$_VersionGroupDetailCopyWith<_$_VersionGroupDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

GenerationV _$GenerationVFromJson(Map<String, dynamic> json) {
  return _GenerationV.fromJson(json);
}

/// @nodoc
mixin _$GenerationV {
  Sprites get blackWhite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerationVCopyWith<GenerationV> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerationVCopyWith<$Res> {
  factory $GenerationVCopyWith(
          GenerationV value, $Res Function(GenerationV) then) =
      _$GenerationVCopyWithImpl<$Res, GenerationV>;
  @useResult
  $Res call({Sprites blackWhite});

  $SpritesCopyWith<$Res> get blackWhite;
}

/// @nodoc
class _$GenerationVCopyWithImpl<$Res, $Val extends GenerationV>
    implements $GenerationVCopyWith<$Res> {
  _$GenerationVCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blackWhite = null,
  }) {
    return _then(_value.copyWith(
      blackWhite: null == blackWhite
          ? _value.blackWhite
          : blackWhite // ignore: cast_nullable_to_non_nullable
              as Sprites,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesCopyWith<$Res> get blackWhite {
    return $SpritesCopyWith<$Res>(_value.blackWhite, (value) {
      return _then(_value.copyWith(blackWhite: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GenerationVCopyWith<$Res>
    implements $GenerationVCopyWith<$Res> {
  factory _$$_GenerationVCopyWith(
          _$_GenerationV value, $Res Function(_$_GenerationV) then) =
      __$$_GenerationVCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Sprites blackWhite});

  @override
  $SpritesCopyWith<$Res> get blackWhite;
}

/// @nodoc
class __$$_GenerationVCopyWithImpl<$Res>
    extends _$GenerationVCopyWithImpl<$Res, _$_GenerationV>
    implements _$$_GenerationVCopyWith<$Res> {
  __$$_GenerationVCopyWithImpl(
      _$_GenerationV _value, $Res Function(_$_GenerationV) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blackWhite = null,
  }) {
    return _then(_$_GenerationV(
      blackWhite: null == blackWhite
          ? _value.blackWhite
          : blackWhite // ignore: cast_nullable_to_non_nullable
              as Sprites,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenerationV implements _GenerationV {
  const _$_GenerationV({required this.blackWhite});

  factory _$_GenerationV.fromJson(Map<String, dynamic> json) =>
      _$$_GenerationVFromJson(json);

  @override
  final Sprites blackWhite;

  @override
  String toString() {
    return 'GenerationV(blackWhite: $blackWhite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerationV &&
            (identical(other.blackWhite, blackWhite) ||
                other.blackWhite == blackWhite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, blackWhite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerationVCopyWith<_$_GenerationV> get copyWith =>
      __$$_GenerationVCopyWithImpl<_$_GenerationV>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenerationVToJson(
      this,
    );
  }
}

abstract class _GenerationV implements GenerationV {
  const factory _GenerationV({required final Sprites blackWhite}) =
      _$_GenerationV;

  factory _GenerationV.fromJson(Map<String, dynamic> json) =
      _$_GenerationV.fromJson;

  @override
  Sprites get blackWhite;
  @override
  @JsonKey(ignore: true)
  _$$_GenerationVCopyWith<_$_GenerationV> get copyWith =>
      throw _privateConstructorUsedError;
}

GenerationIv _$GenerationIvFromJson(Map<String, dynamic> json) {
  return _GenerationIv.fromJson(json);
}

/// @nodoc
mixin _$GenerationIv {
  Sprites get diamondPearl => throw _privateConstructorUsedError;
  Sprites get heartgoldSoulsilver => throw _privateConstructorUsedError;
  Sprites get platinum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerationIvCopyWith<GenerationIv> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerationIvCopyWith<$Res> {
  factory $GenerationIvCopyWith(
          GenerationIv value, $Res Function(GenerationIv) then) =
      _$GenerationIvCopyWithImpl<$Res, GenerationIv>;
  @useResult
  $Res call(
      {Sprites diamondPearl, Sprites heartgoldSoulsilver, Sprites platinum});

  $SpritesCopyWith<$Res> get diamondPearl;
  $SpritesCopyWith<$Res> get heartgoldSoulsilver;
  $SpritesCopyWith<$Res> get platinum;
}

/// @nodoc
class _$GenerationIvCopyWithImpl<$Res, $Val extends GenerationIv>
    implements $GenerationIvCopyWith<$Res> {
  _$GenerationIvCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diamondPearl = null,
    Object? heartgoldSoulsilver = null,
    Object? platinum = null,
  }) {
    return _then(_value.copyWith(
      diamondPearl: null == diamondPearl
          ? _value.diamondPearl
          : diamondPearl // ignore: cast_nullable_to_non_nullable
              as Sprites,
      heartgoldSoulsilver: null == heartgoldSoulsilver
          ? _value.heartgoldSoulsilver
          : heartgoldSoulsilver // ignore: cast_nullable_to_non_nullable
              as Sprites,
      platinum: null == platinum
          ? _value.platinum
          : platinum // ignore: cast_nullable_to_non_nullable
              as Sprites,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesCopyWith<$Res> get diamondPearl {
    return $SpritesCopyWith<$Res>(_value.diamondPearl, (value) {
      return _then(_value.copyWith(diamondPearl: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesCopyWith<$Res> get heartgoldSoulsilver {
    return $SpritesCopyWith<$Res>(_value.heartgoldSoulsilver, (value) {
      return _then(_value.copyWith(heartgoldSoulsilver: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesCopyWith<$Res> get platinum {
    return $SpritesCopyWith<$Res>(_value.platinum, (value) {
      return _then(_value.copyWith(platinum: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GenerationIvCopyWith<$Res>
    implements $GenerationIvCopyWith<$Res> {
  factory _$$_GenerationIvCopyWith(
          _$_GenerationIv value, $Res Function(_$_GenerationIv) then) =
      __$$_GenerationIvCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Sprites diamondPearl, Sprites heartgoldSoulsilver, Sprites platinum});

  @override
  $SpritesCopyWith<$Res> get diamondPearl;
  @override
  $SpritesCopyWith<$Res> get heartgoldSoulsilver;
  @override
  $SpritesCopyWith<$Res> get platinum;
}

/// @nodoc
class __$$_GenerationIvCopyWithImpl<$Res>
    extends _$GenerationIvCopyWithImpl<$Res, _$_GenerationIv>
    implements _$$_GenerationIvCopyWith<$Res> {
  __$$_GenerationIvCopyWithImpl(
      _$_GenerationIv _value, $Res Function(_$_GenerationIv) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diamondPearl = null,
    Object? heartgoldSoulsilver = null,
    Object? platinum = null,
  }) {
    return _then(_$_GenerationIv(
      diamondPearl: null == diamondPearl
          ? _value.diamondPearl
          : diamondPearl // ignore: cast_nullable_to_non_nullable
              as Sprites,
      heartgoldSoulsilver: null == heartgoldSoulsilver
          ? _value.heartgoldSoulsilver
          : heartgoldSoulsilver // ignore: cast_nullable_to_non_nullable
              as Sprites,
      platinum: null == platinum
          ? _value.platinum
          : platinum // ignore: cast_nullable_to_non_nullable
              as Sprites,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenerationIv implements _GenerationIv {
  const _$_GenerationIv(
      {required this.diamondPearl,
      required this.heartgoldSoulsilver,
      required this.platinum});

  factory _$_GenerationIv.fromJson(Map<String, dynamic> json) =>
      _$$_GenerationIvFromJson(json);

  @override
  final Sprites diamondPearl;
  @override
  final Sprites heartgoldSoulsilver;
  @override
  final Sprites platinum;

  @override
  String toString() {
    return 'GenerationIv(diamondPearl: $diamondPearl, heartgoldSoulsilver: $heartgoldSoulsilver, platinum: $platinum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerationIv &&
            (identical(other.diamondPearl, diamondPearl) ||
                other.diamondPearl == diamondPearl) &&
            (identical(other.heartgoldSoulsilver, heartgoldSoulsilver) ||
                other.heartgoldSoulsilver == heartgoldSoulsilver) &&
            (identical(other.platinum, platinum) ||
                other.platinum == platinum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, diamondPearl, heartgoldSoulsilver, platinum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerationIvCopyWith<_$_GenerationIv> get copyWith =>
      __$$_GenerationIvCopyWithImpl<_$_GenerationIv>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenerationIvToJson(
      this,
    );
  }
}

abstract class _GenerationIv implements GenerationIv {
  const factory _GenerationIv(
      {required final Sprites diamondPearl,
      required final Sprites heartgoldSoulsilver,
      required final Sprites platinum}) = _$_GenerationIv;

  factory _GenerationIv.fromJson(Map<String, dynamic> json) =
      _$_GenerationIv.fromJson;

  @override
  Sprites get diamondPearl;
  @override
  Sprites get heartgoldSoulsilver;
  @override
  Sprites get platinum;
  @override
  @JsonKey(ignore: true)
  _$$_GenerationIvCopyWith<_$_GenerationIv> get copyWith =>
      throw _privateConstructorUsedError;
}

Versions _$VersionsFromJson(Map<String, dynamic> json) {
  return _Versions.fromJson(json);
}

/// @nodoc
mixin _$Versions {
  GenerationI get generationI => throw _privateConstructorUsedError;
  GenerationIi get generationIi => throw _privateConstructorUsedError;
  GenerationIii get generationIii => throw _privateConstructorUsedError;
  GenerationIv get generationIv => throw _privateConstructorUsedError;
  GenerationV get generationV => throw _privateConstructorUsedError;
  Map<String, Home> get generationVi => throw _privateConstructorUsedError;
  GenerationVii get generationVii => throw _privateConstructorUsedError;
  GenerationViii get generationViii => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionsCopyWith<Versions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionsCopyWith<$Res> {
  factory $VersionsCopyWith(Versions value, $Res Function(Versions) then) =
      _$VersionsCopyWithImpl<$Res, Versions>;
  @useResult
  $Res call(
      {GenerationI generationI,
      GenerationIi generationIi,
      GenerationIii generationIii,
      GenerationIv generationIv,
      GenerationV generationV,
      Map<String, Home> generationVi,
      GenerationVii generationVii,
      GenerationViii generationViii});

  $GenerationICopyWith<$Res> get generationI;
  $GenerationIiCopyWith<$Res> get generationIi;
  $GenerationIiiCopyWith<$Res> get generationIii;
  $GenerationIvCopyWith<$Res> get generationIv;
  $GenerationVCopyWith<$Res> get generationV;
  $GenerationViiCopyWith<$Res> get generationVii;
  $GenerationViiiCopyWith<$Res> get generationViii;
}

/// @nodoc
class _$VersionsCopyWithImpl<$Res, $Val extends Versions>
    implements $VersionsCopyWith<$Res> {
  _$VersionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generationI = null,
    Object? generationIi = null,
    Object? generationIii = null,
    Object? generationIv = null,
    Object? generationV = null,
    Object? generationVi = null,
    Object? generationVii = null,
    Object? generationViii = null,
  }) {
    return _then(_value.copyWith(
      generationI: null == generationI
          ? _value.generationI
          : generationI // ignore: cast_nullable_to_non_nullable
              as GenerationI,
      generationIi: null == generationIi
          ? _value.generationIi
          : generationIi // ignore: cast_nullable_to_non_nullable
              as GenerationIi,
      generationIii: null == generationIii
          ? _value.generationIii
          : generationIii // ignore: cast_nullable_to_non_nullable
              as GenerationIii,
      generationIv: null == generationIv
          ? _value.generationIv
          : generationIv // ignore: cast_nullable_to_non_nullable
              as GenerationIv,
      generationV: null == generationV
          ? _value.generationV
          : generationV // ignore: cast_nullable_to_non_nullable
              as GenerationV,
      generationVi: null == generationVi
          ? _value.generationVi
          : generationVi // ignore: cast_nullable_to_non_nullable
              as Map<String, Home>,
      generationVii: null == generationVii
          ? _value.generationVii
          : generationVii // ignore: cast_nullable_to_non_nullable
              as GenerationVii,
      generationViii: null == generationViii
          ? _value.generationViii
          : generationViii // ignore: cast_nullable_to_non_nullable
              as GenerationViii,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GenerationICopyWith<$Res> get generationI {
    return $GenerationICopyWith<$Res>(_value.generationI, (value) {
      return _then(_value.copyWith(generationI: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenerationIiCopyWith<$Res> get generationIi {
    return $GenerationIiCopyWith<$Res>(_value.generationIi, (value) {
      return _then(_value.copyWith(generationIi: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenerationIiiCopyWith<$Res> get generationIii {
    return $GenerationIiiCopyWith<$Res>(_value.generationIii, (value) {
      return _then(_value.copyWith(generationIii: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenerationIvCopyWith<$Res> get generationIv {
    return $GenerationIvCopyWith<$Res>(_value.generationIv, (value) {
      return _then(_value.copyWith(generationIv: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenerationVCopyWith<$Res> get generationV {
    return $GenerationVCopyWith<$Res>(_value.generationV, (value) {
      return _then(_value.copyWith(generationV: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenerationViiCopyWith<$Res> get generationVii {
    return $GenerationViiCopyWith<$Res>(_value.generationVii, (value) {
      return _then(_value.copyWith(generationVii: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenerationViiiCopyWith<$Res> get generationViii {
    return $GenerationViiiCopyWith<$Res>(_value.generationViii, (value) {
      return _then(_value.copyWith(generationViii: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VersionsCopyWith<$Res> implements $VersionsCopyWith<$Res> {
  factory _$$_VersionsCopyWith(
          _$_Versions value, $Res Function(_$_Versions) then) =
      __$$_VersionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GenerationI generationI,
      GenerationIi generationIi,
      GenerationIii generationIii,
      GenerationIv generationIv,
      GenerationV generationV,
      Map<String, Home> generationVi,
      GenerationVii generationVii,
      GenerationViii generationViii});

  @override
  $GenerationICopyWith<$Res> get generationI;
  @override
  $GenerationIiCopyWith<$Res> get generationIi;
  @override
  $GenerationIiiCopyWith<$Res> get generationIii;
  @override
  $GenerationIvCopyWith<$Res> get generationIv;
  @override
  $GenerationVCopyWith<$Res> get generationV;
  @override
  $GenerationViiCopyWith<$Res> get generationVii;
  @override
  $GenerationViiiCopyWith<$Res> get generationViii;
}

/// @nodoc
class __$$_VersionsCopyWithImpl<$Res>
    extends _$VersionsCopyWithImpl<$Res, _$_Versions>
    implements _$$_VersionsCopyWith<$Res> {
  __$$_VersionsCopyWithImpl(
      _$_Versions _value, $Res Function(_$_Versions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generationI = null,
    Object? generationIi = null,
    Object? generationIii = null,
    Object? generationIv = null,
    Object? generationV = null,
    Object? generationVi = null,
    Object? generationVii = null,
    Object? generationViii = null,
  }) {
    return _then(_$_Versions(
      generationI: null == generationI
          ? _value.generationI
          : generationI // ignore: cast_nullable_to_non_nullable
              as GenerationI,
      generationIi: null == generationIi
          ? _value.generationIi
          : generationIi // ignore: cast_nullable_to_non_nullable
              as GenerationIi,
      generationIii: null == generationIii
          ? _value.generationIii
          : generationIii // ignore: cast_nullable_to_non_nullable
              as GenerationIii,
      generationIv: null == generationIv
          ? _value.generationIv
          : generationIv // ignore: cast_nullable_to_non_nullable
              as GenerationIv,
      generationV: null == generationV
          ? _value.generationV
          : generationV // ignore: cast_nullable_to_non_nullable
              as GenerationV,
      generationVi: null == generationVi
          ? _value._generationVi
          : generationVi // ignore: cast_nullable_to_non_nullable
              as Map<String, Home>,
      generationVii: null == generationVii
          ? _value.generationVii
          : generationVii // ignore: cast_nullable_to_non_nullable
              as GenerationVii,
      generationViii: null == generationViii
          ? _value.generationViii
          : generationViii // ignore: cast_nullable_to_non_nullable
              as GenerationViii,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Versions implements _Versions {
  const _$_Versions(
      {required this.generationI,
      required this.generationIi,
      required this.generationIii,
      required this.generationIv,
      required this.generationV,
      required final Map<String, Home> generationVi,
      required this.generationVii,
      required this.generationViii})
      : _generationVi = generationVi;

  factory _$_Versions.fromJson(Map<String, dynamic> json) =>
      _$$_VersionsFromJson(json);

  @override
  final GenerationI generationI;
  @override
  final GenerationIi generationIi;
  @override
  final GenerationIii generationIii;
  @override
  final GenerationIv generationIv;
  @override
  final GenerationV generationV;
  final Map<String, Home> _generationVi;
  @override
  Map<String, Home> get generationVi {
    if (_generationVi is EqualUnmodifiableMapView) return _generationVi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_generationVi);
  }

  @override
  final GenerationVii generationVii;
  @override
  final GenerationViii generationViii;

  @override
  String toString() {
    return 'Versions(generationI: $generationI, generationIi: $generationIi, generationIii: $generationIii, generationIv: $generationIv, generationV: $generationV, generationVi: $generationVi, generationVii: $generationVii, generationViii: $generationViii)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Versions &&
            (identical(other.generationI, generationI) ||
                other.generationI == generationI) &&
            (identical(other.generationIi, generationIi) ||
                other.generationIi == generationIi) &&
            (identical(other.generationIii, generationIii) ||
                other.generationIii == generationIii) &&
            (identical(other.generationIv, generationIv) ||
                other.generationIv == generationIv) &&
            (identical(other.generationV, generationV) ||
                other.generationV == generationV) &&
            const DeepCollectionEquality()
                .equals(other._generationVi, _generationVi) &&
            (identical(other.generationVii, generationVii) ||
                other.generationVii == generationVii) &&
            (identical(other.generationViii, generationViii) ||
                other.generationViii == generationViii));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      generationI,
      generationIi,
      generationIii,
      generationIv,
      generationV,
      const DeepCollectionEquality().hash(_generationVi),
      generationVii,
      generationViii);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionsCopyWith<_$_Versions> get copyWith =>
      __$$_VersionsCopyWithImpl<_$_Versions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionsToJson(
      this,
    );
  }
}

abstract class _Versions implements Versions {
  const factory _Versions(
      {required final GenerationI generationI,
      required final GenerationIi generationIi,
      required final GenerationIii generationIii,
      required final GenerationIv generationIv,
      required final GenerationV generationV,
      required final Map<String, Home> generationVi,
      required final GenerationVii generationVii,
      required final GenerationViii generationViii}) = _$_Versions;

  factory _Versions.fromJson(Map<String, dynamic> json) = _$_Versions.fromJson;

  @override
  GenerationI get generationI;
  @override
  GenerationIi get generationIi;
  @override
  GenerationIii get generationIii;
  @override
  GenerationIv get generationIv;
  @override
  GenerationV get generationV;
  @override
  Map<String, Home> get generationVi;
  @override
  GenerationVii get generationVii;
  @override
  GenerationViii get generationViii;
  @override
  @JsonKey(ignore: true)
  _$$_VersionsCopyWith<_$_Versions> get copyWith =>
      throw _privateConstructorUsedError;
}

Sprites _$SpritesFromJson(Map<String, dynamic> json) {
  return _Sprites.fromJson(json);
}

/// @nodoc
mixin _$Sprites {
  String get backDefault => throw _privateConstructorUsedError;
  dynamic get backFemale => throw _privateConstructorUsedError;
  String get backShiny => throw _privateConstructorUsedError;
  dynamic get backShinyFemale => throw _privateConstructorUsedError;
  String get frontDefault => throw _privateConstructorUsedError;
  dynamic get frontFemale => throw _privateConstructorUsedError;
  String get frontShiny => throw _privateConstructorUsedError;
  dynamic get frontShinyFemale => throw _privateConstructorUsedError;
  Other get other => throw _privateConstructorUsedError;
  Versions get versions => throw _privateConstructorUsedError;
  Sprites get animated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpritesCopyWith<Sprites> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpritesCopyWith<$Res> {
  factory $SpritesCopyWith(Sprites value, $Res Function(Sprites) then) =
      _$SpritesCopyWithImpl<$Res, Sprites>;
  @useResult
  $Res call(
      {String backDefault,
      dynamic backFemale,
      String backShiny,
      dynamic backShinyFemale,
      String frontDefault,
      dynamic frontFemale,
      String frontShiny,
      dynamic frontShinyFemale,
      Other other,
      Versions versions,
      Sprites animated});

  $OtherCopyWith<$Res> get other;
  $VersionsCopyWith<$Res> get versions;
  $SpritesCopyWith<$Res> get animated;
}

/// @nodoc
class _$SpritesCopyWithImpl<$Res, $Val extends Sprites>
    implements $SpritesCopyWith<$Res> {
  _$SpritesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefault = null,
    Object? backFemale = freezed,
    Object? backShiny = null,
    Object? backShinyFemale = freezed,
    Object? frontDefault = null,
    Object? frontFemale = freezed,
    Object? frontShiny = null,
    Object? frontShinyFemale = freezed,
    Object? other = null,
    Object? versions = null,
    Object? animated = null,
  }) {
    return _then(_value.copyWith(
      backDefault: null == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String,
      backFemale: freezed == backFemale
          ? _value.backFemale
          : backFemale // ignore: cast_nullable_to_non_nullable
              as dynamic,
      backShiny: null == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String,
      backShinyFemale: freezed == backShinyFemale
          ? _value.backShinyFemale
          : backShinyFemale // ignore: cast_nullable_to_non_nullable
              as dynamic,
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontFemale: freezed == frontFemale
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as dynamic,
      frontShiny: null == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String,
      frontShinyFemale: freezed == frontShinyFemale
          ? _value.frontShinyFemale
          : frontShinyFemale // ignore: cast_nullable_to_non_nullable
              as dynamic,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as Other,
      versions: null == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as Versions,
      animated: null == animated
          ? _value.animated
          : animated // ignore: cast_nullable_to_non_nullable
              as Sprites,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OtherCopyWith<$Res> get other {
    return $OtherCopyWith<$Res>(_value.other, (value) {
      return _then(_value.copyWith(other: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VersionsCopyWith<$Res> get versions {
    return $VersionsCopyWith<$Res>(_value.versions, (value) {
      return _then(_value.copyWith(versions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesCopyWith<$Res> get animated {
    return $SpritesCopyWith<$Res>(_value.animated, (value) {
      return _then(_value.copyWith(animated: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SpritesCopyWith<$Res> implements $SpritesCopyWith<$Res> {
  factory _$$_SpritesCopyWith(
          _$_Sprites value, $Res Function(_$_Sprites) then) =
      __$$_SpritesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String backDefault,
      dynamic backFemale,
      String backShiny,
      dynamic backShinyFemale,
      String frontDefault,
      dynamic frontFemale,
      String frontShiny,
      dynamic frontShinyFemale,
      Other other,
      Versions versions,
      Sprites animated});

  @override
  $OtherCopyWith<$Res> get other;
  @override
  $VersionsCopyWith<$Res> get versions;
  @override
  $SpritesCopyWith<$Res> get animated;
}

/// @nodoc
class __$$_SpritesCopyWithImpl<$Res>
    extends _$SpritesCopyWithImpl<$Res, _$_Sprites>
    implements _$$_SpritesCopyWith<$Res> {
  __$$_SpritesCopyWithImpl(_$_Sprites _value, $Res Function(_$_Sprites) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefault = null,
    Object? backFemale = freezed,
    Object? backShiny = null,
    Object? backShinyFemale = freezed,
    Object? frontDefault = null,
    Object? frontFemale = freezed,
    Object? frontShiny = null,
    Object? frontShinyFemale = freezed,
    Object? other = null,
    Object? versions = null,
    Object? animated = null,
  }) {
    return _then(_$_Sprites(
      backDefault: null == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String,
      backFemale: freezed == backFemale
          ? _value.backFemale
          : backFemale // ignore: cast_nullable_to_non_nullable
              as dynamic,
      backShiny: null == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String,
      backShinyFemale: freezed == backShinyFemale
          ? _value.backShinyFemale
          : backShinyFemale // ignore: cast_nullable_to_non_nullable
              as dynamic,
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontFemale: freezed == frontFemale
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as dynamic,
      frontShiny: null == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String,
      frontShinyFemale: freezed == frontShinyFemale
          ? _value.frontShinyFemale
          : frontShinyFemale // ignore: cast_nullable_to_non_nullable
              as dynamic,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as Other,
      versions: null == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as Versions,
      animated: null == animated
          ? _value.animated
          : animated // ignore: cast_nullable_to_non_nullable
              as Sprites,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sprites implements _Sprites {
  const _$_Sprites(
      {required this.backDefault,
      required this.backFemale,
      required this.backShiny,
      required this.backShinyFemale,
      required this.frontDefault,
      required this.frontFemale,
      required this.frontShiny,
      required this.frontShinyFemale,
      required this.other,
      required this.versions,
      required this.animated});

  factory _$_Sprites.fromJson(Map<String, dynamic> json) =>
      _$$_SpritesFromJson(json);

  @override
  final String backDefault;
  @override
  final dynamic backFemale;
  @override
  final String backShiny;
  @override
  final dynamic backShinyFemale;
  @override
  final String frontDefault;
  @override
  final dynamic frontFemale;
  @override
  final String frontShiny;
  @override
  final dynamic frontShinyFemale;
  @override
  final Other other;
  @override
  final Versions versions;
  @override
  final Sprites animated;

  @override
  String toString() {
    return 'Sprites(backDefault: $backDefault, backFemale: $backFemale, backShiny: $backShiny, backShinyFemale: $backShinyFemale, frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale, other: $other, versions: $versions, animated: $animated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sprites &&
            (identical(other.backDefault, backDefault) ||
                other.backDefault == backDefault) &&
            const DeepCollectionEquality()
                .equals(other.backFemale, backFemale) &&
            (identical(other.backShiny, backShiny) ||
                other.backShiny == backShiny) &&
            const DeepCollectionEquality()
                .equals(other.backShinyFemale, backShinyFemale) &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            const DeepCollectionEquality()
                .equals(other.frontFemale, frontFemale) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny) &&
            const DeepCollectionEquality()
                .equals(other.frontShinyFemale, frontShinyFemale) &&
            (identical(other.other, this.other) || other.other == this.other) &&
            (identical(other.versions, versions) ||
                other.versions == versions) &&
            (identical(other.animated, animated) ||
                other.animated == animated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backDefault,
      const DeepCollectionEquality().hash(backFemale),
      backShiny,
      const DeepCollectionEquality().hash(backShinyFemale),
      frontDefault,
      const DeepCollectionEquality().hash(frontFemale),
      frontShiny,
      const DeepCollectionEquality().hash(frontShinyFemale),
      other,
      versions,
      animated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpritesCopyWith<_$_Sprites> get copyWith =>
      __$$_SpritesCopyWithImpl<_$_Sprites>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpritesToJson(
      this,
    );
  }
}

abstract class _Sprites implements Sprites {
  const factory _Sprites(
      {required final String backDefault,
      required final dynamic backFemale,
      required final String backShiny,
      required final dynamic backShinyFemale,
      required final String frontDefault,
      required final dynamic frontFemale,
      required final String frontShiny,
      required final dynamic frontShinyFemale,
      required final Other other,
      required final Versions versions,
      required final Sprites animated}) = _$_Sprites;

  factory _Sprites.fromJson(Map<String, dynamic> json) = _$_Sprites.fromJson;

  @override
  String get backDefault;
  @override
  dynamic get backFemale;
  @override
  String get backShiny;
  @override
  dynamic get backShinyFemale;
  @override
  String get frontDefault;
  @override
  dynamic get frontFemale;
  @override
  String get frontShiny;
  @override
  dynamic get frontShinyFemale;
  @override
  Other get other;
  @override
  Versions get versions;
  @override
  Sprites get animated;
  @override
  @JsonKey(ignore: true)
  _$$_SpritesCopyWith<_$_Sprites> get copyWith =>
      throw _privateConstructorUsedError;
}

GenerationI _$GenerationIFromJson(Map<String, dynamic> json) {
  return _GenerationI.fromJson(json);
}

/// @nodoc
mixin _$GenerationI {
  RedBlue get redBlue => throw _privateConstructorUsedError;
  RedBlue get yellow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerationICopyWith<GenerationI> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerationICopyWith<$Res> {
  factory $GenerationICopyWith(
          GenerationI value, $Res Function(GenerationI) then) =
      _$GenerationICopyWithImpl<$Res, GenerationI>;
  @useResult
  $Res call({RedBlue redBlue, RedBlue yellow});

  $RedBlueCopyWith<$Res> get redBlue;
  $RedBlueCopyWith<$Res> get yellow;
}

/// @nodoc
class _$GenerationICopyWithImpl<$Res, $Val extends GenerationI>
    implements $GenerationICopyWith<$Res> {
  _$GenerationICopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redBlue = null,
    Object? yellow = null,
  }) {
    return _then(_value.copyWith(
      redBlue: null == redBlue
          ? _value.redBlue
          : redBlue // ignore: cast_nullable_to_non_nullable
              as RedBlue,
      yellow: null == yellow
          ? _value.yellow
          : yellow // ignore: cast_nullable_to_non_nullable
              as RedBlue,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RedBlueCopyWith<$Res> get redBlue {
    return $RedBlueCopyWith<$Res>(_value.redBlue, (value) {
      return _then(_value.copyWith(redBlue: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RedBlueCopyWith<$Res> get yellow {
    return $RedBlueCopyWith<$Res>(_value.yellow, (value) {
      return _then(_value.copyWith(yellow: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GenerationICopyWith<$Res>
    implements $GenerationICopyWith<$Res> {
  factory _$$_GenerationICopyWith(
          _$_GenerationI value, $Res Function(_$_GenerationI) then) =
      __$$_GenerationICopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RedBlue redBlue, RedBlue yellow});

  @override
  $RedBlueCopyWith<$Res> get redBlue;
  @override
  $RedBlueCopyWith<$Res> get yellow;
}

/// @nodoc
class __$$_GenerationICopyWithImpl<$Res>
    extends _$GenerationICopyWithImpl<$Res, _$_GenerationI>
    implements _$$_GenerationICopyWith<$Res> {
  __$$_GenerationICopyWithImpl(
      _$_GenerationI _value, $Res Function(_$_GenerationI) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redBlue = null,
    Object? yellow = null,
  }) {
    return _then(_$_GenerationI(
      redBlue: null == redBlue
          ? _value.redBlue
          : redBlue // ignore: cast_nullable_to_non_nullable
              as RedBlue,
      yellow: null == yellow
          ? _value.yellow
          : yellow // ignore: cast_nullable_to_non_nullable
              as RedBlue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenerationI implements _GenerationI {
  const _$_GenerationI({required this.redBlue, required this.yellow});

  factory _$_GenerationI.fromJson(Map<String, dynamic> json) =>
      _$$_GenerationIFromJson(json);

  @override
  final RedBlue redBlue;
  @override
  final RedBlue yellow;

  @override
  String toString() {
    return 'GenerationI(redBlue: $redBlue, yellow: $yellow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerationI &&
            (identical(other.redBlue, redBlue) || other.redBlue == redBlue) &&
            (identical(other.yellow, yellow) || other.yellow == yellow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, redBlue, yellow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerationICopyWith<_$_GenerationI> get copyWith =>
      __$$_GenerationICopyWithImpl<_$_GenerationI>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenerationIToJson(
      this,
    );
  }
}

abstract class _GenerationI implements GenerationI {
  const factory _GenerationI(
      {required final RedBlue redBlue,
      required final RedBlue yellow}) = _$_GenerationI;

  factory _GenerationI.fromJson(Map<String, dynamic> json) =
      _$_GenerationI.fromJson;

  @override
  RedBlue get redBlue;
  @override
  RedBlue get yellow;
  @override
  @JsonKey(ignore: true)
  _$$_GenerationICopyWith<_$_GenerationI> get copyWith =>
      throw _privateConstructorUsedError;
}

RedBlue _$RedBlueFromJson(Map<String, dynamic> json) {
  return _RedBlue.fromJson(json);
}

/// @nodoc
mixin _$RedBlue {
  String get backDefault => throw _privateConstructorUsedError;
  String get backGray => throw _privateConstructorUsedError;
  String get backTransparent => throw _privateConstructorUsedError;
  String get frontDefault => throw _privateConstructorUsedError;
  String get frontGray => throw _privateConstructorUsedError;
  String get frontTransparent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedBlueCopyWith<RedBlue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedBlueCopyWith<$Res> {
  factory $RedBlueCopyWith(RedBlue value, $Res Function(RedBlue) then) =
      _$RedBlueCopyWithImpl<$Res, RedBlue>;
  @useResult
  $Res call(
      {String backDefault,
      String backGray,
      String backTransparent,
      String frontDefault,
      String frontGray,
      String frontTransparent});
}

/// @nodoc
class _$RedBlueCopyWithImpl<$Res, $Val extends RedBlue>
    implements $RedBlueCopyWith<$Res> {
  _$RedBlueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefault = null,
    Object? backGray = null,
    Object? backTransparent = null,
    Object? frontDefault = null,
    Object? frontGray = null,
    Object? frontTransparent = null,
  }) {
    return _then(_value.copyWith(
      backDefault: null == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String,
      backGray: null == backGray
          ? _value.backGray
          : backGray // ignore: cast_nullable_to_non_nullable
              as String,
      backTransparent: null == backTransparent
          ? _value.backTransparent
          : backTransparent // ignore: cast_nullable_to_non_nullable
              as String,
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontGray: null == frontGray
          ? _value.frontGray
          : frontGray // ignore: cast_nullable_to_non_nullable
              as String,
      frontTransparent: null == frontTransparent
          ? _value.frontTransparent
          : frontTransparent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RedBlueCopyWith<$Res> implements $RedBlueCopyWith<$Res> {
  factory _$$_RedBlueCopyWith(
          _$_RedBlue value, $Res Function(_$_RedBlue) then) =
      __$$_RedBlueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String backDefault,
      String backGray,
      String backTransparent,
      String frontDefault,
      String frontGray,
      String frontTransparent});
}

/// @nodoc
class __$$_RedBlueCopyWithImpl<$Res>
    extends _$RedBlueCopyWithImpl<$Res, _$_RedBlue>
    implements _$$_RedBlueCopyWith<$Res> {
  __$$_RedBlueCopyWithImpl(_$_RedBlue _value, $Res Function(_$_RedBlue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefault = null,
    Object? backGray = null,
    Object? backTransparent = null,
    Object? frontDefault = null,
    Object? frontGray = null,
    Object? frontTransparent = null,
  }) {
    return _then(_$_RedBlue(
      backDefault: null == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String,
      backGray: null == backGray
          ? _value.backGray
          : backGray // ignore: cast_nullable_to_non_nullable
              as String,
      backTransparent: null == backTransparent
          ? _value.backTransparent
          : backTransparent // ignore: cast_nullable_to_non_nullable
              as String,
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontGray: null == frontGray
          ? _value.frontGray
          : frontGray // ignore: cast_nullable_to_non_nullable
              as String,
      frontTransparent: null == frontTransparent
          ? _value.frontTransparent
          : frontTransparent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RedBlue implements _RedBlue {
  const _$_RedBlue(
      {required this.backDefault,
      required this.backGray,
      required this.backTransparent,
      required this.frontDefault,
      required this.frontGray,
      required this.frontTransparent});

  factory _$_RedBlue.fromJson(Map<String, dynamic> json) =>
      _$$_RedBlueFromJson(json);

  @override
  final String backDefault;
  @override
  final String backGray;
  @override
  final String backTransparent;
  @override
  final String frontDefault;
  @override
  final String frontGray;
  @override
  final String frontTransparent;

  @override
  String toString() {
    return 'RedBlue(backDefault: $backDefault, backGray: $backGray, backTransparent: $backTransparent, frontDefault: $frontDefault, frontGray: $frontGray, frontTransparent: $frontTransparent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RedBlue &&
            (identical(other.backDefault, backDefault) ||
                other.backDefault == backDefault) &&
            (identical(other.backGray, backGray) ||
                other.backGray == backGray) &&
            (identical(other.backTransparent, backTransparent) ||
                other.backTransparent == backTransparent) &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.frontGray, frontGray) ||
                other.frontGray == frontGray) &&
            (identical(other.frontTransparent, frontTransparent) ||
                other.frontTransparent == frontTransparent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, backDefault, backGray,
      backTransparent, frontDefault, frontGray, frontTransparent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RedBlueCopyWith<_$_RedBlue> get copyWith =>
      __$$_RedBlueCopyWithImpl<_$_RedBlue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RedBlueToJson(
      this,
    );
  }
}

abstract class _RedBlue implements RedBlue {
  const factory _RedBlue(
      {required final String backDefault,
      required final String backGray,
      required final String backTransparent,
      required final String frontDefault,
      required final String frontGray,
      required final String frontTransparent}) = _$_RedBlue;

  factory _RedBlue.fromJson(Map<String, dynamic> json) = _$_RedBlue.fromJson;

  @override
  String get backDefault;
  @override
  String get backGray;
  @override
  String get backTransparent;
  @override
  String get frontDefault;
  @override
  String get frontGray;
  @override
  String get frontTransparent;
  @override
  @JsonKey(ignore: true)
  _$$_RedBlueCopyWith<_$_RedBlue> get copyWith =>
      throw _privateConstructorUsedError;
}

GenerationIi _$GenerationIiFromJson(Map<String, dynamic> json) {
  return _GenerationIi.fromJson(json);
}

/// @nodoc
mixin _$GenerationIi {
  Crystal get crystal => throw _privateConstructorUsedError;
  Gold get gold => throw _privateConstructorUsedError;
  Gold get silver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerationIiCopyWith<GenerationIi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerationIiCopyWith<$Res> {
  factory $GenerationIiCopyWith(
          GenerationIi value, $Res Function(GenerationIi) then) =
      _$GenerationIiCopyWithImpl<$Res, GenerationIi>;
  @useResult
  $Res call({Crystal crystal, Gold gold, Gold silver});

  $CrystalCopyWith<$Res> get crystal;
  $GoldCopyWith<$Res> get gold;
  $GoldCopyWith<$Res> get silver;
}

/// @nodoc
class _$GenerationIiCopyWithImpl<$Res, $Val extends GenerationIi>
    implements $GenerationIiCopyWith<$Res> {
  _$GenerationIiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crystal = null,
    Object? gold = null,
    Object? silver = null,
  }) {
    return _then(_value.copyWith(
      crystal: null == crystal
          ? _value.crystal
          : crystal // ignore: cast_nullable_to_non_nullable
              as Crystal,
      gold: null == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as Gold,
      silver: null == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as Gold,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CrystalCopyWith<$Res> get crystal {
    return $CrystalCopyWith<$Res>(_value.crystal, (value) {
      return _then(_value.copyWith(crystal: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoldCopyWith<$Res> get gold {
    return $GoldCopyWith<$Res>(_value.gold, (value) {
      return _then(_value.copyWith(gold: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoldCopyWith<$Res> get silver {
    return $GoldCopyWith<$Res>(_value.silver, (value) {
      return _then(_value.copyWith(silver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GenerationIiCopyWith<$Res>
    implements $GenerationIiCopyWith<$Res> {
  factory _$$_GenerationIiCopyWith(
          _$_GenerationIi value, $Res Function(_$_GenerationIi) then) =
      __$$_GenerationIiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Crystal crystal, Gold gold, Gold silver});

  @override
  $CrystalCopyWith<$Res> get crystal;
  @override
  $GoldCopyWith<$Res> get gold;
  @override
  $GoldCopyWith<$Res> get silver;
}

/// @nodoc
class __$$_GenerationIiCopyWithImpl<$Res>
    extends _$GenerationIiCopyWithImpl<$Res, _$_GenerationIi>
    implements _$$_GenerationIiCopyWith<$Res> {
  __$$_GenerationIiCopyWithImpl(
      _$_GenerationIi _value, $Res Function(_$_GenerationIi) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crystal = null,
    Object? gold = null,
    Object? silver = null,
  }) {
    return _then(_$_GenerationIi(
      crystal: null == crystal
          ? _value.crystal
          : crystal // ignore: cast_nullable_to_non_nullable
              as Crystal,
      gold: null == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as Gold,
      silver: null == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as Gold,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenerationIi implements _GenerationIi {
  const _$_GenerationIi(
      {required this.crystal, required this.gold, required this.silver});

  factory _$_GenerationIi.fromJson(Map<String, dynamic> json) =>
      _$$_GenerationIiFromJson(json);

  @override
  final Crystal crystal;
  @override
  final Gold gold;
  @override
  final Gold silver;

  @override
  String toString() {
    return 'GenerationIi(crystal: $crystal, gold: $gold, silver: $silver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerationIi &&
            (identical(other.crystal, crystal) || other.crystal == crystal) &&
            (identical(other.gold, gold) || other.gold == gold) &&
            (identical(other.silver, silver) || other.silver == silver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, crystal, gold, silver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerationIiCopyWith<_$_GenerationIi> get copyWith =>
      __$$_GenerationIiCopyWithImpl<_$_GenerationIi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenerationIiToJson(
      this,
    );
  }
}

abstract class _GenerationIi implements GenerationIi {
  const factory _GenerationIi(
      {required final Crystal crystal,
      required final Gold gold,
      required final Gold silver}) = _$_GenerationIi;

  factory _GenerationIi.fromJson(Map<String, dynamic> json) =
      _$_GenerationIi.fromJson;

  @override
  Crystal get crystal;
  @override
  Gold get gold;
  @override
  Gold get silver;
  @override
  @JsonKey(ignore: true)
  _$$_GenerationIiCopyWith<_$_GenerationIi> get copyWith =>
      throw _privateConstructorUsedError;
}

Crystal _$CrystalFromJson(Map<String, dynamic> json) {
  return _Crystal.fromJson(json);
}

/// @nodoc
mixin _$Crystal {
  String get backDefault => throw _privateConstructorUsedError;
  String get backShiny => throw _privateConstructorUsedError;
  String get backShinyTransparent => throw _privateConstructorUsedError;
  String get backTransparent => throw _privateConstructorUsedError;
  String get frontDefault => throw _privateConstructorUsedError;
  String get frontShiny => throw _privateConstructorUsedError;
  String get frontShinyTransparent => throw _privateConstructorUsedError;
  String get frontTransparent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CrystalCopyWith<Crystal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrystalCopyWith<$Res> {
  factory $CrystalCopyWith(Crystal value, $Res Function(Crystal) then) =
      _$CrystalCopyWithImpl<$Res, Crystal>;
  @useResult
  $Res call(
      {String backDefault,
      String backShiny,
      String backShinyTransparent,
      String backTransparent,
      String frontDefault,
      String frontShiny,
      String frontShinyTransparent,
      String frontTransparent});
}

/// @nodoc
class _$CrystalCopyWithImpl<$Res, $Val extends Crystal>
    implements $CrystalCopyWith<$Res> {
  _$CrystalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefault = null,
    Object? backShiny = null,
    Object? backShinyTransparent = null,
    Object? backTransparent = null,
    Object? frontDefault = null,
    Object? frontShiny = null,
    Object? frontShinyTransparent = null,
    Object? frontTransparent = null,
  }) {
    return _then(_value.copyWith(
      backDefault: null == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String,
      backShiny: null == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String,
      backShinyTransparent: null == backShinyTransparent
          ? _value.backShinyTransparent
          : backShinyTransparent // ignore: cast_nullable_to_non_nullable
              as String,
      backTransparent: null == backTransparent
          ? _value.backTransparent
          : backTransparent // ignore: cast_nullable_to_non_nullable
              as String,
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontShiny: null == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String,
      frontShinyTransparent: null == frontShinyTransparent
          ? _value.frontShinyTransparent
          : frontShinyTransparent // ignore: cast_nullable_to_non_nullable
              as String,
      frontTransparent: null == frontTransparent
          ? _value.frontTransparent
          : frontTransparent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CrystalCopyWith<$Res> implements $CrystalCopyWith<$Res> {
  factory _$$_CrystalCopyWith(
          _$_Crystal value, $Res Function(_$_Crystal) then) =
      __$$_CrystalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String backDefault,
      String backShiny,
      String backShinyTransparent,
      String backTransparent,
      String frontDefault,
      String frontShiny,
      String frontShinyTransparent,
      String frontTransparent});
}

/// @nodoc
class __$$_CrystalCopyWithImpl<$Res>
    extends _$CrystalCopyWithImpl<$Res, _$_Crystal>
    implements _$$_CrystalCopyWith<$Res> {
  __$$_CrystalCopyWithImpl(_$_Crystal _value, $Res Function(_$_Crystal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefault = null,
    Object? backShiny = null,
    Object? backShinyTransparent = null,
    Object? backTransparent = null,
    Object? frontDefault = null,
    Object? frontShiny = null,
    Object? frontShinyTransparent = null,
    Object? frontTransparent = null,
  }) {
    return _then(_$_Crystal(
      backDefault: null == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String,
      backShiny: null == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String,
      backShinyTransparent: null == backShinyTransparent
          ? _value.backShinyTransparent
          : backShinyTransparent // ignore: cast_nullable_to_non_nullable
              as String,
      backTransparent: null == backTransparent
          ? _value.backTransparent
          : backTransparent // ignore: cast_nullable_to_non_nullable
              as String,
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontShiny: null == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String,
      frontShinyTransparent: null == frontShinyTransparent
          ? _value.frontShinyTransparent
          : frontShinyTransparent // ignore: cast_nullable_to_non_nullable
              as String,
      frontTransparent: null == frontTransparent
          ? _value.frontTransparent
          : frontTransparent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Crystal implements _Crystal {
  const _$_Crystal(
      {required this.backDefault,
      required this.backShiny,
      required this.backShinyTransparent,
      required this.backTransparent,
      required this.frontDefault,
      required this.frontShiny,
      required this.frontShinyTransparent,
      required this.frontTransparent});

  factory _$_Crystal.fromJson(Map<String, dynamic> json) =>
      _$$_CrystalFromJson(json);

  @override
  final String backDefault;
  @override
  final String backShiny;
  @override
  final String backShinyTransparent;
  @override
  final String backTransparent;
  @override
  final String frontDefault;
  @override
  final String frontShiny;
  @override
  final String frontShinyTransparent;
  @override
  final String frontTransparent;

  @override
  String toString() {
    return 'Crystal(backDefault: $backDefault, backShiny: $backShiny, backShinyTransparent: $backShinyTransparent, backTransparent: $backTransparent, frontDefault: $frontDefault, frontShiny: $frontShiny, frontShinyTransparent: $frontShinyTransparent, frontTransparent: $frontTransparent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Crystal &&
            (identical(other.backDefault, backDefault) ||
                other.backDefault == backDefault) &&
            (identical(other.backShiny, backShiny) ||
                other.backShiny == backShiny) &&
            (identical(other.backShinyTransparent, backShinyTransparent) ||
                other.backShinyTransparent == backShinyTransparent) &&
            (identical(other.backTransparent, backTransparent) ||
                other.backTransparent == backTransparent) &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny) &&
            (identical(other.frontShinyTransparent, frontShinyTransparent) ||
                other.frontShinyTransparent == frontShinyTransparent) &&
            (identical(other.frontTransparent, frontTransparent) ||
                other.frontTransparent == frontTransparent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backDefault,
      backShiny,
      backShinyTransparent,
      backTransparent,
      frontDefault,
      frontShiny,
      frontShinyTransparent,
      frontTransparent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CrystalCopyWith<_$_Crystal> get copyWith =>
      __$$_CrystalCopyWithImpl<_$_Crystal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CrystalToJson(
      this,
    );
  }
}

abstract class _Crystal implements Crystal {
  const factory _Crystal(
      {required final String backDefault,
      required final String backShiny,
      required final String backShinyTransparent,
      required final String backTransparent,
      required final String frontDefault,
      required final String frontShiny,
      required final String frontShinyTransparent,
      required final String frontTransparent}) = _$_Crystal;

  factory _Crystal.fromJson(Map<String, dynamic> json) = _$_Crystal.fromJson;

  @override
  String get backDefault;
  @override
  String get backShiny;
  @override
  String get backShinyTransparent;
  @override
  String get backTransparent;
  @override
  String get frontDefault;
  @override
  String get frontShiny;
  @override
  String get frontShinyTransparent;
  @override
  String get frontTransparent;
  @override
  @JsonKey(ignore: true)
  _$$_CrystalCopyWith<_$_Crystal> get copyWith =>
      throw _privateConstructorUsedError;
}

Gold _$GoldFromJson(Map<String, dynamic> json) {
  return _Gold.fromJson(json);
}

/// @nodoc
mixin _$Gold {
  String get backDefault => throw _privateConstructorUsedError;
  String get backShiny => throw _privateConstructorUsedError;
  String get frontDefault => throw _privateConstructorUsedError;
  String get frontShiny => throw _privateConstructorUsedError;
  String get frontTransparent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoldCopyWith<Gold> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoldCopyWith<$Res> {
  factory $GoldCopyWith(Gold value, $Res Function(Gold) then) =
      _$GoldCopyWithImpl<$Res, Gold>;
  @useResult
  $Res call(
      {String backDefault,
      String backShiny,
      String frontDefault,
      String frontShiny,
      String frontTransparent});
}

/// @nodoc
class _$GoldCopyWithImpl<$Res, $Val extends Gold>
    implements $GoldCopyWith<$Res> {
  _$GoldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefault = null,
    Object? backShiny = null,
    Object? frontDefault = null,
    Object? frontShiny = null,
    Object? frontTransparent = null,
  }) {
    return _then(_value.copyWith(
      backDefault: null == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String,
      backShiny: null == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String,
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontShiny: null == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String,
      frontTransparent: null == frontTransparent
          ? _value.frontTransparent
          : frontTransparent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GoldCopyWith<$Res> implements $GoldCopyWith<$Res> {
  factory _$$_GoldCopyWith(_$_Gold value, $Res Function(_$_Gold) then) =
      __$$_GoldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String backDefault,
      String backShiny,
      String frontDefault,
      String frontShiny,
      String frontTransparent});
}

/// @nodoc
class __$$_GoldCopyWithImpl<$Res> extends _$GoldCopyWithImpl<$Res, _$_Gold>
    implements _$$_GoldCopyWith<$Res> {
  __$$_GoldCopyWithImpl(_$_Gold _value, $Res Function(_$_Gold) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefault = null,
    Object? backShiny = null,
    Object? frontDefault = null,
    Object? frontShiny = null,
    Object? frontTransparent = null,
  }) {
    return _then(_$_Gold(
      backDefault: null == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String,
      backShiny: null == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String,
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontShiny: null == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String,
      frontTransparent: null == frontTransparent
          ? _value.frontTransparent
          : frontTransparent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Gold implements _Gold {
  const _$_Gold(
      {required this.backDefault,
      required this.backShiny,
      required this.frontDefault,
      required this.frontShiny,
      required this.frontTransparent});

  factory _$_Gold.fromJson(Map<String, dynamic> json) => _$$_GoldFromJson(json);

  @override
  final String backDefault;
  @override
  final String backShiny;
  @override
  final String frontDefault;
  @override
  final String frontShiny;
  @override
  final String frontTransparent;

  @override
  String toString() {
    return 'Gold(backDefault: $backDefault, backShiny: $backShiny, frontDefault: $frontDefault, frontShiny: $frontShiny, frontTransparent: $frontTransparent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Gold &&
            (identical(other.backDefault, backDefault) ||
                other.backDefault == backDefault) &&
            (identical(other.backShiny, backShiny) ||
                other.backShiny == backShiny) &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny) &&
            (identical(other.frontTransparent, frontTransparent) ||
                other.frontTransparent == frontTransparent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, backDefault, backShiny,
      frontDefault, frontShiny, frontTransparent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GoldCopyWith<_$_Gold> get copyWith =>
      __$$_GoldCopyWithImpl<_$_Gold>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoldToJson(
      this,
    );
  }
}

abstract class _Gold implements Gold {
  const factory _Gold(
      {required final String backDefault,
      required final String backShiny,
      required final String frontDefault,
      required final String frontShiny,
      required final String frontTransparent}) = _$_Gold;

  factory _Gold.fromJson(Map<String, dynamic> json) = _$_Gold.fromJson;

  @override
  String get backDefault;
  @override
  String get backShiny;
  @override
  String get frontDefault;
  @override
  String get frontShiny;
  @override
  String get frontTransparent;
  @override
  @JsonKey(ignore: true)
  _$$_GoldCopyWith<_$_Gold> get copyWith => throw _privateConstructorUsedError;
}

GenerationIii _$GenerationIiiFromJson(Map<String, dynamic> json) {
  return _GenerationIii.fromJson(json);
}

/// @nodoc
mixin _$GenerationIii {
  Emerald get emerald => throw _privateConstructorUsedError;
  Gold get fireredLeafgreen => throw _privateConstructorUsedError;
  Gold get rubySapphire => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerationIiiCopyWith<GenerationIii> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerationIiiCopyWith<$Res> {
  factory $GenerationIiiCopyWith(
          GenerationIii value, $Res Function(GenerationIii) then) =
      _$GenerationIiiCopyWithImpl<$Res, GenerationIii>;
  @useResult
  $Res call({Emerald emerald, Gold fireredLeafgreen, Gold rubySapphire});

  $EmeraldCopyWith<$Res> get emerald;
  $GoldCopyWith<$Res> get fireredLeafgreen;
  $GoldCopyWith<$Res> get rubySapphire;
}

/// @nodoc
class _$GenerationIiiCopyWithImpl<$Res, $Val extends GenerationIii>
    implements $GenerationIiiCopyWith<$Res> {
  _$GenerationIiiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emerald = null,
    Object? fireredLeafgreen = null,
    Object? rubySapphire = null,
  }) {
    return _then(_value.copyWith(
      emerald: null == emerald
          ? _value.emerald
          : emerald // ignore: cast_nullable_to_non_nullable
              as Emerald,
      fireredLeafgreen: null == fireredLeafgreen
          ? _value.fireredLeafgreen
          : fireredLeafgreen // ignore: cast_nullable_to_non_nullable
              as Gold,
      rubySapphire: null == rubySapphire
          ? _value.rubySapphire
          : rubySapphire // ignore: cast_nullable_to_non_nullable
              as Gold,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmeraldCopyWith<$Res> get emerald {
    return $EmeraldCopyWith<$Res>(_value.emerald, (value) {
      return _then(_value.copyWith(emerald: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoldCopyWith<$Res> get fireredLeafgreen {
    return $GoldCopyWith<$Res>(_value.fireredLeafgreen, (value) {
      return _then(_value.copyWith(fireredLeafgreen: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoldCopyWith<$Res> get rubySapphire {
    return $GoldCopyWith<$Res>(_value.rubySapphire, (value) {
      return _then(_value.copyWith(rubySapphire: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GenerationIiiCopyWith<$Res>
    implements $GenerationIiiCopyWith<$Res> {
  factory _$$_GenerationIiiCopyWith(
          _$_GenerationIii value, $Res Function(_$_GenerationIii) then) =
      __$$_GenerationIiiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Emerald emerald, Gold fireredLeafgreen, Gold rubySapphire});

  @override
  $EmeraldCopyWith<$Res> get emerald;
  @override
  $GoldCopyWith<$Res> get fireredLeafgreen;
  @override
  $GoldCopyWith<$Res> get rubySapphire;
}

/// @nodoc
class __$$_GenerationIiiCopyWithImpl<$Res>
    extends _$GenerationIiiCopyWithImpl<$Res, _$_GenerationIii>
    implements _$$_GenerationIiiCopyWith<$Res> {
  __$$_GenerationIiiCopyWithImpl(
      _$_GenerationIii _value, $Res Function(_$_GenerationIii) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emerald = null,
    Object? fireredLeafgreen = null,
    Object? rubySapphire = null,
  }) {
    return _then(_$_GenerationIii(
      emerald: null == emerald
          ? _value.emerald
          : emerald // ignore: cast_nullable_to_non_nullable
              as Emerald,
      fireredLeafgreen: null == fireredLeafgreen
          ? _value.fireredLeafgreen
          : fireredLeafgreen // ignore: cast_nullable_to_non_nullable
              as Gold,
      rubySapphire: null == rubySapphire
          ? _value.rubySapphire
          : rubySapphire // ignore: cast_nullable_to_non_nullable
              as Gold,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenerationIii implements _GenerationIii {
  const _$_GenerationIii(
      {required this.emerald,
      required this.fireredLeafgreen,
      required this.rubySapphire});

  factory _$_GenerationIii.fromJson(Map<String, dynamic> json) =>
      _$$_GenerationIiiFromJson(json);

  @override
  final Emerald emerald;
  @override
  final Gold fireredLeafgreen;
  @override
  final Gold rubySapphire;

  @override
  String toString() {
    return 'GenerationIii(emerald: $emerald, fireredLeafgreen: $fireredLeafgreen, rubySapphire: $rubySapphire)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerationIii &&
            (identical(other.emerald, emerald) || other.emerald == emerald) &&
            (identical(other.fireredLeafgreen, fireredLeafgreen) ||
                other.fireredLeafgreen == fireredLeafgreen) &&
            (identical(other.rubySapphire, rubySapphire) ||
                other.rubySapphire == rubySapphire));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, emerald, fireredLeafgreen, rubySapphire);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerationIiiCopyWith<_$_GenerationIii> get copyWith =>
      __$$_GenerationIiiCopyWithImpl<_$_GenerationIii>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenerationIiiToJson(
      this,
    );
  }
}

abstract class _GenerationIii implements GenerationIii {
  const factory _GenerationIii(
      {required final Emerald emerald,
      required final Gold fireredLeafgreen,
      required final Gold rubySapphire}) = _$_GenerationIii;

  factory _GenerationIii.fromJson(Map<String, dynamic> json) =
      _$_GenerationIii.fromJson;

  @override
  Emerald get emerald;
  @override
  Gold get fireredLeafgreen;
  @override
  Gold get rubySapphire;
  @override
  @JsonKey(ignore: true)
  _$$_GenerationIiiCopyWith<_$_GenerationIii> get copyWith =>
      throw _privateConstructorUsedError;
}

Emerald _$EmeraldFromJson(Map<String, dynamic> json) {
  return _Emerald.fromJson(json);
}

/// @nodoc
mixin _$Emerald {
  String get frontDefault => throw _privateConstructorUsedError;
  String get frontShiny => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmeraldCopyWith<Emerald> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmeraldCopyWith<$Res> {
  factory $EmeraldCopyWith(Emerald value, $Res Function(Emerald) then) =
      _$EmeraldCopyWithImpl<$Res, Emerald>;
  @useResult
  $Res call({String frontDefault, String frontShiny});
}

/// @nodoc
class _$EmeraldCopyWithImpl<$Res, $Val extends Emerald>
    implements $EmeraldCopyWith<$Res> {
  _$EmeraldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? frontShiny = null,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontShiny: null == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmeraldCopyWith<$Res> implements $EmeraldCopyWith<$Res> {
  factory _$$_EmeraldCopyWith(
          _$_Emerald value, $Res Function(_$_Emerald) then) =
      __$$_EmeraldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String frontDefault, String frontShiny});
}

/// @nodoc
class __$$_EmeraldCopyWithImpl<$Res>
    extends _$EmeraldCopyWithImpl<$Res, _$_Emerald>
    implements _$$_EmeraldCopyWith<$Res> {
  __$$_EmeraldCopyWithImpl(_$_Emerald _value, $Res Function(_$_Emerald) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? frontShiny = null,
  }) {
    return _then(_$_Emerald(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontShiny: null == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Emerald implements _Emerald {
  const _$_Emerald({required this.frontDefault, required this.frontShiny});

  factory _$_Emerald.fromJson(Map<String, dynamic> json) =>
      _$$_EmeraldFromJson(json);

  @override
  final String frontDefault;
  @override
  final String frontShiny;

  @override
  String toString() {
    return 'Emerald(frontDefault: $frontDefault, frontShiny: $frontShiny)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Emerald &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault, frontShiny);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmeraldCopyWith<_$_Emerald> get copyWith =>
      __$$_EmeraldCopyWithImpl<_$_Emerald>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmeraldToJson(
      this,
    );
  }
}

abstract class _Emerald implements Emerald {
  const factory _Emerald(
      {required final String frontDefault,
      required final String frontShiny}) = _$_Emerald;

  factory _Emerald.fromJson(Map<String, dynamic> json) = _$_Emerald.fromJson;

  @override
  String get frontDefault;
  @override
  String get frontShiny;
  @override
  @JsonKey(ignore: true)
  _$$_EmeraldCopyWith<_$_Emerald> get copyWith =>
      throw _privateConstructorUsedError;
}

Home _$HomeFromJson(Map<String, dynamic> json) {
  return _Home.fromJson(json);
}

/// @nodoc
mixin _$Home {
  String get frontDefault => throw _privateConstructorUsedError;
  dynamic get frontFemale => throw _privateConstructorUsedError;
  String get frontShiny => throw _privateConstructorUsedError;
  dynamic get frontShinyFemale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeCopyWith<Home> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCopyWith<$Res> {
  factory $HomeCopyWith(Home value, $Res Function(Home) then) =
      _$HomeCopyWithImpl<$Res, Home>;
  @useResult
  $Res call(
      {String frontDefault,
      dynamic frontFemale,
      String frontShiny,
      dynamic frontShinyFemale});
}

/// @nodoc
class _$HomeCopyWithImpl<$Res, $Val extends Home>
    implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? frontFemale = freezed,
    Object? frontShiny = null,
    Object? frontShinyFemale = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontFemale: freezed == frontFemale
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as dynamic,
      frontShiny: null == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String,
      frontShinyFemale: freezed == frontShinyFemale
          ? _value.frontShinyFemale
          : frontShinyFemale // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeCopyWith<$Res> implements $HomeCopyWith<$Res> {
  factory _$$_HomeCopyWith(_$_Home value, $Res Function(_$_Home) then) =
      __$$_HomeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String frontDefault,
      dynamic frontFemale,
      String frontShiny,
      dynamic frontShinyFemale});
}

/// @nodoc
class __$$_HomeCopyWithImpl<$Res> extends _$HomeCopyWithImpl<$Res, _$_Home>
    implements _$$_HomeCopyWith<$Res> {
  __$$_HomeCopyWithImpl(_$_Home _value, $Res Function(_$_Home) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? frontFemale = freezed,
    Object? frontShiny = null,
    Object? frontShinyFemale = freezed,
  }) {
    return _then(_$_Home(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontFemale: freezed == frontFemale
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as dynamic,
      frontShiny: null == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String,
      frontShinyFemale: freezed == frontShinyFemale
          ? _value.frontShinyFemale
          : frontShinyFemale // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Home implements _Home {
  const _$_Home(
      {required this.frontDefault,
      required this.frontFemale,
      required this.frontShiny,
      required this.frontShinyFemale});

  factory _$_Home.fromJson(Map<String, dynamic> json) => _$$_HomeFromJson(json);

  @override
  final String frontDefault;
  @override
  final dynamic frontFemale;
  @override
  final String frontShiny;
  @override
  final dynamic frontShinyFemale;

  @override
  String toString() {
    return 'Home(frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Home &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            const DeepCollectionEquality()
                .equals(other.frontFemale, frontFemale) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny) &&
            const DeepCollectionEquality()
                .equals(other.frontShinyFemale, frontShinyFemale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      frontDefault,
      const DeepCollectionEquality().hash(frontFemale),
      frontShiny,
      const DeepCollectionEquality().hash(frontShinyFemale));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeCopyWith<_$_Home> get copyWith =>
      __$$_HomeCopyWithImpl<_$_Home>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeToJson(
      this,
    );
  }
}

abstract class _Home implements Home {
  const factory _Home(
      {required final String frontDefault,
      required final dynamic frontFemale,
      required final String frontShiny,
      required final dynamic frontShinyFemale}) = _$_Home;

  factory _Home.fromJson(Map<String, dynamic> json) = _$_Home.fromJson;

  @override
  String get frontDefault;
  @override
  dynamic get frontFemale;
  @override
  String get frontShiny;
  @override
  dynamic get frontShinyFemale;
  @override
  @JsonKey(ignore: true)
  _$$_HomeCopyWith<_$_Home> get copyWith => throw _privateConstructorUsedError;
}

GenerationVii _$GenerationViiFromJson(Map<String, dynamic> json) {
  return _GenerationVii.fromJson(json);
}

/// @nodoc
mixin _$GenerationVii {
  DreamWorld get icons => throw _privateConstructorUsedError;
  Home get ultraSunUltraMoon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerationViiCopyWith<GenerationVii> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerationViiCopyWith<$Res> {
  factory $GenerationViiCopyWith(
          GenerationVii value, $Res Function(GenerationVii) then) =
      _$GenerationViiCopyWithImpl<$Res, GenerationVii>;
  @useResult
  $Res call({DreamWorld icons, Home ultraSunUltraMoon});

  $DreamWorldCopyWith<$Res> get icons;
  $HomeCopyWith<$Res> get ultraSunUltraMoon;
}

/// @nodoc
class _$GenerationViiCopyWithImpl<$Res, $Val extends GenerationVii>
    implements $GenerationViiCopyWith<$Res> {
  _$GenerationViiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icons = null,
    Object? ultraSunUltraMoon = null,
  }) {
    return _then(_value.copyWith(
      icons: null == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as DreamWorld,
      ultraSunUltraMoon: null == ultraSunUltraMoon
          ? _value.ultraSunUltraMoon
          : ultraSunUltraMoon // ignore: cast_nullable_to_non_nullable
              as Home,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DreamWorldCopyWith<$Res> get icons {
    return $DreamWorldCopyWith<$Res>(_value.icons, (value) {
      return _then(_value.copyWith(icons: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeCopyWith<$Res> get ultraSunUltraMoon {
    return $HomeCopyWith<$Res>(_value.ultraSunUltraMoon, (value) {
      return _then(_value.copyWith(ultraSunUltraMoon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GenerationViiCopyWith<$Res>
    implements $GenerationViiCopyWith<$Res> {
  factory _$$_GenerationViiCopyWith(
          _$_GenerationVii value, $Res Function(_$_GenerationVii) then) =
      __$$_GenerationViiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DreamWorld icons, Home ultraSunUltraMoon});

  @override
  $DreamWorldCopyWith<$Res> get icons;
  @override
  $HomeCopyWith<$Res> get ultraSunUltraMoon;
}

/// @nodoc
class __$$_GenerationViiCopyWithImpl<$Res>
    extends _$GenerationViiCopyWithImpl<$Res, _$_GenerationVii>
    implements _$$_GenerationViiCopyWith<$Res> {
  __$$_GenerationViiCopyWithImpl(
      _$_GenerationVii _value, $Res Function(_$_GenerationVii) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icons = null,
    Object? ultraSunUltraMoon = null,
  }) {
    return _then(_$_GenerationVii(
      icons: null == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as DreamWorld,
      ultraSunUltraMoon: null == ultraSunUltraMoon
          ? _value.ultraSunUltraMoon
          : ultraSunUltraMoon // ignore: cast_nullable_to_non_nullable
              as Home,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenerationVii implements _GenerationVii {
  const _$_GenerationVii(
      {required this.icons, required this.ultraSunUltraMoon});

  factory _$_GenerationVii.fromJson(Map<String, dynamic> json) =>
      _$$_GenerationViiFromJson(json);

  @override
  final DreamWorld icons;
  @override
  final Home ultraSunUltraMoon;

  @override
  String toString() {
    return 'GenerationVii(icons: $icons, ultraSunUltraMoon: $ultraSunUltraMoon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerationVii &&
            (identical(other.icons, icons) || other.icons == icons) &&
            (identical(other.ultraSunUltraMoon, ultraSunUltraMoon) ||
                other.ultraSunUltraMoon == ultraSunUltraMoon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, icons, ultraSunUltraMoon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerationViiCopyWith<_$_GenerationVii> get copyWith =>
      __$$_GenerationViiCopyWithImpl<_$_GenerationVii>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenerationViiToJson(
      this,
    );
  }
}

abstract class _GenerationVii implements GenerationVii {
  const factory _GenerationVii(
      {required final DreamWorld icons,
      required final Home ultraSunUltraMoon}) = _$_GenerationVii;

  factory _GenerationVii.fromJson(Map<String, dynamic> json) =
      _$_GenerationVii.fromJson;

  @override
  DreamWorld get icons;
  @override
  Home get ultraSunUltraMoon;
  @override
  @JsonKey(ignore: true)
  _$$_GenerationViiCopyWith<_$_GenerationVii> get copyWith =>
      throw _privateConstructorUsedError;
}

DreamWorld _$DreamWorldFromJson(Map<String, dynamic> json) {
  return _DreamWorld.fromJson(json);
}

/// @nodoc
mixin _$DreamWorld {
  String get frontDefault => throw _privateConstructorUsedError;
  dynamic get frontFemale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DreamWorldCopyWith<DreamWorld> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DreamWorldCopyWith<$Res> {
  factory $DreamWorldCopyWith(
          DreamWorld value, $Res Function(DreamWorld) then) =
      _$DreamWorldCopyWithImpl<$Res, DreamWorld>;
  @useResult
  $Res call({String frontDefault, dynamic frontFemale});
}

/// @nodoc
class _$DreamWorldCopyWithImpl<$Res, $Val extends DreamWorld>
    implements $DreamWorldCopyWith<$Res> {
  _$DreamWorldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? frontFemale = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontFemale: freezed == frontFemale
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DreamWorldCopyWith<$Res>
    implements $DreamWorldCopyWith<$Res> {
  factory _$$_DreamWorldCopyWith(
          _$_DreamWorld value, $Res Function(_$_DreamWorld) then) =
      __$$_DreamWorldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String frontDefault, dynamic frontFemale});
}

/// @nodoc
class __$$_DreamWorldCopyWithImpl<$Res>
    extends _$DreamWorldCopyWithImpl<$Res, _$_DreamWorld>
    implements _$$_DreamWorldCopyWith<$Res> {
  __$$_DreamWorldCopyWithImpl(
      _$_DreamWorld _value, $Res Function(_$_DreamWorld) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? frontFemale = freezed,
  }) {
    return _then(_$_DreamWorld(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontFemale: freezed == frontFemale
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DreamWorld implements _DreamWorld {
  const _$_DreamWorld({required this.frontDefault, required this.frontFemale});

  factory _$_DreamWorld.fromJson(Map<String, dynamic> json) =>
      _$$_DreamWorldFromJson(json);

  @override
  final String frontDefault;
  @override
  final dynamic frontFemale;

  @override
  String toString() {
    return 'DreamWorld(frontDefault: $frontDefault, frontFemale: $frontFemale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DreamWorld &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            const DeepCollectionEquality()
                .equals(other.frontFemale, frontFemale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault,
      const DeepCollectionEquality().hash(frontFemale));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DreamWorldCopyWith<_$_DreamWorld> get copyWith =>
      __$$_DreamWorldCopyWithImpl<_$_DreamWorld>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DreamWorldToJson(
      this,
    );
  }
}

abstract class _DreamWorld implements DreamWorld {
  const factory _DreamWorld(
      {required final String frontDefault,
      required final dynamic frontFemale}) = _$_DreamWorld;

  factory _DreamWorld.fromJson(Map<String, dynamic> json) =
      _$_DreamWorld.fromJson;

  @override
  String get frontDefault;
  @override
  dynamic get frontFemale;
  @override
  @JsonKey(ignore: true)
  _$$_DreamWorldCopyWith<_$_DreamWorld> get copyWith =>
      throw _privateConstructorUsedError;
}

GenerationViii _$GenerationViiiFromJson(Map<String, dynamic> json) {
  return _GenerationViii.fromJson(json);
}

/// @nodoc
mixin _$GenerationViii {
  DreamWorld get icons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerationViiiCopyWith<GenerationViii> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerationViiiCopyWith<$Res> {
  factory $GenerationViiiCopyWith(
          GenerationViii value, $Res Function(GenerationViii) then) =
      _$GenerationViiiCopyWithImpl<$Res, GenerationViii>;
  @useResult
  $Res call({DreamWorld icons});

  $DreamWorldCopyWith<$Res> get icons;
}

/// @nodoc
class _$GenerationViiiCopyWithImpl<$Res, $Val extends GenerationViii>
    implements $GenerationViiiCopyWith<$Res> {
  _$GenerationViiiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icons = null,
  }) {
    return _then(_value.copyWith(
      icons: null == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as DreamWorld,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DreamWorldCopyWith<$Res> get icons {
    return $DreamWorldCopyWith<$Res>(_value.icons, (value) {
      return _then(_value.copyWith(icons: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GenerationViiiCopyWith<$Res>
    implements $GenerationViiiCopyWith<$Res> {
  factory _$$_GenerationViiiCopyWith(
          _$_GenerationViii value, $Res Function(_$_GenerationViii) then) =
      __$$_GenerationViiiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DreamWorld icons});

  @override
  $DreamWorldCopyWith<$Res> get icons;
}

/// @nodoc
class __$$_GenerationViiiCopyWithImpl<$Res>
    extends _$GenerationViiiCopyWithImpl<$Res, _$_GenerationViii>
    implements _$$_GenerationViiiCopyWith<$Res> {
  __$$_GenerationViiiCopyWithImpl(
      _$_GenerationViii _value, $Res Function(_$_GenerationViii) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icons = null,
  }) {
    return _then(_$_GenerationViii(
      icons: null == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as DreamWorld,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenerationViii implements _GenerationViii {
  const _$_GenerationViii({required this.icons});

  factory _$_GenerationViii.fromJson(Map<String, dynamic> json) =>
      _$$_GenerationViiiFromJson(json);

  @override
  final DreamWorld icons;

  @override
  String toString() {
    return 'GenerationViii(icons: $icons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerationViii &&
            (identical(other.icons, icons) || other.icons == icons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, icons);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerationViiiCopyWith<_$_GenerationViii> get copyWith =>
      __$$_GenerationViiiCopyWithImpl<_$_GenerationViii>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenerationViiiToJson(
      this,
    );
  }
}

abstract class _GenerationViii implements GenerationViii {
  const factory _GenerationViii({required final DreamWorld icons}) =
      _$_GenerationViii;

  factory _GenerationViii.fromJson(Map<String, dynamic> json) =
      _$_GenerationViii.fromJson;

  @override
  DreamWorld get icons;
  @override
  @JsonKey(ignore: true)
  _$$_GenerationViiiCopyWith<_$_GenerationViii> get copyWith =>
      throw _privateConstructorUsedError;
}

Other _$OtherFromJson(Map<String, dynamic> json) {
  return _Other.fromJson(json);
}

/// @nodoc
mixin _$Other {
  DreamWorld get dreamWorld => throw _privateConstructorUsedError;
  Home get home => throw _privateConstructorUsedError;
  OfficialArtwork get officialArtwork => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherCopyWith<Other> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherCopyWith<$Res> {
  factory $OtherCopyWith(Other value, $Res Function(Other) then) =
      _$OtherCopyWithImpl<$Res, Other>;
  @useResult
  $Res call(
      {DreamWorld dreamWorld, Home home, OfficialArtwork officialArtwork});

  $DreamWorldCopyWith<$Res> get dreamWorld;
  $HomeCopyWith<$Res> get home;
  $OfficialArtworkCopyWith<$Res> get officialArtwork;
}

/// @nodoc
class _$OtherCopyWithImpl<$Res, $Val extends Other>
    implements $OtherCopyWith<$Res> {
  _$OtherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dreamWorld = null,
    Object? home = null,
    Object? officialArtwork = null,
  }) {
    return _then(_value.copyWith(
      dreamWorld: null == dreamWorld
          ? _value.dreamWorld
          : dreamWorld // ignore: cast_nullable_to_non_nullable
              as DreamWorld,
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Home,
      officialArtwork: null == officialArtwork
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as OfficialArtwork,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DreamWorldCopyWith<$Res> get dreamWorld {
    return $DreamWorldCopyWith<$Res>(_value.dreamWorld, (value) {
      return _then(_value.copyWith(dreamWorld: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeCopyWith<$Res> get home {
    return $HomeCopyWith<$Res>(_value.home, (value) {
      return _then(_value.copyWith(home: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OfficialArtworkCopyWith<$Res> get officialArtwork {
    return $OfficialArtworkCopyWith<$Res>(_value.officialArtwork, (value) {
      return _then(_value.copyWith(officialArtwork: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OtherCopyWith<$Res> implements $OtherCopyWith<$Res> {
  factory _$$_OtherCopyWith(_$_Other value, $Res Function(_$_Other) then) =
      __$$_OtherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DreamWorld dreamWorld, Home home, OfficialArtwork officialArtwork});

  @override
  $DreamWorldCopyWith<$Res> get dreamWorld;
  @override
  $HomeCopyWith<$Res> get home;
  @override
  $OfficialArtworkCopyWith<$Res> get officialArtwork;
}

/// @nodoc
class __$$_OtherCopyWithImpl<$Res> extends _$OtherCopyWithImpl<$Res, _$_Other>
    implements _$$_OtherCopyWith<$Res> {
  __$$_OtherCopyWithImpl(_$_Other _value, $Res Function(_$_Other) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dreamWorld = null,
    Object? home = null,
    Object? officialArtwork = null,
  }) {
    return _then(_$_Other(
      dreamWorld: null == dreamWorld
          ? _value.dreamWorld
          : dreamWorld // ignore: cast_nullable_to_non_nullable
              as DreamWorld,
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Home,
      officialArtwork: null == officialArtwork
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as OfficialArtwork,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Other implements _Other {
  const _$_Other(
      {required this.dreamWorld,
      required this.home,
      required this.officialArtwork});

  factory _$_Other.fromJson(Map<String, dynamic> json) =>
      _$$_OtherFromJson(json);

  @override
  final DreamWorld dreamWorld;
  @override
  final Home home;
  @override
  final OfficialArtwork officialArtwork;

  @override
  String toString() {
    return 'Other(dreamWorld: $dreamWorld, home: $home, officialArtwork: $officialArtwork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Other &&
            (identical(other.dreamWorld, dreamWorld) ||
                other.dreamWorld == dreamWorld) &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.officialArtwork, officialArtwork) ||
                other.officialArtwork == officialArtwork));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dreamWorld, home, officialArtwork);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtherCopyWith<_$_Other> get copyWith =>
      __$$_OtherCopyWithImpl<_$_Other>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtherToJson(
      this,
    );
  }
}

abstract class _Other implements Other {
  const factory _Other(
      {required final DreamWorld dreamWorld,
      required final Home home,
      required final OfficialArtwork officialArtwork}) = _$_Other;

  factory _Other.fromJson(Map<String, dynamic> json) = _$_Other.fromJson;

  @override
  DreamWorld get dreamWorld;
  @override
  Home get home;
  @override
  OfficialArtwork get officialArtwork;
  @override
  @JsonKey(ignore: true)
  _$$_OtherCopyWith<_$_Other> get copyWith =>
      throw _privateConstructorUsedError;
}

OfficialArtwork _$OfficialArtworkFromJson(Map<String, dynamic> json) {
  return _OfficialArtwork.fromJson(json);
}

/// @nodoc
mixin _$OfficialArtwork {
  String get frontDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfficialArtworkCopyWith<OfficialArtwork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficialArtworkCopyWith<$Res> {
  factory $OfficialArtworkCopyWith(
          OfficialArtwork value, $Res Function(OfficialArtwork) then) =
      _$OfficialArtworkCopyWithImpl<$Res, OfficialArtwork>;
  @useResult
  $Res call({String frontDefault});
}

/// @nodoc
class _$OfficialArtworkCopyWithImpl<$Res, $Val extends OfficialArtwork>
    implements $OfficialArtworkCopyWith<$Res> {
  _$OfficialArtworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfficialArtworkCopyWith<$Res>
    implements $OfficialArtworkCopyWith<$Res> {
  factory _$$_OfficialArtworkCopyWith(
          _$_OfficialArtwork value, $Res Function(_$_OfficialArtwork) then) =
      __$$_OfficialArtworkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String frontDefault});
}

/// @nodoc
class __$$_OfficialArtworkCopyWithImpl<$Res>
    extends _$OfficialArtworkCopyWithImpl<$Res, _$_OfficialArtwork>
    implements _$$_OfficialArtworkCopyWith<$Res> {
  __$$_OfficialArtworkCopyWithImpl(
      _$_OfficialArtwork _value, $Res Function(_$_OfficialArtwork) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_$_OfficialArtwork(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfficialArtwork implements _OfficialArtwork {
  const _$_OfficialArtwork({required this.frontDefault});

  factory _$_OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$$_OfficialArtworkFromJson(json);

  @override
  final String frontDefault;

  @override
  String toString() {
    return 'OfficialArtwork(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfficialArtwork &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfficialArtworkCopyWith<_$_OfficialArtwork> get copyWith =>
      __$$_OfficialArtworkCopyWithImpl<_$_OfficialArtwork>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfficialArtworkToJson(
      this,
    );
  }
}

abstract class _OfficialArtwork implements OfficialArtwork {
  const factory _OfficialArtwork({required final String frontDefault}) =
      _$_OfficialArtwork;

  factory _OfficialArtwork.fromJson(Map<String, dynamic> json) =
      _$_OfficialArtwork.fromJson;

  @override
  String get frontDefault;
  @override
  @JsonKey(ignore: true)
  _$$_OfficialArtworkCopyWith<_$_OfficialArtwork> get copyWith =>
      throw _privateConstructorUsedError;
}

Stat _$StatFromJson(Map<String, dynamic> json) {
  return _Stat.fromJson(json);
}

/// @nodoc
mixin _$Stat {
  int get baseStat => throw _privateConstructorUsedError;
  int get effort => throw _privateConstructorUsedError;
  Species get stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatCopyWith<Stat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatCopyWith<$Res> {
  factory $StatCopyWith(Stat value, $Res Function(Stat) then) =
      _$StatCopyWithImpl<$Res, Stat>;
  @useResult
  $Res call({int baseStat, int effort, Species stat});

  $SpeciesCopyWith<$Res> get stat;
}

/// @nodoc
class _$StatCopyWithImpl<$Res, $Val extends Stat>
    implements $StatCopyWith<$Res> {
  _$StatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? effort = null,
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Species,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get stat {
    return $SpeciesCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StatCopyWith<$Res> implements $StatCopyWith<$Res> {
  factory _$$_StatCopyWith(_$_Stat value, $Res Function(_$_Stat) then) =
      __$$_StatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int baseStat, int effort, Species stat});

  @override
  $SpeciesCopyWith<$Res> get stat;
}

/// @nodoc
class __$$_StatCopyWithImpl<$Res> extends _$StatCopyWithImpl<$Res, _$_Stat>
    implements _$$_StatCopyWith<$Res> {
  __$$_StatCopyWithImpl(_$_Stat _value, $Res Function(_$_Stat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? effort = null,
    Object? stat = null,
  }) {
    return _then(_$_Stat(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Species,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stat implements _Stat {
  const _$_Stat(
      {required this.baseStat, required this.effort, required this.stat});

  factory _$_Stat.fromJson(Map<String, dynamic> json) => _$$_StatFromJson(json);

  @override
  final int baseStat;
  @override
  final int effort;
  @override
  final Species stat;

  @override
  String toString() {
    return 'Stat(baseStat: $baseStat, effort: $effort, stat: $stat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stat &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.effort, effort) || other.effort == effort) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseStat, effort, stat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatCopyWith<_$_Stat> get copyWith =>
      __$$_StatCopyWithImpl<_$_Stat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatToJson(
      this,
    );
  }
}

abstract class _Stat implements Stat {
  const factory _Stat(
      {required final int baseStat,
      required final int effort,
      required final Species stat}) = _$_Stat;

  factory _Stat.fromJson(Map<String, dynamic> json) = _$_Stat.fromJson;

  @override
  int get baseStat;
  @override
  int get effort;
  @override
  Species get stat;
  @override
  @JsonKey(ignore: true)
  _$$_StatCopyWith<_$_Stat> get copyWith => throw _privateConstructorUsedError;
}

Type _$TypeFromJson(Map<String, dynamic> json) {
  return _Type.fromJson(json);
}

/// @nodoc
mixin _$Type {
  int get slot => throw _privateConstructorUsedError;
  Species get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeCopyWith<Type> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeCopyWith<$Res> {
  factory $TypeCopyWith(Type value, $Res Function(Type) then) =
      _$TypeCopyWithImpl<$Res, Type>;
  @useResult
  $Res call({int slot, Species type});

  $SpeciesCopyWith<$Res> get type;
}

/// @nodoc
class _$TypeCopyWithImpl<$Res, $Val extends Type>
    implements $TypeCopyWith<$Res> {
  _$TypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Species,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get type {
    return $SpeciesCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TypeCopyWith<$Res> implements $TypeCopyWith<$Res> {
  factory _$$_TypeCopyWith(_$_Type value, $Res Function(_$_Type) then) =
      __$$_TypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, Species type});

  @override
  $SpeciesCopyWith<$Res> get type;
}

/// @nodoc
class __$$_TypeCopyWithImpl<$Res> extends _$TypeCopyWithImpl<$Res, _$_Type>
    implements _$$_TypeCopyWith<$Res> {
  __$$_TypeCopyWithImpl(_$_Type _value, $Res Function(_$_Type) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$_Type(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Species,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Type implements _Type {
  const _$_Type({required this.slot, required this.type});

  factory _$_Type.fromJson(Map<String, dynamic> json) => _$$_TypeFromJson(json);

  @override
  final int slot;
  @override
  final Species type;

  @override
  String toString() {
    return 'Type(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Type &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeCopyWith<_$_Type> get copyWith =>
      __$$_TypeCopyWithImpl<_$_Type>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypeToJson(
      this,
    );
  }
}

abstract class _Type implements Type {
  const factory _Type({required final int slot, required final Species type}) =
      _$_Type;

  factory _Type.fromJson(Map<String, dynamic> json) = _$_Type.fromJson;

  @override
  int get slot;
  @override
  Species get type;
  @override
  @JsonKey(ignore: true)
  _$$_TypeCopyWith<_$_Type> get copyWith => throw _privateConstructorUsedError;
}
