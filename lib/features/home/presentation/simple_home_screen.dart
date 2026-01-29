import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/services/connectivity_service.dart';
import 'package:pokedex/core/services/sound_service.dart';
import 'package:pokedex/core/widgets/favorite_dialog.dart';
import 'package:pokedex/core/widgets/pokemon_loader.dart';
import 'package:pokedex/features/home/data/favorites_provider.dart';
import 'package:pokedex/features/home/data/simple_pokemon_provider.dart';
import 'package:pokedex/features/home/presentation/favourites_screen.dart';
import 'package:pokedex/features/home/presentation/widgets/filter_bottom_sheet.dart';
import 'package:pokedex/features/home/presentation/widgets/generation_filter_chips.dart';
import 'package:pokedex/features/home/presentation/widgets/type_filter_chips.dart';
import 'package:pokedex/features/pokemon_details/figma_pokemon_detail_screen.dart';
import 'package:pokedex/features/pokemon_details/pokemon_detail_provider.dart';
import 'package:pokedex/features/settings/settings_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SimpleHomeScreen extends ConsumerStatefulWidget {
  const SimpleHomeScreen({super.key});

  @override
  ConsumerState<SimpleHomeScreen> createState() => _SimpleHomeScreenState();
}

class _SimpleHomeScreenState extends ConsumerState<SimpleHomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounceTimer;
  Timer? _prefetchTimer;
  final Set<int> _prefetchedIds = {};
  bool _isFabExpanded = false;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    _debounceTimer?.cancel();
    _prefetchTimer?.cancel();
    super.dispose();
  }

  void _onScroll() {
    // Debounce pre-fetch to avoid too many calls
    _prefetchTimer?.cancel();
    _prefetchTimer = Timer(const Duration(milliseconds: 500), () {
      _prefetchVisiblePokemon();
    });
  }

  Future<void> _prefetchVisiblePokemon() async {
    // Check if pre-fetch is enabled
    final prefetchEnabled = await ref.read(prefetchOnScrollProvider.future);
    if (!prefetchEnabled) return;

    final pokemonState = ref.read(simplePokemonListProvider);
    if (pokemonState.pokemon.isEmpty) return;

    // Calculate visible range based on scroll position
    final scrollPosition = _scrollController.position.pixels;
    final viewportHeight = _scrollController.position.viewportDimension;

    // Approximate: 3 columns, each item ~120px height
    const itemHeight = 140.0;
    const columns = 3;

    final firstVisibleIndex = (scrollPosition / itemHeight * columns).floor();
    final lastVisibleIndex =
        ((scrollPosition + viewportHeight) / itemHeight * columns).ceil();

    // Pre-fetch a few items ahead
    final startIndex = firstVisibleIndex.clamp(
      0,
      pokemonState.pokemon.length - 1,
    );
    final endIndex = (lastVisibleIndex + 6).clamp(
      0,
      pokemonState.pokemon.length - 1,
    );

    for (int i = startIndex; i <= endIndex; i++) {
      final pokemon = pokemonState.pokemon[i];
      if (!_prefetchedIds.contains(pokemon.id)) {
        _prefetchedIds.add(pokemon.id);
        // Trigger the provider to pre-fetch (it will cache automatically)
        ref.read(pokemonDetailProvider(pokemon.id));
      }
    }
  }

  void _onSearchChanged() {
    // Cancel previous timer
    _debounceTimer?.cancel();

    // Create new timer with 300ms delay
    _debounceTimer = Timer(const Duration(milliseconds: 300), () {
      final query = _searchController.text.trim();
      if (query.isNotEmpty) {
        ref.read(simplePokemonListProvider.notifier).searchPokemon(query);
      } else if (ref.read(simplePokemonListProvider).isSearchMode) {
        // Clear search if text is empty
        ref.read(simplePokemonListProvider.notifier).clearSearch();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final pokemonState = ref.watch(simplePokemonListProvider);
    final soundService = ref.watch(soundServiceProvider);

    // Use the Pokemon from state (either search result or full list)
    final displayPokemon = pokemonState.pokemon;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: _buildExpandableFab(),
      appBar: AppBar(
        backgroundColor: const Color(0xFFDC0A2D),
        elevation: 0,
        title: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Center(
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            const Text(
              'Pokédex',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: TextField(
                      controller: _searchController,
                      onSubmitted: (value) {
                        soundService.playSound(SoundEffect.click);
                        if (value.trim().isNotEmpty) {
                          ref
                              .read(simplePokemonListProvider.notifier)
                              .searchPokemon(value.trim());
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // Filter button
                GestureDetector(
                  onTap: () {
                    soundService.playSound(SoundEffect.click);
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) => const FilterBottomSheet(),
                    );
                  },
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.tune, color: Color(0xFFDC0A2D)),
                  ),
                ),
                const SizedBox(width: 12),
                GestureDetector(
                  onTap: () {
                    soundService.playSound(SoundEffect.click);
                    if (pokemonState.isSearchMode) {
                      // If in search mode, clear search and show all Pokemon
                      ref
                          .read(simplePokemonListProvider.notifier)
                          .clearSearch();
                      _searchController.clear();
                      FocusScope.of(context).unfocus();
                    } else {
                      // Trigger API search
                      final query = _searchController.text.trim();
                      if (query.isNotEmpty) {
                        ref
                            .read(simplePokemonListProvider.notifier)
                            .searchPokemon(query);
                        FocusScope.of(context).unfocus();
                      }
                    }
                  },
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      pokemonState.isSearchMode ? Icons.close : Icons.search,
                      color: Color(0xFFDC0A2D),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Offline indicator
          _buildOfflineIndicator(),
          // Main content
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                await ref.read(simplePokemonListProvider.notifier).refresh();
              },
              child: CustomScrollView(
                controller: _scrollController,
                slivers: [
                  // Generation filter chips
                  SliverAppBar(
                    floating: true,
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.white,
                    elevation: 0,
                    toolbarHeight: 100,
                    title: Column(
                      children: [
                        const GenerationFilterChips(),
                        const TypeFilterChips(),
                      ],
                    ),
                  ),
                  if (pokemonState.pokemon.isEmpty && pokemonState.isLoading)
                    const SliverFillRemaining(
                      child: Center(child: PokemonLoader(size: 100)),
                    )
                  else if (pokemonState.pokemon.isEmpty &&
                      pokemonState.error != null)
                    SliverFillRemaining(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.error,
                              size: 64,
                              color: Colors.red,
                            ),
                            const SizedBox(height: 16),
                            Text('Error: ${pokemonState.error}'),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {
                                ref
                                    .read(simplePokemonListProvider.notifier)
                                    .refresh();
                              },
                              child: const Text('Retry'),
                            ),
                          ],
                        ),
                      ),
                    )
                  else if (displayPokemon.isEmpty)
                    SliverFillRemaining(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search_off,
                              size: 64,
                              color: Colors.grey[400],
                            ),
                            const SizedBox(height: 16),
                            Text(
                              pokemonState.error ?? 'No Pokémon found',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            if (pokemonState.isSearchMode) ...[
                              const SizedBox(height: 8),
                              Text(
                                'Try searching by name or ID (e.g., "pikachu" or "25")',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[500],
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: () {
                                  soundService.playSound(SoundEffect.click);
                                  ref
                                      .read(simplePokemonListProvider.notifier)
                                      .clearSearch();
                                  _searchController.clear();
                                },
                                child: const Text('Clear Search'),
                              ),
                            ],
                          ],
                        ),
                      ),
                    )
                  else
                    SliverPadding(
                      padding: const EdgeInsets.all(12),
                      sliver: SliverGrid(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 0.8,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                            ),
                        delegate: SliverChildBuilderDelegate((context, index) {
                          final pokemon = displayPokemon[index];

                          return GestureDetector(
                            onLongPress: () {
                              showFavoriteDialog(
                                context: context,
                                ref: ref,
                                pokemonId: pokemon.id,
                                pokemonName: pokemon.name,
                              );
                            },
                            onTap: () async {
                              // Play sound asynchronously without awaiting
                              soundService.playSound(SoundEffect.click);

                              // Show loading overlay immediately
                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                barrierColor: Colors.black.withOpacity(0.3),
                                builder: (context) => const Center(
                                  child: PokemonLoader(size: 80),
                                ),
                              );

                              // Prefetch Pokemon details
                              try {
                                await ref.read(
                                  pokemonDetailProvider(pokemon.id).future,
                                );

                                // Close loading overlay
                                if (context.mounted) {
                                  Navigator.pop(context);

                                  // Navigate to detail screen
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          FigmaPokemonDetailScreen(
                                            pokemon: pokemon,
                                          ),
                                    ),
                                  );
                                }
                              } catch (e) {
                                // Close loading overlay
                                if (context.mounted) {
                                  Navigator.pop(context);

                                  // Show error snackbar
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Error loading Pokémon: $e',
                                      ),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                }
                              }
                            },
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.08),
                                        blurRadius: 8,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      // ID Number
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '#${pokemon.id.toString().padLeft(3, '0')}',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Pokemon Image
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8,
                                          ),
                                          child: Hero(
                                            tag: 'pokemon-${pokemon.id}',
                                            child: CachedNetworkImage(
                                              imageUrl: pokemon.imageUrl,
                                              fit: BoxFit.contain,
                                              placeholder: (context, url) =>
                                                  const Center(
                                                    child: PokemonLoaderSmall(
                                                      size: 35,
                                                    ),
                                                  ),
                                              errorWidget:
                                                  (context, url, error) => Icon(
                                                    Icons.catching_pokemon,
                                                    size: 40,
                                                    color: Colors.grey[300],
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Pokemon Name
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                          8,
                                          0,
                                          8,
                                          12,
                                        ),
                                        child: Text(
                                          pokemon.name[0].toUpperCase() +
                                              pokemon.name.substring(1),
                                          style: const TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black87,
                                          ),
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Favorite indicator
                                Consumer(
                                  builder: (context, ref, child) {
                                    final isFavorite = ref.watch(
                                      favoritesProvider.select(
                                        (favorites) =>
                                            favorites.contains(pokemon.id),
                                      ),
                                    );

                                    if (!isFavorite)
                                      return const SizedBox.shrink();

                                    return Positioned(
                                      top: 6,
                                      left: 6,
                                      child: Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFDC0A2D),
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(
                                                0.2,
                                              ),
                                              blurRadius: 4,
                                              offset: const Offset(0, 2),
                                            ),
                                          ],
                                        ),
                                        child: const Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          );
                        }, childCount: displayPokemon.length),
                      ),
                    ),
                  if (pokemonState.isLoading && pokemonState.pokemon.isNotEmpty)
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(child: PokemonLoaderSmall(size: 60)),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExpandableFab() {
    final soundService = ref.watch(soundServiceProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Favorites button (shown when expanded)
        if (_isFabExpanded) ...[
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            child: FloatingActionButton(
              heroTag: 'favorites',
              backgroundColor: const Color(0xFFDC0A2D),
              onPressed: () {
                soundService.playSound(SoundEffect.click);
                setState(() => _isFabExpanded = false);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavouritesScreen(),
                  ),
                );
              },
              child: const Icon(Icons.favorite, color: Colors.white),
            ),
          ),
          // Settings button (shown when expanded)
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            child: FloatingActionButton(
              heroTag: 'settings',
              backgroundColor: const Color(0xFFDC0A2D),
              onPressed: () {
                soundService.playSound(SoundEffect.click);
                setState(() => _isFabExpanded = false);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              },
              child: const Icon(Icons.settings, color: Colors.white),
            ),
          ),
        ],
        // Main FAB button
        FloatingActionButton(
          heroTag: 'main',
          backgroundColor: const Color(0xFFDC0A2D),
          onPressed: () {
            soundService.playSound(SoundEffect.click);
            setState(() => _isFabExpanded = !_isFabExpanded);
          },
          child: AnimatedRotation(
            turns: _isFabExpanded ? 0.5 : 0.0, // 45 degrees when expanded
            duration: const Duration(milliseconds: 200),
            child: Icon(
              _isFabExpanded ? Icons.close : Icons.more_horiz,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOfflineIndicator() {
    final isOnlineAsync = ref.watch(isOnlineProvider);

    return isOnlineAsync.when(
      loading: () => const SizedBox.shrink(),
      error: (_, __) => const SizedBox.shrink(),
      data: (isOnline) {
        if (isOnline) return const SizedBox.shrink();

        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          color: Colors.orange[700],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.wifi_off, color: Colors.white, size: 16),
              const SizedBox(width: 8),
              const Text(
                'You are offline - Using cached data',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
