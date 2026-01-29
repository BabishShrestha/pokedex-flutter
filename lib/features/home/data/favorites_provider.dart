import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/cache/cache_repository.dart';

/// Provider for managing favorite Pokemon IDs
final favoritesProvider = NotifierProvider<FavoritesNotifier, Set<int>>(() {
  return FavoritesNotifier();
});

/// Notifier for managing favorites
class FavoritesNotifier extends Notifier<Set<int>> {
  @override
  Set<int> build() {
    // Load favorites from cache when provider is first created
    _loadFavorites();
    return {};
  }

  CacheRepository get _cacheRepository => ref.read(cacheRepositoryProvider);

  /// Load favorites from cache
  Future<void> _loadFavorites() async {
    final favorites = await _cacheRepository.getFavorites();
    state = favorites;
  }

  /// Toggle favorite status for a Pokemon
  Future<void> toggleFavorite(int pokemonId) async {
    final newFavorites = Set<int>.from(state);
    if (newFavorites.contains(pokemonId)) {
      newFavorites.remove(pokemonId);
    } else {
      newFavorites.add(pokemonId);
    }
    state = newFavorites;
    await _cacheRepository.saveFavorites(newFavorites);
  }

  /// Check if a Pokemon is favorited
  bool isFavorite(int pokemonId) {
    return state.contains(pokemonId);
  }

  /// Add a Pokemon to favorites
  Future<void> addFavorite(int pokemonId) async {
    if (!state.contains(pokemonId)) {
      final newFavorites = Set<int>.from(state)..add(pokemonId);
      state = newFavorites;
      await _cacheRepository.saveFavorites(newFavorites);
    }
  }

  /// Remove a Pokemon from favorites
  Future<void> removeFavorite(int pokemonId) async {
    if (state.contains(pokemonId)) {
      final newFavorites = Set<int>.from(state)..remove(pokemonId);
      state = newFavorites;
      await _cacheRepository.saveFavorites(newFavorites);
    }
  }

  /// Clear all favorites
  Future<void> clearAllFavorites() async {
    state = {};
    await _cacheRepository.saveFavorites({});
  }
}
