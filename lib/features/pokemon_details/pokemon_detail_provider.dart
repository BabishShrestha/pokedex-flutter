import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/cache/cache_repository.dart';
import 'package:pokedex/core/dio/dio_client.dart';

/// Pokemon ability with hidden flag
class PokemonAbility {
  final String name;
  final bool isHidden;

  PokemonAbility({required this.name, required this.isHidden});
}

/// Pokemon base stat
class PokemonStat {
  final String name;
  final int value;

  PokemonStat({required this.name, required this.value});
}

/// Detailed Pokemon model with all necessary information
class PokemonDetail {
  final int id;
  final String name;
  final String imageUrl;
  final int height;
  final int weight;
  final List<String> types;
  final List<PokemonAbility> abilities;
  final List<PokemonStat> stats;

  PokemonDetail({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.height,
    required this.weight,
    required this.types,
    required this.abilities,
    required this.stats,
  });

  /// Get thumbnail URL for list display
  String get thumbnailUrl =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';

  /// Create PokemonDetail from detail API response
  factory PokemonDetail.fromJson(Map<String, dynamic> json) {
    final id = json['id'] as int;
    final name = json['name'] as String;
    // Use high-quality official artwork
    final imageUrl =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';
    final height = json['height'] as int;
    final weight = json['weight'] as int;

    // Extract types
    final typesList = (json['types'] as List)
        .map((t) => t['type']['name'] as String)
        .toList();

    // Extract abilities with hidden flag
    final abilitiesList = (json['abilities'] as List)
        .map(
          (a) => PokemonAbility(
            name: a['ability']['name'] as String,
            isHidden: a['is_hidden'] as bool,
          ),
        )
        .toList();

    // Extract base stats
    final statsList = (json['stats'] as List)
        .map(
          (s) => PokemonStat(
            name: s['stat']['name'] as String,
            value: s['base_stat'] as int,
          ),
        )
        .toList();

    return PokemonDetail(
      id: id,
      name: name,
      imageUrl: imageUrl,
      height: height,
      weight: weight,
      types: typesList,
      abilities: abilitiesList,
      stats: statsList,
    );
  }
}

/// Provider to fetch Pokemon detail by ID with caching
final pokemonDetailProvider = FutureProvider.family<PokemonDetail, int>((
  ref,
  id,
) async {
  final cache = ref.watch(cacheRepositoryProvider);

  // Try to load from cache first
  final cachedDetail = await cache.getPokemonDetail(id);
  if (cachedDetail != null) {
    print('Loaded Pokemon detail for ID $id from cache');
    return cachedDetail;
  }

  // If not in cache, fetch from API
  final dio = ref.watch(dioProvider);

  try {
    final response = await dio.get('pokemon/$id');
    if (response.statusCode == 200) {
      final detail = PokemonDetail.fromJson(response.data);

      // Save to cache
      await cache.savePokemonDetail(id, detail);
      print('Cached Pokemon detail for ID $id');

      return detail;
    } else {
      throw Exception('Failed to load Pokemon detail: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching Pokemon detail for ID $id: $e');
    rethrow;
  }
});
