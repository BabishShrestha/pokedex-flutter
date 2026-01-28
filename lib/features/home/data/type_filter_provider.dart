import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/cache/cache_repository.dart';
import 'package:pokedex/core/dio/dio_client.dart';

/// Pokemon type model
class PokemonType {
  final String name;
  final List<String> pokemonNames;

  const PokemonType({required this.name, required this.pokemonNames});

  factory PokemonType.fromJson(Map<String, dynamic> json) {
    final name = json['name'] as String;
    final pokemon = (json['pokemon'] as List)
        .map((p) => p['pokemon']['name'] as String)
        .toList();

    return PokemonType(name: name, pokemonNames: pokemon);
  }

  /// Get display name with capitalization
  String get displayName {
    return name[0].toUpperCase() + name.substring(1);
  }
}

/// All 18 Pokemon types
const List<String> allTypes = [
  'normal',
  'fire',
  'water',
  'electric',
  'grass',
  'ice',
  'fighting',
  'poison',
  'ground',
  'flying',
  'psychic',
  'bug',
  'rock',
  'ghost',
  'dragon',
  'dark',
  'steel',
  'fairy',
];

/// Type filter state
class TypeFilterState {
  final List<String> selectedTypes; // Can select multiple types
  final Map<String, PokemonType> typesData; // Cached type data
  final bool isLoading;
  final String? error;

  const TypeFilterState({
    this.selectedTypes = const [],
    this.typesData = const {},
    this.isLoading = false,
    this.error,
  });

  TypeFilterState copyWith({
    List<String>? selectedTypes,
    Map<String, PokemonType>? typesData,
    bool? isLoading,
    String? error,
  }) {
    return TypeFilterState(
      selectedTypes: selectedTypes ?? this.selectedTypes,
      typesData: typesData ?? this.typesData,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }

  /// Check if a type is selected
  bool isTypeSelected(String type) {
    return selectedTypes.contains(type);
  }

  /// Clear all selected types
  TypeFilterState clearSelection() {
    return copyWith(selectedTypes: []);
  }
}

/// Type filter notifier
class TypeFilterNotifier extends Notifier<TypeFilterState> {
  @override
  TypeFilterState build() {
    return const TypeFilterState();
  }

  /// Toggle a type selection
  Future<void> toggleType(String typeName) async {
    if (!allTypes.contains(typeName)) return;

    final selected = List<String>.from(state.selectedTypes);

    if (selected.contains(typeName)) {
      // Deselect
      selected.remove(typeName);
    } else {
      // Select and load data if not cached
      selected.add(typeName);

      if (!state.typesData.containsKey(typeName)) {
        await _loadTypeData(typeName);
      }
    }

    state = state.copyWith(selectedTypes: selected);
  }

  /// Clear all type filters
  void clearTypes() {
    state = state.clearSelection();
  }

  /// Load type data from API
  Future<void> _loadTypeData(String typeName) async {
    state = state.copyWith(isLoading: true);

    try {
      // Try cache first
      final cache = ref.read(cacheRepositoryProvider);
      final cachedNames = await cache.getTypeData(typeName);

      if (cachedNames != null) {
        final type = PokemonType(name: typeName, pokemonNames: cachedNames);

        state = state.copyWith(
          typesData: {...state.typesData, typeName: type},
          isLoading: false,
        );
        return;
      }

      // Fetch from API
      final dio = ref.read(dioProvider);
      final response = await dio.get('type/$typeName');

      if (response.statusCode == 200) {
        final type = PokemonType.fromJson(response.data);

        // Cache the data
        await cache.saveTypeData(typeName, type.pokemonNames);

        state = state.copyWith(
          typesData: {...state.typesData, typeName: type},
          isLoading: false,
        );
      } else {
        throw Exception('Failed to load type: ${response.statusCode}');
      }
    } catch (e) {
      print('Error loading type $typeName: $e');
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load type data',
      );
    }
  }

  /// Get Pokemon names that match ALL selected types
  List<String>? getFilteredPokemonNames() {
    if (state.selectedTypes.isEmpty) return null;

    // Start with Pokemon from first selected type
    final firstType = state.typesData[state.selectedTypes.first];
    if (firstType == null) return null;

    Set<String> pokemonNames = Set.from(firstType.pokemonNames);

    // Intersect with other selected types
    for (var i = 1; i < state.selectedTypes.length; i++) {
      final type = state.typesData[state.selectedTypes[i]];
      if (type == null) return null;

      pokemonNames = pokemonNames.intersection(Set.from(type.pokemonNames));
    }

    return pokemonNames.toList();
  }
}

/// Provider for type filter
final typeFilterProvider =
    NotifierProvider<TypeFilterNotifier, TypeFilterState>(() {
      return TypeFilterNotifier();
    });
