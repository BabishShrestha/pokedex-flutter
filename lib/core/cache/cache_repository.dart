import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokedex/features/home/data/simple_pokemon_provider.dart';
import 'package:pokedex/features/pokemon_details/pokemon_detail_provider.dart';

/// Cache repository for managing persistent storage with Hive
class CacheRepository {
  static const String _pokemonListBox = 'pokemon_list';
  static const String _pokemonDetailBox = 'pokemon_detail';
  static const String _generationBox = 'generation_cache';
  static const String _typeBox = 'type_cache';
  
  // Cache expiration: 7 days
  static const Duration _cacheExpiration = Duration(days: 7);

  /// Get Pokemon list from cache
  Future<List<SimplePokemon>?> getPokemonList() async {
    try {
      final box = await Hive.openBox<SimplePokemon>(_pokemonListBox);
      if (box.isEmpty) return null;
      
      // Check if cache is expired (check first item timestamp)
      final timestampBox = await Hive.openBox<int>('timestamps');
      final timestamp = timestampBox.get('pokemon_list_timestamp');
      
      if (timestamp != null) {
        final cacheTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
        if (DateTime.now().difference(cacheTime) > _cacheExpiration) {
          await clearPokemonList();
          return null;
        }
      }
      
      return box.values.toList();
    } catch (e) {
      return null;
    }
  }

  /// Save Pokemon list to cache
  Future<void> savePokemonList(List<SimplePokemon> pokemon) async {
    try {
      final box = await Hive.openBox<SimplePokemon>(_pokemonListBox);
      await box.clear();
      await box.addAll(pokemon);
      
      // Save timestamp
      final timestampBox = await Hive.openBox<int>('timestamps');
      await timestampBox.put(
        'pokemon_list_timestamp',
        DateTime.now().millisecondsSinceEpoch,
      );
    } catch (e) {
      // Silently fail - app will fetch from API
    }
  }

  /// Clear Pokemon list cache
  Future<void> clearPokemonList() async {
    try {
      final box = await Hive.openBox<SimplePokemon>(_pokemonListBox);
      await box.clear();
      
      final timestampBox = await Hive.openBox<int>('timestamps');
      await timestampBox.delete('pokemon_list_timestamp');
    } catch (e) {
      // Silently fail
    }
  }

  /// Get Pokemon detail from cache
  Future<PokemonDetail?> getPokemonDetail(int id) async {
    try {
      final box = await Hive.openBox<PokemonDetail>(_pokemonDetailBox);
      final detail = box.get(id);
      
      if (detail != null) {
        // Check if cache is expired
        final timestampBox = await Hive.openBox<int>('timestamps');
        final timestamp = timestampBox.get('pokemon_detail_$id');
        
        if (timestamp != null) {
          final cacheTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
          if (DateTime.now().difference(cacheTime) > _cacheExpiration) {
            await box.delete(id);
            return null;
          }
        }
      }
      
      return detail;
    } catch (e) {
      return null;
    }
  }

  /// Save Pokemon detail to cache
  Future<void> savePokemonDetail(int id, PokemonDetail detail) async {
    try {
      final box = await Hive.openBox<PokemonDetail>(_pokemonDetailBox);
      await box.put(id, detail);
      
      // Save timestamp
      final timestampBox = await Hive.openBox<int>('timestamps');
      await timestampBox.put(
        'pokemon_detail_$id',
        DateTime.now().millisecondsSinceEpoch,
      );
    } catch (e) {
      // Silently fail - app will fetch from API
    }
  }

  /// Clear all Pokemon detail cache
  Future<void> clearAllPokemonDetails() async {
    try {
      final box = await Hive.openBox<PokemonDetail>(_pokemonDetailBox);
      await box.clear();
      
      final timestampBox = await Hive.openBox<int>('timestamps');
      final keysToDelete = timestampBox.keys
          .where((key) => key.toString().startsWith('pokemon_detail_'))
          .toList();
      await timestampBox.deleteAll(keysToDelete);
    } catch (e) {
      // Silently fail
    }
  }

  /// Save generation data to cache
  Future<void> saveGenerationData(
    int generation,
    List<String> pokemonNames,
  ) async {
    try {
      final box = await Hive.openBox<List<String>>(_generationBox);
      await box.put('gen_$generation', pokemonNames);
      
      final timestampBox = await Hive.openBox<int>('timestamps');
      await timestampBox.put(
        'generation_$generation',
        DateTime.now().millisecondsSinceEpoch,
      );
    } catch (e) {
      // Silently fail
    }
  }

  /// Get generation data from cache
  Future<List<String>?> getGenerationData(int generation) async {
    try {
      final box = await Hive.openBox<List<String>>(_generationBox);
      final data = box.get('gen_$generation');
      
      if (data != null) {
        final timestampBox = await Hive.openBox<int>('timestamps');
        final timestamp = timestampBox.get('generation_$generation');
        
        if (timestamp != null) {
          final cacheTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
          if (DateTime.now().difference(cacheTime) > _cacheExpiration) {
            await box.delete('gen_$generation');
            return null;
          }
        }
      }
      
      return data;
    } catch (e) {
      return null;
    }
  }

  /// Save type data to cache
  Future<void> saveTypeData(String typeName, List<String> pokemonNames) async {
    try {
      final box = await Hive.openBox<List<String>>(_typeBox);
      await box.put(typeName, pokemonNames);
      
      final timestampBox = await Hive.openBox<int>('timestamps');
      await timestampBox.put(
        'type_$typeName',
        DateTime.now().millisecondsSinceEpoch,
      );
    } catch (e) {
      // Silently fail
    }
  }

  /// Get type data from cache
  Future<List<String>?> getTypeData(String typeName) async {
    try {
      final box = await Hive.openBox<List<String>>(_typeBox);
      final data = box.get(typeName);
      
      if (data != null) {
        final timestampBox = await Hive.openBox<int>('timestamps');
        final timestamp = timestampBox.get('type_$typeName');
        
        if (timestamp != null) {
          final cacheTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
          if (DateTime.now().difference(cacheTime) > _cacheExpiration) {
            await box.delete(typeName);
            return null;
          }
        }
      }
      
      return data;
    } catch (e) {
      return null;
    }
  }

  /// Clear all caches
  Future<void> clearAllCaches() async {
    await clearPokemonList();
    await clearAllPokemonDetails();
    
    try {
      await Hive.deleteBoxFromDisk(_generationBox);
      await Hive.deleteBoxFromDisk(_typeBox);
      await Hive.deleteBoxFromDisk('timestamps');
    } catch (e) {
      // Silently fail
    }
  }
}

/// Provider for cache repository
final cacheRepositoryProvider = Provider<CacheRepository>((ref) {
  return CacheRepository();
});
