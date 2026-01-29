import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/cache/cache_repository.dart';
import 'package:pokedex/core/dio/dio_client.dart';

/// Generation model with basic info
class Generation {
  final int id;
  final String name;
  final List<String> pokemonNames; // Pokemon species names in this generation

  const Generation({
    required this.id,
    required this.name,
    required this.pokemonNames,
  });

  factory Generation.fromJson(Map<String, dynamic> json) {
    final id = json['id'] as int;
    final name = json['name'] as String;
    final pokemonSpecies = (json['pokemon_species'] as List)
        .map((p) => p['name'] as String)
        .toList();

    return Generation(id: id, name: name, pokemonNames: pokemonSpecies);
  }

  /// Get display name (e.g., "Gen I", "Gen II")
  String get displayName {
    const romanNumerals = [
      'I',
      'II',
      'III',
      'IV',
      'V',
      'VI',
      'VII',
      'VIII',
      'IX',
    ];
    if (id >= 1 && id <= romanNumerals.length) {
      return 'Gen ${romanNumerals[id - 1]}';
    }
    return 'Gen $id';
  }

  /// Get Pokemon ID range for this generation
  String get pokemonRange {
    switch (id) {
      case 1:
        return '1-151';
      case 2:
        return '152-251';
      case 3:
        return '252-386';
      case 4:
        return '387-493';
      case 5:
        return '494-649';
      case 6:
        return '650-721';
      case 7:
        return '722-809';
      case 8:
        return '810-905';
      case 9:
        return '906-1025';
      default:
        return '';
    }
  }
}

/// Generation filter state
class GenerationFilterState {
  final int? selectedGeneration; // null means "All"
  final Map<int, Generation> generationsData; // Cached generation data
  final bool isLoading;
  final String? error;

  const GenerationFilterState({
    this.selectedGeneration,
    this.generationsData = const {},
    this.isLoading = false,
    this.error,
  });

  GenerationFilterState copyWith({
    int? selectedGeneration,
    bool clearSelection = false,
    Map<int, Generation>? generationsData,
    bool? isLoading,
    String? error,
  }) {
    return GenerationFilterState(
      selectedGeneration: clearSelection
          ? null
          : (selectedGeneration ?? this.selectedGeneration),
      generationsData: generationsData ?? this.generationsData,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }

  /// Clear selected generation (show all)
  GenerationFilterState clearSelection() {
    return copyWith(clearSelection: true);
  }
}

/// Generation filter notifier
class GenerationFilterNotifier extends Notifier<GenerationFilterState> {
  @override
  GenerationFilterState build() {
    return const GenerationFilterState();
  }

  /// Select a generation (1-9)
  Future<void> selectGeneration(int generation) async {
    if (generation < 1 || generation > 9) return;

    state = state.copyWith(isLoading: true);

    // Load generation data if not already cached
    if (!state.generationsData.containsKey(generation)) {
      await _loadGenerationData(generation);
    }

    // Set selected generation AFTER data is loaded
    state = state.copyWith(selectedGeneration: generation, isLoading: false);
  }

  /// Clear generation filter (show all Pokemon)
  void clearGeneration() {
    state = state.clearSelection();
  }

  /// Load generation data from API
  Future<void> _loadGenerationData(int generation) async {
    try {
      // Try cache first
      final cache = ref.read(cacheRepositoryProvider);
      final cachedNames = await cache.getGenerationData(generation);

      if (cachedNames != null) {
        final gen = Generation(
          id: generation,
          name: 'generation-$generation',
          pokemonNames: cachedNames,
        );

        state = state.copyWith(
          generationsData: {...state.generationsData, generation: gen},
        );
        return;
      }

      // Fetch from API
      final dio = ref.read(dioProvider);
      final response = await dio.get('generation/$generation');

      if (response.statusCode == 200) {
        final gen = Generation.fromJson(response.data);

        // Cache the data
        await cache.saveGenerationData(generation, gen.pokemonNames);

        state = state.copyWith(
          generationsData: {...state.generationsData, generation: gen},
        );
      } else {
        throw Exception('Failed to load generation: ${response.statusCode}');
      }
    } catch (e) {
      print('Error loading generation $generation: $e');
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load generation data',
      );
    }
  }

  /// Get Pokemon names for the selected generation
  List<String>? getSelectedGenerationPokemon() {
    if (state.selectedGeneration == null) return null;

    final gen = state.generationsData[state.selectedGeneration];
    return gen?.pokemonNames;
  }
}

/// Provider for generation filter
final generationFilterProvider =
    NotifierProvider<GenerationFilterNotifier, GenerationFilterState>(() {
      return GenerationFilterNotifier();
    });
