import 'package:freezed_annotation/freezed_annotation.dart';

import 'entities.dart';

part 'game_index.freezed.dart';
part 'game_index.g.dart';

@freezed
abstract class GameIndex with _$GameIndex {
  const factory GameIndex({required int gameIndex, required Species version}) =
      _GameIndex;

  factory GameIndex.fromJson(Map<String, dynamic> json) =>
      _$GameIndexFromJson(json);
}
