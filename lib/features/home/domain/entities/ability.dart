import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/features/home/domain/entities/species.dart';

part 'ability.freezed.dart';
part 'ability.g.dart';

@freezed
abstract class Ability with _$Ability {
  const factory Ability({
    required Species ability,
    bool? isHidden,
    required int slot,
  }) = _Ability;

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);
}
