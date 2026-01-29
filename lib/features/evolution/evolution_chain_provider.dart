import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/cache/cache_repository.dart';
import 'package:pokedex/core/dio/dio_client.dart';

/// Evolution chain member
class EvolutionMember {
  final String name;
  final int id;
  final String imageUrl;
  final List<EvolutionTrigger> evolvesTo;

  EvolutionMember({
    required this.name,
    required this.id,
    required this.imageUrl,
    required this.evolvesTo,
  });
}

/// Evolution trigger details
class EvolutionTrigger {
  final EvolutionMember pokemon;
  final String? trigger; // level-up, trade, use-item, etc.
  final int? minLevel;
  final String? item;
  final String? condition;

  EvolutionTrigger({
    required this.pokemon,
    this.trigger,
    this.minLevel,
    this.item,
    this.condition,
  });

  /// Get display text for evolution requirement
  String get displayRequirement {
    if (minLevel != null) {
      return 'Lv. $minLevel';
    } else if (item != null) {
      return item!.replaceAll('-', ' ');
    } else if (trigger != null) {
      return trigger!.replaceAll('-', ' ');
    } else if (condition != null) {
      return condition!;
    }
    return 'Unknown';
  }
}

/// Evolution chain with all stages
class EvolutionChain {
  final int chainId;
  final EvolutionMember baseSpecies;

  EvolutionChain({required this.chainId, required this.baseSpecies});

  /// Get all stages flattened (for horizontal display)
  List<List<EvolutionMember>> getStages() {
    final stages = <List<EvolutionMember>>[];

    // Stage 1: Base
    stages.add([baseSpecies]);

    // Stage 2: First evolutions
    if (baseSpecies.evolvesTo.isNotEmpty) {
      final stage2 = baseSpecies.evolvesTo.map((e) => e.pokemon).toList();
      stages.add(stage2);

      // Stage 3: Final evolutions
      final stage3 = <EvolutionMember>[];
      for (var evo in baseSpecies.evolvesTo) {
        if (evo.pokemon.evolvesTo.isNotEmpty) {
          stage3.addAll(evo.pokemon.evolvesTo.map((e) => e.pokemon));
        }
      }
      if (stage3.isNotEmpty) {
        stages.add(stage3);
      }
    }

    return stages;
  }

  /// Check if this Pokemon has evolutions
  bool get hasEvolutions => baseSpecies.evolvesTo.isNotEmpty;
}

/// Parse evolution chain from API response
EvolutionMember _parseChainLink(Map<String, dynamic> chainLink) {
  final speciesName = chainLink['species']['name'] as String;
  final speciesUrl = chainLink['species']['url'] as String;

  // Extract ID from URL
  final urlParts = speciesUrl.split('/');
  final id = int.parse(urlParts[urlParts.length - 2]);

  final imageUrl =
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';

  // Parse evolution details
  final evolvesTo = (chainLink['evolves_to'] as List).map((evoData) {
    final pokemon = _parseChainLink(evoData as Map<String, dynamic>);

    // Get evolution details
    final details = (evoData['evolution_details'] as List).isNotEmpty
        ? evoData['evolution_details'][0] as Map<String, dynamic>
        : <String, dynamic>{};

    final trigger = details['trigger']?['name'] as String?;
    final minLevel = details['min_level'] as int?;
    final item = details['item']?['name'] as String?;

    // Build condition string
    String? condition;
    if (details['min_happiness'] != null) {
      condition = 'Happiness ${details['min_happiness']}';
    } else if (details['time_of_day'] != null &&
        (details['time_of_day'] as String).isNotEmpty) {
      condition = '${details['time_of_day']} time';
    } else if (details['held_item'] != null) {
      condition = 'Holding ${details['held_item']['name']}';
    }

    return EvolutionTrigger(
      pokemon: pokemon,
      trigger: trigger,
      minLevel: minLevel,
      item: item,
      condition: condition,
    );
  }).toList();

  return EvolutionMember(
    name: speciesName,
    id: id,
    imageUrl: imageUrl,
    evolvesTo: evolvesTo,
  );
}

/// Provider to fetch evolution chain for a Pokemon ID with caching
final evolutionChainProvider = FutureProvider.family<EvolutionChain?, int>((
  ref,
  pokemonId,
) async {
  final dio = ref.watch(dioProvider);
  final cache = ref.watch(cacheRepositoryProvider);

  try {
    // First, get Pokemon species to get evolution chain URL
    final speciesResponse = await dio.get('pokemon-species/$pokemonId');

    if (speciesResponse.statusCode != 200) {
      throw Exception('Failed to load species: ${speciesResponse.statusCode}');
    }

    final evolutionChainUrl = speciesResponse.data['evolution_chain']?['url'];

    if (evolutionChainUrl == null) {
      // No evolution chain
      return null;
    }

    // Extract chain ID from URL
    final chainIdMatch = RegExp(
      r'/evolution-chain/(\d+)/',
    ).firstMatch(evolutionChainUrl);
    if (chainIdMatch == null) return null;

    final chainId = int.parse(chainIdMatch.group(1)!);

    // Try to load from cache first
    final cachedChain = await cache.getEvolutionChain(chainId);
    if (cachedChain != null) {
      print('Loaded evolution chain $chainId from cache');
      return cachedChain;
    }

    // Fetch evolution chain from API
    final chainResponse = await dio.get('evolution-chain/$chainId');

    if (chainResponse.statusCode != 200) {
      throw Exception('Failed to load chain: ${chainResponse.statusCode}');
    }

    final chainData = chainResponse.data['chain'] as Map<String, dynamic>;
    final baseSpecies = _parseChainLink(chainData);

    final evolutionChain = EvolutionChain(chainId: chainId, baseSpecies: baseSpecies);

    // Save to cache
    await cache.saveEvolutionChain(chainId, evolutionChain);
    print('Cached evolution chain $chainId');

    return evolutionChain;
  } catch (e) {
    print('Error fetching evolution chain for Pokemon $pokemonId: $e');
    return null;
  }
});
