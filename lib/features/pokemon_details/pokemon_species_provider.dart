import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/cache/cache_repository.dart';
import 'package:pokedex/core/dio/dio_client.dart';

/// Pokemon species data with description, generation, and legendary/mythical status
class PokemonSpecies {
  final int id;
  final String description;
  final String generation;
  final bool isLegendary;
  final bool isMythical;
  final String? evolutionChainUrl;

  PokemonSpecies({
    required this.id,
    required this.description,
    required this.generation,
    required this.isLegendary,
    required this.isMythical,
    this.evolutionChainUrl,
  });

  /// Create PokemonSpecies from API response
  factory PokemonSpecies.fromJson(Map<String, dynamic> json) {
    final id = json['id'] as int;

    // Extract and clean English flavor text
    final description = _extractEnglishFlavorText(json);

    // Extract generation name (e.g., "generation-i" -> "Generation I")
    final generationData = json['generation'] as Map<String, dynamic>?;
    final generationRaw = generationData?['name'] as String? ?? 'unknown';
    final generation = _formatGenerationName(generationRaw);

    // Extract legendary and mythical status
    final isLegendary = json['is_legendary'] as bool? ?? false;
    final isMythical = json['is_mythical'] as bool? ?? false;

    // Extract evolution chain URL
    final evolutionChainData = json['evolution_chain'] as Map<String, dynamic>?;
    final evolutionChainUrl = evolutionChainData?['url'] as String?;

    return PokemonSpecies(
      id: id,
      description: description,
      generation: generation,
      isLegendary: isLegendary,
      isMythical: isMythical,
      evolutionChainUrl: evolutionChainUrl,
    );
  }

  /// Extract the first English flavor text entry and clean it
  static String _extractEnglishFlavorText(Map<String, dynamic> json) {
    final flavorTextEntries = json['flavor_text_entries'] as List<dynamic>?;

    if (flavorTextEntries == null || flavorTextEntries.isEmpty) {
      return 'No description available.';
    }

    // Find the first English flavor text entry
    for (final entry in flavorTextEntries) {
      final language = entry['language'] as Map<String, dynamic>?;
      if (language?['name'] == 'en') {
        final rawText = entry['flavor_text'] as String? ?? '';
        return _cleanFlavorText(rawText);
      }
    }

    return 'No description available.';
  }

  /// Clean flavor text by removing form feeds, excessive newlines, and normalizing whitespace
  static String _cleanFlavorText(String text) {
    return text
        // Remove form feed characters
        .replaceAll('\f', ' ')
        // Replace newlines with spaces
        .replaceAll('\n', ' ')
        // Replace carriage returns
        .replaceAll('\r', ' ')
        // Replace multiple spaces with single space
        .replaceAll(RegExp(r'\s+'), ' ')
        // Trim leading and trailing whitespace
        .trim();
  }

  /// Format generation name from API format to display format
  /// e.g., "generation-i" -> "Generation I"
  static String _formatGenerationName(String rawName) {
    if (rawName == 'unknown') return 'Unknown';

    // Split by hyphen: "generation-i" -> ["generation", "i"]
    final parts = rawName.split('-');
    if (parts.length < 2) return rawName;

    // Capitalize "generation" and uppercase the roman numeral
    final prefix =
        parts[0][0].toUpperCase() + parts[0].substring(1).toLowerCase();
    final numeral = parts.sublist(1).join('-').toUpperCase();

    return '$prefix $numeral';
  }
}

/// Provider to fetch Pokemon species data by ID with caching
final pokemonSpeciesProvider = FutureProvider.family<PokemonSpecies, int>((
  ref,
  id,
) async {
  final cache = ref.watch(cacheRepositoryProvider);

  // Try to load from cache first
  final cachedSpecies = await cache.getPokemonSpecies(id);
  if (cachedSpecies != null) {
    print('Loaded Pokemon species for ID $id from cache');
    return cachedSpecies;
  }

  // If not in cache, fetch from API
  final dio = ref.watch(dioProvider);

  try {
    final response = await dio.get('pokemon-species/$id');
    if (response.statusCode == 200) {
      final species = PokemonSpecies.fromJson(response.data);

      // Save to cache
      await cache.savePokemonSpecies(id, species);
      print('Cached Pokemon species for ID $id');

      return species;
    } else {
      throw Exception('Failed to load Pokemon species: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching Pokemon species for ID $id: $e');
    rethrow;
  }
});
