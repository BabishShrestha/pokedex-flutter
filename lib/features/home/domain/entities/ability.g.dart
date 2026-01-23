// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Ability _$AbilityFromJson(Map<String, dynamic> json) => _Ability(
  ability: Species.fromJson(json['ability'] as Map<String, dynamic>),
  isHidden: json['isHidden'] as bool?,
  slot: (json['slot'] as num).toInt(),
);

Map<String, dynamic> _$AbilityToJson(_Ability instance) => <String, dynamic>{
  'ability': instance.ability,
  'isHidden': instance.isHidden,
  'slot': instance.slot,
};
