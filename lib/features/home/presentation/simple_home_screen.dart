import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/services/sound_service.dart';
import 'package:pokedex/core/widgets/pokemon_loader.dart';
import 'package:pokedex/features/home/data/simple_pokemon_provider.dart';
import 'package:pokedex/features/home/presentation/widgets/filter_bottom_sheet.dart';
import 'package:pokedex/features/home/presentation/widgets/generation_filter_chips.dart';
import 'package:pokedex/features/home/presentation/widgets/type_filter_chips.dart';
import 'package:pokedex/features/pokemon_details/figma_pokemon_detail_screen.dart';
import 'package:pokedex/features/pokemon_details/pokemon_detail_provider.dart';
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

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    _debounceTimer?.cancel();
    super.dispose();
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

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.9) {
      ref.read(simplePokemonListProvider.notifier).loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final pokemonState = ref.watch(simplePokemonListProvider);
    final soundService = ref.watch(soundServiceProvider);

    // Use the Pokemon from state (either search result or full list)
    final displayPokemon = pokemonState.pokemon;
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(simplePokemonListProvider.notifier).refresh();
        },
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            // Generation filter chips
            const SliverToBoxAdapter(child: GenerationFilterChips()),
            // Type filter chips
            const SliverToBoxAdapter(child: TypeFilterChips()),
            if (pokemonState.pokemon.isEmpty && pokemonState.isLoading)
              const SliverFillRemaining(
                child: Center(child: PokemonLoader(size: 100)),
              )
            else if (pokemonState.pokemon.isEmpty && pokemonState.error != null)
              SliverFillRemaining(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error, size: 64, color: Colors.red),
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
                      Icon(Icons.search_off, size: 64, color: Colors.grey[400]),
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
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final pokemon = displayPokemon[index];

                    return GestureDetector(
                      onTap: () async {
                        // Play sound asynchronously without awaiting
                        soundService.playSound(SoundEffect.click);

                        // Show loading overlay immediately
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          barrierColor: Colors.black.withOpacity(0.3),
                          builder: (context) =>
                              const Center(child: PokemonLoader(size: 80)),
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
                                    FigmaPokemonDetailScreen(pokemon: pokemon),
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
                                content: Text('Error loading Pokémon: $e'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        }
                      },
                      child: Container(
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
                                    placeholder: (context, url) => const Center(
                                      child: PokemonLoaderSmall(size: 35),
                                    ),
                                    errorWidget: (context, url, error) => Icon(
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
                              padding: const EdgeInsets.fromLTRB(8, 0, 8, 12),
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
    );
  }
}
