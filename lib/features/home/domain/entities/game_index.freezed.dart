// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameIndex _$GameIndexFromJson(Map<String, dynamic> json) {
  return _GameIndex.fromJson(json);
}

/// @nodoc
mixin _$GameIndex {
  int get gameIndex => throw _privateConstructorUsedError;
  Species get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameIndexCopyWith<GameIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameIndexCopyWith<$Res> {
  factory $GameIndexCopyWith(GameIndex value, $Res Function(GameIndex) then) =
      _$GameIndexCopyWithImpl<$Res, GameIndex>;
  @useResult
  $Res call({int gameIndex, Species version});

  $SpeciesCopyWith<$Res> get version;
}

/// @nodoc
class _$GameIndexCopyWithImpl<$Res, $Val extends GameIndex>
    implements $GameIndexCopyWith<$Res> {
  _$GameIndexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameIndex = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      gameIndex: null == gameIndex
          ? _value.gameIndex
          : gameIndex // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_GameIndexCopyWith<$Res> implements $GameIndexCopyWith<$Res> {
  factory _$$_GameIndexCopyWith(
          _$_GameIndex value, $Res Function(_$_GameIndex) then) =
      __$$_GameIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int gameIndex, Species version});

  @override
  $SpeciesCopyWith<$Res> get version;
}

/// @nodoc
class __$$_GameIndexCopyWithImpl<$Res>
    extends _$GameIndexCopyWithImpl<$Res, _$_GameIndex>
    implements _$$_GameIndexCopyWith<$Res> {
  __$$_GameIndexCopyWithImpl(
      _$_GameIndex _value, $Res Function(_$_GameIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameIndex = null,
    Object? version = null,
  }) {
    return _then(_$_GameIndex(
      gameIndex: null == gameIndex
          ? _value.gameIndex
          : gameIndex // ignore: cast_nullable_to_non_nullable
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
class _$_GameIndex implements _GameIndex {
  const _$_GameIndex({required this.gameIndex, required this.version});

  factory _$_GameIndex.fromJson(Map<String, dynamic> json) =>
      _$$_GameIndexFromJson(json);

  @override
  final int gameIndex;
  @override
  final Species version;

  @override
  String toString() {
    return 'GameIndex(gameIndex: $gameIndex, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameIndex &&
            (identical(other.gameIndex, gameIndex) ||
                other.gameIndex == gameIndex) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gameIndex, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameIndexCopyWith<_$_GameIndex> get copyWith =>
      __$$_GameIndexCopyWithImpl<_$_GameIndex>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameIndexToJson(
      this,
    );
  }
}

abstract class _GameIndex implements GameIndex {
  const factory _GameIndex(
      {required final int gameIndex,
      required final Species version}) = _$_GameIndex;

  factory _GameIndex.fromJson(Map<String, dynamic> json) =
      _$_GameIndex.fromJson;

  @override
  int get gameIndex;
  @override
  Species get version;
  @override
  @JsonKey(ignore: true)
  _$$_GameIndexCopyWith<_$_GameIndex> get copyWith =>
      throw _privateConstructorUsedError;
}
