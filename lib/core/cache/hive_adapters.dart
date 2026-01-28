import 'package:hive/hive.dart';
import 'package:pokedex/features/home/data/simple_pokemon_provider.dart';
import 'package:pokedex/features/pokemon_details/pokemon_detail_provider.dart';

/// Hive Type Adapter for SimplePokemon
class SimplePokemonAdapter extends TypeAdapter<SimplePokemon> {
  @override
  final int typeId = 0;

  @override
  SimplePokemon read(BinaryReader reader) {
    return SimplePokemon(
      id: reader.readInt(),
      name: reader.readString(),
      imageUrl: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, SimplePokemon obj) {
    writer.writeInt(obj.id);
    writer.writeString(obj.name);
    writer.writeString(obj.imageUrl);
  }
}

/// Hive Type Adapter for PokemonAbility
class PokemonAbilityAdapter extends TypeAdapter<PokemonAbility> {
  @override
  final int typeId = 1;

  @override
  PokemonAbility read(BinaryReader reader) {
    return PokemonAbility(
      name: reader.readString(),
      isHidden: reader.readBool(),
    );
  }

  @override
  void write(BinaryWriter writer, PokemonAbility obj) {
    writer.writeString(obj.name);
    writer.writeBool(obj.isHidden);
  }
}

/// Hive Type Adapter for PokemonStat
class PokemonStatAdapter extends TypeAdapter<PokemonStat> {
  @override
  final int typeId = 2;

  @override
  PokemonStat read(BinaryReader reader) {
    return PokemonStat(name: reader.readString(), value: reader.readInt());
  }

  @override
  void write(BinaryWriter writer, PokemonStat obj) {
    writer.writeString(obj.name);
    writer.writeInt(obj.value);
  }
}

/// Hive Type Adapter for PokemonDetail
class PokemonDetailAdapter extends TypeAdapter<PokemonDetail> {
  @override
  final int typeId = 3;

  @override
  PokemonDetail read(BinaryReader reader) {
    return PokemonDetail(
      id: reader.readInt(),
      name: reader.readString(),
      imageUrl: reader.readString(),
      height: reader.readInt(),
      weight: reader.readInt(),
      types: reader.readStringList(),
      abilities: reader.readList().cast<PokemonAbility>(),
      stats: reader.readList().cast<PokemonStat>(),
    );
  }

  @override
  void write(BinaryWriter writer, PokemonDetail obj) {
    writer.writeInt(obj.id);
    writer.writeString(obj.name);
    writer.writeString(obj.imageUrl);
    writer.writeInt(obj.height);
    writer.writeInt(obj.weight);
    writer.writeStringList(obj.types);
    writer.writeList(obj.abilities);
    writer.writeList(obj.stats);
  }
}

/// Cache entry wrapper with timestamp for expiration
class CacheEntry<T> {
  final T data;
  final DateTime timestamp;

  CacheEntry({required this.data, required this.timestamp});

  bool isExpired(Duration maxAge) {
    return DateTime.now().difference(timestamp) > maxAge;
  }
}

/// Hive Type Adapter for CacheEntry
class CacheEntryAdapter<T> extends TypeAdapter<CacheEntry<T>> {
  final int typeId;
  final T Function(BinaryReader) readData;
  final void Function(BinaryWriter, T) writeData;

  CacheEntryAdapter({
    required this.typeId,
    required this.readData,
    required this.writeData,
  });

  @override
  CacheEntry<T> read(BinaryReader reader) {
    final data = readData(reader);
    final timestamp = DateTime.fromMillisecondsSinceEpoch(reader.readInt());
    return CacheEntry(data: data, timestamp: timestamp);
  }

  @override
  void write(BinaryWriter writer, CacheEntry<T> obj) {
    writeData(writer, obj.data);
    writer.writeInt(obj.timestamp.millisecondsSinceEpoch);
  }
}
