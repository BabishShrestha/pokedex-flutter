import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/cache/cache_repository.dart';
import 'package:pokedex/core/dio/dio_client.dart';
import 'package:pokedex/features/home/data/generation_provider.dart';
import 'package:pokedex/features/home/data/type_filter_provider.dart';
import 'package:pokedex/features/home/presentation/widgets/filter_bottom_sheet.dart';

/// Simple Pokemon model for list display
class SimplePokemon {
  final int id;
  final String name;
  final String imageUrl;

  SimplePokemon({required this.id, required this.name, required this.imageUrl});

  /// Extract Pokemon ID from URL like "https://pokeapi.co/api/v2/pokemon/1/"
  static int extractIdFromUrl(String url) {
    final parts = url.split('/');
    // Remove empty strings and get the ID (second to last element)
    final cleanParts = parts.where((p) => p.isNotEmpty).toList();
    return int.parse(cleanParts.last);
  }

  /// Create SimplePokemon from list API response
  factory SimplePokemon.fromListJson(Map<String, dynamic> json) {
    final id = extractIdFromUrl(json['url'] as String);
    final name = json['name'] as String;
    final imageUrl =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';

    return SimplePokemon(id: id, name: name, imageUrl: imageUrl);
  }

  /// Create SimplePokemon from detail API response
  factory SimplePokemon.fromDetailJson(Map<String, dynamic> json) {
    final id = json['id'] as int;
    final name = json['name'] as String;
    final imageUrl =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';

    return SimplePokemon(id: id, name: name, imageUrl: imageUrl);
  }
}

/// State for simple Pokemon list
class SimplePokemonListState {
  final List<SimplePokemon> pokemon;
  final List<SimplePokemon> allPokemon; // Full list for filtering
  final bool isLoading;
  final bool hasMore;
  final int offset;
  final String? error;
  final bool isSearchMode;
  final String? searchQuery;

  const SimplePokemonListState({
    this.pokemon = const [],
    this.allPokemon = const [],
    this.isLoading = false,
    this.hasMore = true,
    this.offset = 0,
    this.error,
    this.isSearchMode = false,
    this.searchQuery,
  });

  SimplePokemonListState copyWith({
    List<SimplePokemon>? pokemon,
    List<SimplePokemon>? allPokemon,
    bool? isLoading,
    bool? hasMore,
    int? offset,
    String? error,
    bool? isSearchMode,
    String? searchQuery,
  }) {
    return SimplePokemonListState(
      pokemon: pokemon ?? this.pokemon,
      allPokemon: allPokemon ?? this.allPokemon,
      isLoading: isLoading ?? this.isLoading,
      hasMore: hasMore ?? this.hasMore,
      offset: offset ?? this.offset,
      error: error ?? this.error,
      isSearchMode: isSearchMode ?? this.isSearchMode,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }
}

/// Notifier for simple Pokemon list
class SimplePokemonListNotifier extends Notifier<SimplePokemonListState> {
  static const int maxPokemon = 1025; // All Pokemon up to Gen 9

  @override
  SimplePokemonListState build() {
    Future.microtask(() => loadMore());

    // Listen to generation filter changes
    ref.listen(generationFilterProvider, (previous, next) {
      if (previous?.selectedGeneration != next.selectedGeneration) {
        applyFilters();
      }
    });

    // Listen to type filter changes
    ref.listen(typeFilterProvider, (previous, next) {
      if (previous?.selectedTypes != next.selectedTypes) {
        applyFilters();
      }
    });

    // Listen to sort option changes
    ref.listen(sortOptionProvider, (previous, next) {
      if (previous != next) {
        applySort();
      }
    });

    return const SimplePokemonListState();
  }

  /// Load all Pokemon from cache or API
  Future<void> loadMore() async {
    if (state.isLoading || !state.hasMore) return;

    state = state.copyWith(isLoading: true, error: null);

    try {
      // Try to load from cache first
      final cache = ref.read(cacheRepositoryProvider);
      final cachedPokemon = await cache.getPokemonList();

      if (cachedPokemon != null && cachedPokemon.length >= maxPokemon) {
        print('Loaded all ${cachedPokemon.length} Pokemon from cache');
        state = state.copyWith(
          pokemon: cachedPokemon,
          allPokemon: cachedPokemon,
          isLoading: false,
          hasMore: false,
          offset: maxPokemon,
        );
        return;
      }

      // Load all Pokemon from API in one request
      final dio = ref.read(dioProvider);
      final response = await dio.get('pokemon?limit=$maxPokemon&offset=0');

      if (response.statusCode == 200) {
        final results = response.data['results'] as List;
        final allPokemon = results
            .map(
              (json) =>
                  SimplePokemon.fromListJson(json as Map<String, dynamic>),
            )
            .toList();

        state = state.copyWith(
          pokemon: allPokemon,
          allPokemon: allPokemon,
          isLoading: false,
          hasMore: false,
          offset: maxPokemon,
        );

        // Cache the full list
        await cache.savePokemonList(allPokemon);
        print('Loaded and cached all ${allPokemon.length} Pokemon');
      } else {
        throw Exception('Failed to load Pokemon list: ${response.statusCode}');
      }
    } catch (e, stackTrace) {
      print('Error loading Pokemon: $e');
      print('Stack trace: $stackTrace');
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  /// Refresh the list while preserving filter state
  Future<void> refresh() async {
    // Reset to initial state but keep search/filter mode info
    state = state.copyWith(
      pokemon: [],
      allPokemon: [],
      isLoading: false,
      hasMore: true,
      offset: 0,
      error: null,
    );

    // Reload all Pokemon
    await loadMore();

    // Reapply any active filters
    applyFilters();
  }

  /// Search for a specific Pokemon by name or ID
  Future<void> searchPokemon(String query) async {
    if (query.trim().isEmpty) {
      // If query is empty, return to normal list mode
      await refresh();
      return;
    }

    final searchQuery = query.trim().toLowerCase();

    // First, try local filtering from cached list
    final localResults = state.allPokemon
        .where(
          (p) =>
              p.name.toLowerCase().contains(searchQuery) ||
              p.id.toString() == searchQuery,
        )
        .toList();

    if (localResults.isNotEmpty) {
      // Found matches in local cache
      state = state.copyWith(
        pokemon: localResults,
        isLoading: false,
        hasMore: false,
        isSearchMode: true,
        searchQuery: query,
      );
      print('Local search found ${localResults.length} results');
      return;
    }

    // If no local results, try API exact match
    state = state.copyWith(
      isLoading: true,
      error: null,
      isSearchMode: true,
      searchQuery: query,
    );

    try {
      final dio = ref.read(dioProvider);

      final response = await dio.get('pokemon/$searchQuery');

      if (response.statusCode == 200) {
        final pokemon = SimplePokemon.fromDetailJson(
          response.data as Map<String, dynamic>,
        );

        state = state.copyWith(
          pokemon: [pokemon],
          isLoading: false,
          hasMore: false,
          isSearchMode: true,
        );
        print('API search found: ${pokemon.name}');
      } else {
        throw Exception('Pokemon not found');
      }
    } catch (e) {
      print('Error searching Pokemon: $e');
      state = state.copyWith(
        isLoading: false,
        error: 'Pokémon "$query" not found. Try another name or ID.',
        pokemon: [],
        isSearchMode: true,
      );
    }
  }

  /// Clear search and return to list mode
  Future<void> clearSearch() async {
    if (!state.isSearchMode) return;
    await refresh();
  }

  /// Apply generation filter to the Pokemon list
  void applyGenerationFilter() {
    final generationFilter = ref.read(generationFilterProvider);

    if (generationFilter.selectedGeneration == null) {
      // Show all Pokemon
      state = state.copyWith(pokemon: state.allPokemon);
      return;
    }

    final pokemonNames = ref
        .read(generationFilterProvider.notifier)
        .getSelectedGenerationPokemon();

    if (pokemonNames == null || pokemonNames.isEmpty) {
      // No data yet, keep current state
      return;
    }

    // Filter Pokemon by generation
    final filtered = state.allPokemon
        .where((p) => pokemonNames.contains(p.name))
        .toList();

    state = state.copyWith(pokemon: filtered);

    print(
      'Applied Gen ${generationFilter.selectedGeneration} filter: ${filtered.length} Pokemon',
    );
  }

  /// Apply combined filters (generation + types)
  void applyFilters() {
    var filteredPokemon = state.allPokemon;

    // Apply generation filter
    final generationFilter = ref.read(generationFilterProvider);
    if (generationFilter.selectedGeneration != null) {
      final genPokemonNames = ref
          .read(generationFilterProvider.notifier)
          .getSelectedGenerationPokemon();

      if (genPokemonNames != null && genPokemonNames.isNotEmpty) {
        filteredPokemon = filteredPokemon
            .where((p) => genPokemonNames.contains(p.name))
            .toList();
      }
    }

    // Apply type filter
    final typeFilter = ref.read(typeFilterProvider);
    if (typeFilter.selectedTypes.isNotEmpty) {
      final typePokemonNames = ref
          .read(typeFilterProvider.notifier)
          .getFilteredPokemonNames();

      if (typePokemonNames != null && typePokemonNames.isNotEmpty) {
        filteredPokemon = filteredPokemon
            .where((p) => typePokemonNames.contains(p.name))
            .toList();
      }
    }

    state = state.copyWith(pokemon: filteredPokemon);

    // Apply current sort
    applySort();

    print('Applied filters: ${filteredPokemon.length} Pokemon');
  }

  /// Apply sort to current Pokemon list
  void applySort() {
    final sortOption = ref.read(sortOptionProvider);
    final sortedPokemon = List<SimplePokemon>.from(state.pokemon);

    switch (sortOption) {
      case SortOption.idAsc:
        sortedPokemon.sort((a, b) => a.id.compareTo(b.id));
        break;
      case SortOption.idDesc:
        sortedPokemon.sort((a, b) => b.id.compareTo(a.id));
        break;
      case SortOption.nameAsc:
        sortedPokemon.sort((a, b) => a.name.compareTo(b.name));
        break;
      case SortOption.nameDesc:
        sortedPokemon.sort((a, b) => b.name.compareTo(a.name));
        break;
    }

    state = state.copyWith(pokemon: sortedPokemon);
    print('Applied sort: ${sortOption.displayName}');
  }
}

/// Provider for simple Pokemon list
final simplePokemonListProvider =
    NotifierProvider<SimplePokemonListNotifier, SimplePokemonListState>(() {
      return SimplePokemonListNotifier();
    });
