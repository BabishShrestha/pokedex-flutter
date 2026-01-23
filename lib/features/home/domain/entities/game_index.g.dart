// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameIndex _$GameIndexFromJson(Map<String, dynamic> json) => _GameIndex(
  gameIndex: (json['gameIndex'] as num).toInt(),
  version: Species.fromJson(json['version'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GameIndexToJson(_GameIndex instance) =>
    <String, dynamic>{
      'gameIndex': instance.gameIndex,
      'version': instance.version,
    };
