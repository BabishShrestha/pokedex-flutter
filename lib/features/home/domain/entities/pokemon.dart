// To parse this JSON data, do
//
//     final pokemon = pokemonFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'entities.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

Pokemon pokemonFromJson(String str) => Pokemon.fromJson(json.decode(str));

String pokemonToJson(Pokemon data) => json.encode(data.toJson());

@freezed
abstract class Pokemon with _$Pokemon {
  const factory Pokemon({
    required List<Ability> abilities,
    int? baseExperience,
    required List<Species> forms,
    required List<GameIndex>? gameIndices,
    required int height,
    required List<HeldItem>? heldItems,
    required int id,
    required bool? isDefault,
    required String? locationAreaEncounters,
    required List<Move> moves,
    required String name,
    required int order,
    @Default([]) List<dynamic> pastTypes,
    required Species species,
    required Sprites sprites,
    required List<Stat> stats,
    required List<Type> types,
    required int weight,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}

@freezed
abstract class HeldItem with _$HeldItem {
  const factory HeldItem({
    required Species item,
    required List<VersionDetail> versionDetails,
  }) = _HeldItem;

  factory HeldItem.fromJson(Map<String, dynamic> json) =>
      _$HeldItemFromJson(json);
}

@freezed
abstract class VersionDetail with _$VersionDetail {
  const factory VersionDetail({required int rarity, required Species version}) =
      _VersionDetail;

  factory VersionDetail.fromJson(Map<String, dynamic> json) =>
      _$VersionDetailFromJson(json);
}

@freezed
abstract class Move with _$Move {
  const factory Move({
    required Species move,
    required List<VersionGroupDetail>? versionGroupDetails,
  }) = _Move;

  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);
}

@freezed
abstract class VersionGroupDetail with _$VersionGroupDetail {
  const factory VersionGroupDetail({
    required int levelLearnedAt,
    required Species moveLearnMethod,
    required Species versionGroup,
  }) = _VersionGroupDetail;

  factory VersionGroupDetail.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupDetailFromJson(json);
}

@freezed
abstract class GenerationV with _$GenerationV {
  const factory GenerationV({required Sprites blackWhite}) = _GenerationV;

  factory GenerationV.fromJson(Map<String, dynamic> json) =>
      _$GenerationVFromJson(json);
}

@freezed
abstract class GenerationIv with _$GenerationIv {
  const factory GenerationIv({
    required Sprites diamondPearl,
    required Sprites heartgoldSoulsilver,
    required Sprites platinum,
  }) = _GenerationIv;

  factory GenerationIv.fromJson(Map<String, dynamic> json) =>
      _$GenerationIvFromJson(json);
}

@freezed
abstract class Versions with _$Versions {
  const factory Versions({
    GenerationI? generationI,
    GenerationIi? generationIi,
    GenerationIii? generationIii,
    GenerationIv? generationIv,
    GenerationV? generationV,
    Map<String, Home>? generationVi,
    GenerationVii? generationVii,
    GenerationViii? generationViii,
  }) = _Versions;

  factory Versions.fromJson(Map<String, dynamic> json) =>
      _$VersionsFromJson(json);
}

@freezed
abstract class Sprites with _$Sprites {
  const factory Sprites({
    required String? backDefault,
    required dynamic backFemale,
    required String? backShiny,
    required dynamic backShinyFemale,
    required String? frontDefault,
    required dynamic frontFemale,
    required String? frontShiny,
    required dynamic frontShinyFemale,
    required Other? other,
    required Versions? versions,
    required Sprites? animated,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}

@freezed
abstract class GenerationI with _$GenerationI {
  const factory GenerationI({
    required RedBlue redBlue,
    required RedBlue yellow,
  }) = _GenerationI;

  factory GenerationI.fromJson(Map<String, dynamic> json) =>
      _$GenerationIFromJson(json);
}

@freezed
abstract class RedBlue with _$RedBlue {
  const factory RedBlue({
    required String backDefault,
    required String backGray,
    required String backTransparent,
    required String frontDefault,
    required String frontGray,
    required String frontTransparent,
  }) = _RedBlue;

  factory RedBlue.fromJson(Map<String, dynamic> json) =>
      _$RedBlueFromJson(json);
}

@freezed
abstract class GenerationIi with _$GenerationIi {
  const factory GenerationIi({
    required Crystal crystal,
    required Gold gold,
    required Gold silver,
  }) = _GenerationIi;

  factory GenerationIi.fromJson(Map<String, dynamic> json) =>
      _$GenerationIiFromJson(json);
}

@freezed
abstract class Crystal with _$Crystal {
  const factory Crystal({
    required String backDefault,
    required String backShiny,
    required String backShinyTransparent,
    required String backTransparent,
    required String frontDefault,
    required String frontShiny,
    required String frontShinyTransparent,
    required String frontTransparent,
  }) = _Crystal;

  factory Crystal.fromJson(Map<String, dynamic> json) =>
      _$CrystalFromJson(json);
}

@freezed
abstract class Gold with _$Gold {
  const factory Gold({
    required String backDefault,
    required String backShiny,
    required String frontDefault,
    required String frontShiny,
    required String frontTransparent,
  }) = _Gold;

  factory Gold.fromJson(Map<String, dynamic> json) => _$GoldFromJson(json);
}

@freezed
abstract class GenerationIii with _$GenerationIii {
  const factory GenerationIii({
    required Emerald emerald,
    required Gold fireredLeafgreen,
    required Gold rubySapphire,
  }) = _GenerationIii;

  factory GenerationIii.fromJson(Map<String, dynamic> json) =>
      _$GenerationIiiFromJson(json);
}

@freezed
abstract class Emerald with _$Emerald {
  const factory Emerald({
    required String? frontDefault,
    required String frontShiny,
  }) = _Emerald;

  factory Emerald.fromJson(Map<String, dynamic> json) =>
      _$EmeraldFromJson(json);
}

@freezed
abstract class Home with _$Home {
  const factory Home({
    required String? frontDefault,
    required dynamic frontFemale,
    required String? frontShiny,
    required dynamic frontShinyFemale,
  }) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}

@freezed
abstract class GenerationVii with _$GenerationVii {
  const factory GenerationVii({
    required DreamWorld? icons,
    required Home ultraSunUltraMoon,
  }) = _GenerationVii;

  factory GenerationVii.fromJson(Map<String, dynamic> json) =>
      _$GenerationViiFromJson(json);
}

@freezed
abstract class DreamWorld with _$DreamWorld {
  const factory DreamWorld({
    required String frontDefault,
    required dynamic frontFemale,
  }) = _DreamWorld;

  factory DreamWorld.fromJson(Map<String, dynamic> json) =>
      _$DreamWorldFromJson(json);
}

@freezed
abstract class GenerationViii with _$GenerationViii {
  const factory GenerationViii({required DreamWorld? icons}) = _GenerationViii;

  factory GenerationViii.fromJson(Map<String, dynamic> json) =>
      _$GenerationViiiFromJson(json);
}

@freezed
abstract class Other with _$Other {
  const factory Other({
    DreamWorld? dreamWorld,
    Home? home,
    OfficialArtwork? officialArtwork,
  }) = _Other;

  factory Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);
}

@freezed
abstract class OfficialArtwork with _$OfficialArtwork {
  const factory OfficialArtwork({required String? frontDefault}) =
      _OfficialArtwork;

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkFromJson(json);
}

@freezed
abstract class Stat with _$Stat {
  const factory Stat({
    required int? baseStat,
    required int effort,
    required Species stat,
  }) = _Stat;

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
}

@freezed
abstract class Type with _$Type {
  const factory Type({required int slot, required Species type}) = _Type;

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
}
