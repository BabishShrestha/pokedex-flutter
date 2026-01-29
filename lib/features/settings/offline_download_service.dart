import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/cache/cache_repository.dart';
import 'package:pokedex/core/dio/dio_client.dart';
import 'package:pokedex/features/evolution/evolution_chain_provider.dart';
import 'package:pokedex/features/home/data/simple_pokemon_provider.dart';
import 'package:pokedex/features/pokemon_details/pokemon_detail_provider.dart';
import 'package:pokedex/features/pokemon_details/pokemon_species_provider.dart';

/// Download progress state
class DownloadProgress {
  final int current;
  final int total;
  final String currentPokemon;
  final bool isDownloading;
  final String? error;

  const DownloadProgress({
    this.current = 0,
    this.total = 0,
    this.currentPokemon = '',
    this.isDownloading = false,
    this.error,
  });

  DownloadProgress copyWith({
    int? current,
    int? total,
    String? currentPokemon,
    bool? isDownloading,
    String? error,
  }) {
    return DownloadProgress(
      current: current ?? this.current,
      total: total ?? this.total,
      currentPokemon: currentPokemon ?? this.currentPokemon,
      isDownloading: isDownloading ?? this.isDownloading,
      error: error,
    );
  }
}

/// Notifier for download progress
class DownloadProgressNotifier extends Notifier<DownloadProgress> {
  @override
  DownloadProgress build() => const DownloadProgress();

  void startDownload(int total) {
    state = DownloadProgress(current: 0, total: total, isDownloading: true);
  }

  void updateProgress(int current, String pokemonName) {
    state = state.copyWith(current: current, currentPokemon: pokemonName);
  }

  void completeDownload() {
    state = const DownloadProgress(isDownloading: false);
  }

  void setError(String error) {
    state = state.copyWith(isDownloading: false, error: error);
  }
}

final downloadProgressProvider =
    NotifierProvider<DownloadProgressNotifier, DownloadProgress>(
      DownloadProgressNotifier.new,
    );

/// Service for downloading all Pokemon data for offline use
class OfflineDownloadService {
  final Ref ref;

  OfflineDownloadService(this.ref);

  static const int maxPokemon = 1025;
  static const int batchSize = 10; // Download in batches to avoid overwhelming

  /// Download all Pokemon data for offline use
  Future<void> downloadAllForOffline({
    void Function(int current, int total)? onProgress,
  }) async {
    final cache = ref.read(cacheRepositoryProvider);
    final dio = ref.read(dioProvider);
    final progressNotifier = ref.read(downloadProgressProvider.notifier);

    progressNotifier.startDownload(maxPokemon);

    try {
      // First ensure we have the Pokemon list
      final pokemonList = await cache.getPokemonList();
      if (pokemonList == null || pokemonList.length < maxPokemon) {
        // Fetch the full list
        final response = await dio.get('pokemon?limit=$maxPokemon&offset=0');
        if (response.statusCode == 200) {
          final results = response.data['results'] as List;
          final allPokemon = results
              .map(
                (json) =>
                    SimplePokemon.fromListJson(json as Map<String, dynamic>),
              )
              .toList();
          await cache.savePokemonList(allPokemon);
        }
      }

      // Download details, species, and evolution chains for each Pokemon
      int downloaded = 0;
      final Set<int> downloadedChainIds = {};

      for (int id = 1; id <= maxPokemon; id++) {
        final pokemonName = 'Pokemon #$id';

        try {
          // Check if already cached
          final existingDetail = await cache.getPokemonDetail(id);
          final existingSpecies = await cache.getPokemonSpecies(id);

          // Download detail if not cached
          if (existingDetail == null) {
            final detailResponse = await dio.get('pokemon/$id');
            if (detailResponse.statusCode == 200) {
              final detail = PokemonDetail.fromJson(detailResponse.data);
              await cache.savePokemonDetail(id, detail);
            }
          }

          // Download species if not cached
          if (existingSpecies == null) {
            final speciesResponse = await dio.get('pokemon-species/$id');
            if (speciesResponse.statusCode == 200) {
              final species = PokemonSpecies.fromJson(speciesResponse.data);
              await cache.savePokemonSpecies(id, species);

              // Get evolution chain URL and download if not cached
              final evolutionChainUrl =
                  speciesResponse.data['evolution_chain']?['url'];
              if (evolutionChainUrl != null) {
                final chainIdMatch = RegExp(
                  r'/evolution-chain/(\d+)/',
                ).firstMatch(evolutionChainUrl);
                if (chainIdMatch != null) {
                  final chainId = int.parse(chainIdMatch.group(1)!);

                  // Only download chain if not already downloaded in this session
                  if (!downloadedChainIds.contains(chainId)) {
                    final existingChain = await cache.getEvolutionChain(
                      chainId,
                    );
                    if (existingChain == null) {
                      final chainResponse = await dio.get(
                        'evolution-chain/$chainId',
                      );
                      if (chainResponse.statusCode == 200) {
                        final chainData =
                            chainResponse.data['chain'] as Map<String, dynamic>;
                        final baseSpecies = _parseChainLink(chainData);
                        final chain = EvolutionChain(
                          chainId: chainId,
                          baseSpecies: baseSpecies,
                        );
                        await cache.saveEvolutionChain(chainId, chain);
                      }
                    }
                    downloadedChainIds.add(chainId);
                  }
                }
              }
            }
          }
        } catch (e) {
          // Continue with next Pokemon on individual failure
          print('Failed to download Pokemon #$id: $e');
        }

        downloaded++;
        progressNotifier.updateProgress(downloaded, pokemonName);
        onProgress?.call(downloaded, maxPokemon);

        // Small delay to avoid rate limiting
        if (downloaded % batchSize == 0) {
          await Future.delayed(const Duration(milliseconds: 100));
        }
      }

      progressNotifier.completeDownload();
    } catch (e) {
      progressNotifier.setError(e.toString());
      rethrow;
    }
  }
}

/// Parse evolution chain link (copied from evolution_chain_provider.dart)
EvolutionMember _parseChainLink(Map<String, dynamic> chainLink) {
  final speciesName = chainLink['species']['name'] as String;
  final speciesUrl = chainLink['species']['url'] as String;

  final urlParts = speciesUrl.split('/');
  final id = int.parse(urlParts[urlParts.length - 2]);

  final imageUrl =
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';

  final evolvesTo = (chainLink['evolves_to'] as List).map((evoData) {
    final pokemon = _parseChainLink(evoData as Map<String, dynamic>);

    final details = (evoData['evolution_details'] as List).isNotEmpty
        ? evoData['evolution_details'][0] as Map<String, dynamic>
        : <String, dynamic>{};

    final trigger = details['trigger']?['name'] as String?;
    final minLevel = details['min_level'] as int?;
    final item = details['item']?['name'] as String?;

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

/// Provider for offline download service
final offlineDownloadServiceProvider = Provider<OfflineDownloadService>((ref) {
  return OfflineDownloadService(ref);
});
