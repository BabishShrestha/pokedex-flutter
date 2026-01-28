// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pokemon _$PokemonFromJson(Map<String, dynamic> json) => _Pokemon(
  abilities: (json['abilities'] as List<dynamic>)
      .map((e) => Ability.fromJson(e as Map<String, dynamic>))
      .toList(),
  baseExperience: (json['baseExperience'] as num?)?.toInt(),
  forms: (json['forms'] as List<dynamic>)
      .map((e) => Species.fromJson(e as Map<String, dynamic>))
      .toList(),
  gameIndices: (json['gameIndices'] as List<dynamic>?)
      ?.map((e) => GameIndex.fromJson(e as Map<String, dynamic>))
      .toList(),
  height: (json['height'] as num).toInt(),
  heldItems: (json['heldItems'] as List<dynamic>?)
      ?.map((e) => HeldItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  id: (json['id'] as num).toInt(),
  isDefault: json['isDefault'] as bool?,
  locationAreaEncounters: json['locationAreaEncounters'] as String?,
  moves: (json['moves'] as List<dynamic>)
      .map((e) => Move.fromJson(e as Map<String, dynamic>))
      .toList(),
  name: json['name'] as String,
  order: (json['order'] as num).toInt(),
  pastTypes: json['pastTypes'] as List<dynamic>? ?? const [],
  species: Species.fromJson(json['species'] as Map<String, dynamic>),
  sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
  stats: (json['stats'] as List<dynamic>)
      .map((e) => Stat.fromJson(e as Map<String, dynamic>))
      .toList(),
  types: (json['types'] as List<dynamic>)
      .map((e) => Type.fromJson(e as Map<String, dynamic>))
      .toList(),
  weight: (json['weight'] as num).toInt(),
);

Map<String, dynamic> _$PokemonToJson(_Pokemon instance) => <String, dynamic>{
  'abilities': instance.abilities,
  'baseExperience': instance.baseExperience,
  'forms': instance.forms,
  'gameIndices': instance.gameIndices,
  'height': instance.height,
  'heldItems': instance.heldItems,
  'id': instance.id,
  'isDefault': instance.isDefault,
  'locationAreaEncounters': instance.locationAreaEncounters,
  'moves': instance.moves,
  'name': instance.name,
  'order': instance.order,
  'pastTypes': instance.pastTypes,
  'species': instance.species,
  'sprites': instance.sprites,
  'stats': instance.stats,
  'types': instance.types,
  'weight': instance.weight,
};

_HeldItem _$HeldItemFromJson(Map<String, dynamic> json) => _HeldItem(
  item: Species.fromJson(json['item'] as Map<String, dynamic>),
  versionDetails: (json['versionDetails'] as List<dynamic>)
      .map((e) => VersionDetail.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$HeldItemToJson(_HeldItem instance) => <String, dynamic>{
  'item': instance.item,
  'versionDetails': instance.versionDetails,
};

_VersionDetail _$VersionDetailFromJson(Map<String, dynamic> json) =>
    _VersionDetail(
      rarity: (json['rarity'] as num).toInt(),
      version: Species.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionDetailToJson(_VersionDetail instance) =>
    <String, dynamic>{'rarity': instance.rarity, 'version': instance.version};

_Move _$MoveFromJson(Map<String, dynamic> json) => _Move(
  move: Species.fromJson(json['move'] as Map<String, dynamic>),
  versionGroupDetails: (json['versionGroupDetails'] as List<dynamic>?)
      ?.map((e) => VersionGroupDetail.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MoveToJson(_Move instance) => <String, dynamic>{
  'move': instance.move,
  'versionGroupDetails': instance.versionGroupDetails,
};

_VersionGroupDetail _$VersionGroupDetailFromJson(Map<String, dynamic> json) =>
    _VersionGroupDetail(
      levelLearnedAt: (json['levelLearnedAt'] as num).toInt(),
      moveLearnMethod: Species.fromJson(
        json['moveLearnMethod'] as Map<String, dynamic>,
      ),
      versionGroup: Species.fromJson(
        json['versionGroup'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$VersionGroupDetailToJson(_VersionGroupDetail instance) =>
    <String, dynamic>{
      'levelLearnedAt': instance.levelLearnedAt,
      'moveLearnMethod': instance.moveLearnMethod,
      'versionGroup': instance.versionGroup,
    };

_GenerationV _$GenerationVFromJson(Map<String, dynamic> json) => _GenerationV(
  blackWhite: Sprites.fromJson(json['blackWhite'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GenerationVToJson(_GenerationV instance) =>
    <String, dynamic>{'blackWhite': instance.blackWhite};

_GenerationIv _$GenerationIvFromJson(Map<String, dynamic> json) =>
    _GenerationIv(
      diamondPearl: Sprites.fromJson(
        json['diamondPearl'] as Map<String, dynamic>,
      ),
      heartgoldSoulsilver: Sprites.fromJson(
        json['heartgoldSoulsilver'] as Map<String, dynamic>,
      ),
      platinum: Sprites.fromJson(json['platinum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationIvToJson(_GenerationIv instance) =>
    <String, dynamic>{
      'diamondPearl': instance.diamondPearl,
      'heartgoldSoulsilver': instance.heartgoldSoulsilver,
      'platinum': instance.platinum,
    };

_Versions _$VersionsFromJson(Map<String, dynamic> json) => _Versions(
  generationI: json['generationI'] == null
      ? null
      : GenerationI.fromJson(json['generationI'] as Map<String, dynamic>),
  generationIi: json['generationIi'] == null
      ? null
      : GenerationIi.fromJson(json['generationIi'] as Map<String, dynamic>),
  generationIii: json['generationIii'] == null
      ? null
      : GenerationIii.fromJson(json['generationIii'] as Map<String, dynamic>),
  generationIv: json['generationIv'] == null
      ? null
      : GenerationIv.fromJson(json['generationIv'] as Map<String, dynamic>),
  generationV: json['generationV'] == null
      ? null
      : GenerationV.fromJson(json['generationV'] as Map<String, dynamic>),
  generationVi: (json['generationVi'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Home.fromJson(e as Map<String, dynamic>)),
  ),
  generationVii: json['generationVii'] == null
      ? null
      : GenerationVii.fromJson(json['generationVii'] as Map<String, dynamic>),
  generationViii: json['generationViii'] == null
      ? null
      : GenerationViii.fromJson(json['generationViii'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VersionsToJson(_Versions instance) => <String, dynamic>{
  'generationI': instance.generationI,
  'generationIi': instance.generationIi,
  'generationIii': instance.generationIii,
  'generationIv': instance.generationIv,
  'generationV': instance.generationV,
  'generationVi': instance.generationVi,
  'generationVii': instance.generationVii,
  'generationViii': instance.generationViii,
};

_Sprites _$SpritesFromJson(Map<String, dynamic> json) => _Sprites(
  backDefault: json['backDefault'] as String?,
  backFemale: json['backFemale'],
  backShiny: json['backShiny'] as String?,
  backShinyFemale: json['backShinyFemale'],
  frontDefault: json['frontDefault'] as String?,
  frontFemale: json['frontFemale'],
  frontShiny: json['frontShiny'] as String?,
  frontShinyFemale: json['frontShinyFemale'],
  other: json['other'] == null
      ? null
      : Other.fromJson(json['other'] as Map<String, dynamic>),
  versions: json['versions'] == null
      ? null
      : Versions.fromJson(json['versions'] as Map<String, dynamic>),
  animated: json['animated'] == null
      ? null
      : Sprites.fromJson(json['animated'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SpritesToJson(_Sprites instance) => <String, dynamic>{
  'backDefault': instance.backDefault,
  'backFemale': instance.backFemale,
  'backShiny': instance.backShiny,
  'backShinyFemale': instance.backShinyFemale,
  'frontDefault': instance.frontDefault,
  'frontFemale': instance.frontFemale,
  'frontShiny': instance.frontShiny,
  'frontShinyFemale': instance.frontShinyFemale,
  'other': instance.other,
  'versions': instance.versions,
  'animated': instance.animated,
};

_GenerationI _$GenerationIFromJson(Map<String, dynamic> json) => _GenerationI(
  redBlue: RedBlue.fromJson(json['redBlue'] as Map<String, dynamic>),
  yellow: RedBlue.fromJson(json['yellow'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GenerationIToJson(_GenerationI instance) =>
    <String, dynamic>{'redBlue': instance.redBlue, 'yellow': instance.yellow};

_RedBlue _$RedBlueFromJson(Map<String, dynamic> json) => _RedBlue(
  backDefault: json['backDefault'] as String,
  backGray: json['backGray'] as String,
  backTransparent: json['backTransparent'] as String,
  frontDefault: json['frontDefault'] as String,
  frontGray: json['frontGray'] as String,
  frontTransparent: json['frontTransparent'] as String,
);

Map<String, dynamic> _$RedBlueToJson(_RedBlue instance) => <String, dynamic>{
  'backDefault': instance.backDefault,
  'backGray': instance.backGray,
  'backTransparent': instance.backTransparent,
  'frontDefault': instance.frontDefault,
  'frontGray': instance.frontGray,
  'frontTransparent': instance.frontTransparent,
};

_GenerationIi _$GenerationIiFromJson(Map<String, dynamic> json) =>
    _GenerationIi(
      crystal: Crystal.fromJson(json['crystal'] as Map<String, dynamic>),
      gold: Gold.fromJson(json['gold'] as Map<String, dynamic>),
      silver: Gold.fromJson(json['silver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationIiToJson(_GenerationIi instance) =>
    <String, dynamic>{
      'crystal': instance.crystal,
      'gold': instance.gold,
      'silver': instance.silver,
    };

_Crystal _$CrystalFromJson(Map<String, dynamic> json) => _Crystal(
  backDefault: json['backDefault'] as String,
  backShiny: json['backShiny'] as String,
  backShinyTransparent: json['backShinyTransparent'] as String,
  backTransparent: json['backTransparent'] as String,
  frontDefault: json['frontDefault'] as String,
  frontShiny: json['frontShiny'] as String,
  frontShinyTransparent: json['frontShinyTransparent'] as String,
  frontTransparent: json['frontTransparent'] as String,
);

Map<String, dynamic> _$CrystalToJson(_Crystal instance) => <String, dynamic>{
  'backDefault': instance.backDefault,
  'backShiny': instance.backShiny,
  'backShinyTransparent': instance.backShinyTransparent,
  'backTransparent': instance.backTransparent,
  'frontDefault': instance.frontDefault,
  'frontShiny': instance.frontShiny,
  'frontShinyTransparent': instance.frontShinyTransparent,
  'frontTransparent': instance.frontTransparent,
};

_Gold _$GoldFromJson(Map<String, dynamic> json) => _Gold(
  backDefault: json['backDefault'] as String,
  backShiny: json['backShiny'] as String,
  frontDefault: json['frontDefault'] as String,
  frontShiny: json['frontShiny'] as String,
  frontTransparent: json['frontTransparent'] as String,
);

Map<String, dynamic> _$GoldToJson(_Gold instance) => <String, dynamic>{
  'backDefault': instance.backDefault,
  'backShiny': instance.backShiny,
  'frontDefault': instance.frontDefault,
  'frontShiny': instance.frontShiny,
  'frontTransparent': instance.frontTransparent,
};

_GenerationIii _$GenerationIiiFromJson(Map<String, dynamic> json) =>
    _GenerationIii(
      emerald: Emerald.fromJson(json['emerald'] as Map<String, dynamic>),
      fireredLeafgreen: Gold.fromJson(
        json['fireredLeafgreen'] as Map<String, dynamic>,
      ),
      rubySapphire: Gold.fromJson(json['rubySapphire'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationIiiToJson(_GenerationIii instance) =>
    <String, dynamic>{
      'emerald': instance.emerald,
      'fireredLeafgreen': instance.fireredLeafgreen,
      'rubySapphire': instance.rubySapphire,
    };

_Emerald _$EmeraldFromJson(Map<String, dynamic> json) => _Emerald(
  frontDefault: json['frontDefault'] as String?,
  frontShiny: json['frontShiny'] as String,
);

Map<String, dynamic> _$EmeraldToJson(_Emerald instance) => <String, dynamic>{
  'frontDefault': instance.frontDefault,
  'frontShiny': instance.frontShiny,
};

_Home _$HomeFromJson(Map<String, dynamic> json) => _Home(
  frontDefault: json['frontDefault'] as String?,
  frontFemale: json['frontFemale'],
  frontShiny: json['frontShiny'] as String?,
  frontShinyFemale: json['frontShinyFemale'],
);

Map<String, dynamic> _$HomeToJson(_Home instance) => <String, dynamic>{
  'frontDefault': instance.frontDefault,
  'frontFemale': instance.frontFemale,
  'frontShiny': instance.frontShiny,
  'frontShinyFemale': instance.frontShinyFemale,
};

_GenerationVii _$GenerationViiFromJson(Map<String, dynamic> json) =>
    _GenerationVii(
      icons: json['icons'] == null
          ? null
          : DreamWorld.fromJson(json['icons'] as Map<String, dynamic>),
      ultraSunUltraMoon: Home.fromJson(
        json['ultraSunUltraMoon'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$GenerationViiToJson(_GenerationVii instance) =>
    <String, dynamic>{
      'icons': instance.icons,
      'ultraSunUltraMoon': instance.ultraSunUltraMoon,
    };

_DreamWorld _$DreamWorldFromJson(Map<String, dynamic> json) => _DreamWorld(
  frontDefault: json['frontDefault'] as String,
  frontFemale: json['frontFemale'],
);

Map<String, dynamic> _$DreamWorldToJson(_DreamWorld instance) =>
    <String, dynamic>{
      'frontDefault': instance.frontDefault,
      'frontFemale': instance.frontFemale,
    };

_GenerationViii _$GenerationViiiFromJson(Map<String, dynamic> json) =>
    _GenerationViii(
      icons: json['icons'] == null
          ? null
          : DreamWorld.fromJson(json['icons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationViiiToJson(_GenerationViii instance) =>
    <String, dynamic>{'icons': instance.icons};

_Other _$OtherFromJson(Map<String, dynamic> json) => _Other(
  dreamWorld: json['dreamWorld'] == null
      ? null
      : DreamWorld.fromJson(json['dreamWorld'] as Map<String, dynamic>),
  home: json['home'] == null
      ? null
      : Home.fromJson(json['home'] as Map<String, dynamic>),
  officialArtwork: json['officialArtwork'] == null
      ? null
      : OfficialArtwork.fromJson(
          json['officialArtwork'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$OtherToJson(_Other instance) => <String, dynamic>{
  'dreamWorld': instance.dreamWorld,
  'home': instance.home,
  'officialArtwork': instance.officialArtwork,
};

_OfficialArtwork _$OfficialArtworkFromJson(Map<String, dynamic> json) =>
    _OfficialArtwork(frontDefault: json['frontDefault'] as String?);

Map<String, dynamic> _$OfficialArtworkToJson(_OfficialArtwork instance) =>
    <String, dynamic>{'frontDefault': instance.frontDefault};

_Stat _$StatFromJson(Map<String, dynamic> json) => _Stat(
  baseStat: (json['baseStat'] as num?)?.toInt(),
  effort: (json['effort'] as num).toInt(),
  stat: Species.fromJson(json['stat'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StatToJson(_Stat instance) => <String, dynamic>{
  'baseStat': instance.baseStat,
  'effort': instance.effort,
  'stat': instance.stat,
};

_Type _$TypeFromJson(Map<String, dynamic> json) => _Type(
  slot: (json['slot'] as num).toInt(),
  type: Species.fromJson(json['type'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TypeToJson(_Type instance) => <String, dynamic>{
  'slot': instance.slot,
  'type': instance.type,
};
