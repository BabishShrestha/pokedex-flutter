import 'package:hive/hive.dart';
import 'package:pokedex/features/evolution/evolution_chain_provider.dart';
import 'package:pokedex/features/home/data/simple_pokemon_provider.dart';
import 'package:pokedex/features/pokemon_details/pokemon_detail_provider.dart';
import 'package:pokedex/features/pokemon_details/pokemon_species_provider.dart';

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

/// Hive Type Adapter for PokemonSpecies
class PokemonSpeciesAdapter extends TypeAdapter<PokemonSpecies> {
  @override
  final int typeId = 4;

  @override
  PokemonSpecies read(BinaryReader reader) {
    return PokemonSpecies(
      id: reader.readInt(),
      description: reader.readString(),
      generation: reader.readString(),
      isLegendary: reader.readBool(),
      isMythical: reader.readBool(),
      evolutionChainUrl: reader.read() as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonSpecies obj) {
    writer.writeInt(obj.id);
    writer.writeString(obj.description);
    writer.writeString(obj.generation);
    writer.writeBool(obj.isLegendary);
    writer.writeBool(obj.isMythical);
    writer.write(obj.evolutionChainUrl);
  }
}

/// Hive Type Adapter for EvolutionTrigger
/// Note: This stores trigger data separately, pokemon reference stored by ID
class EvolutionTriggerAdapter extends TypeAdapter<EvolutionTrigger> {
  @override
  final int typeId = 5;

  @override
  EvolutionTrigger read(BinaryReader reader) {
    // Read the pokemon data inline (EvolutionMember)
    final pokemon = _readEvolutionMember(reader);
    final trigger = reader.read() as String?;
    final minLevel = reader.read() as int?;
    final item = reader.read() as String?;
    final condition = reader.read() as String?;

    return EvolutionTrigger(
      pokemon: pokemon,
      trigger: trigger,
      minLevel: minLevel,
      item: item,
      condition: condition,
    );
  }

  @override
  void write(BinaryWriter writer, EvolutionTrigger obj) {
    // Write the pokemon data inline
    _writeEvolutionMember(writer, obj.pokemon);
    writer.write(obj.trigger);
    writer.write(obj.minLevel);
    writer.write(obj.item);
    writer.write(obj.condition);
  }

  EvolutionMember _readEvolutionMember(BinaryReader reader) {
    final name = reader.readString();
    final id = reader.readInt();
    final imageUrl = reader.readString();
    final evolvesToCount = reader.readInt();
    final evolvesTo = <EvolutionTrigger>[];
    for (var i = 0; i < evolvesToCount; i++) {
      evolvesTo.add(read(reader));
    }
    return EvolutionMember(
      name: name,
      id: id,
      imageUrl: imageUrl,
      evolvesTo: evolvesTo,
    );
  }

  void _writeEvolutionMember(BinaryWriter writer, EvolutionMember obj) {
    writer.writeString(obj.name);
    writer.writeInt(obj.id);
    writer.writeString(obj.imageUrl);
    writer.writeInt(obj.evolvesTo.length);
    for (var trigger in obj.evolvesTo) {
      write(writer, trigger);
    }
  }
}

/// Hive Type Adapter for EvolutionMember
class EvolutionMemberAdapter extends TypeAdapter<EvolutionMember> {
  @override
  final int typeId = 6;

  final _triggerAdapter = EvolutionTriggerAdapter();

  @override
  EvolutionMember read(BinaryReader reader) {
    final name = reader.readString();
    final id = reader.readInt();
    final imageUrl = reader.readString();
    final evolvesToCount = reader.readInt();
    final evolvesTo = <EvolutionTrigger>[];
    for (var i = 0; i < evolvesToCount; i++) {
      evolvesTo.add(_triggerAdapter.read(reader));
    }
    return EvolutionMember(
      name: name,
      id: id,
      imageUrl: imageUrl,
      evolvesTo: evolvesTo,
    );
  }

  @override
  void write(BinaryWriter writer, EvolutionMember obj) {
    writer.writeString(obj.name);
    writer.writeInt(obj.id);
    writer.writeString(obj.imageUrl);
    writer.writeInt(obj.evolvesTo.length);
    for (var trigger in obj.evolvesTo) {
      _triggerAdapter.write(writer, trigger);
    }
  }
}

/// Hive Type Adapter for EvolutionChain
class EvolutionChainAdapter extends TypeAdapter<EvolutionChain> {
  @override
  final int typeId = 7;

  final _memberAdapter = EvolutionMemberAdapter();

  @override
  EvolutionChain read(BinaryReader reader) {
    final chainId = reader.readInt();
    final baseSpecies = _memberAdapter.read(reader);
    return EvolutionChain(chainId: chainId, baseSpecies: baseSpecies);
  }

  @override
  void write(BinaryWriter writer, EvolutionChain obj) {
    writer.writeInt(obj.chainId);
    _memberAdapter.write(writer, obj.baseSpecies);
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
