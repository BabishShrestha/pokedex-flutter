import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pokedex/core/services/sound_service.dart';
import 'package:pokedex/core/widgets/favorite_dialog.dart';
import 'package:pokedex/core/widgets/pokemon_loader.dart';
import 'package:pokedex/features/home/data/favorites_provider.dart';
import 'package:pokedex/features/home/data/simple_pokemon_provider.dart';
import 'package:pokedex/features/pokemon_details/figma_pokemon_detail_screen.dart';
import 'package:pokedex/features/pokemon_details/pokemon_detail_provider.dart';

class FavouritesScreen extends ConsumerWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteIds = ref.watch(favoritesProvider);
    final pokemonState = ref.watch(simplePokemonListProvider);
    final soundService = ref.watch(soundServiceProvider);

    // Filter Pokemon list to only show favorites
    final favoritePokemon = pokemonState.pokemon
        .where((pokemon) => favoriteIds.contains(pokemon.id))
        .toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFDC0A2D),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            soundService.playSound(SoundEffect.click);
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            const Icon(Icons.favorite, color: Colors.white, size: 24),
            const SizedBox(width: 12),
            const Text(
              'Favorites',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          if (favoritePokemon.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.delete_outline, color: Colors.white),
              onPressed: () {
                soundService.playSound(SoundEffect.click);
                _showClearConfirmDialog(context, ref, soundService);
              },
            ),
        ],
      ),
      body: favoriteIds.isEmpty
          ? _buildEmptyState(context)
          : pokemonState.isLoading && favoritePokemon.isEmpty
          ? const Center(child: PokemonLoader(size: 100))
          : Column(
              children: [
                // Stats bar
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.grey[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.catching_pokemon,
                        color: Color(0xFFDC0A2D),
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${favoritePokemon.length} Favorite Pokémon',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                // Grid
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.all(12),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 0.8,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                        ),
                    itemCount: favoritePokemon.length,
                    itemBuilder: (context, index) {
                      final pokemon = favoritePokemon[index];
                      return _buildPokemonCard(
                        context,
                        ref,
                        pokemon,
                        soundService,
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Pokeball icon with animation
          TweenAnimationBuilder<double>(
            tween: Tween(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 800),
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.favorite_border,
                    size: 60,
                    color: Color(0xFFDC0A2D),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 32),
          Text(
            'No Favorites Yet',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Text(
              'Start adding your favorite Pokémon by tapping the heart icon on any Pokémon detail page',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton.icon(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.search),
            label: const Text('Browse Pokémon'),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFDC0A2D),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPokemonCard(
    BuildContext context,
    WidgetRef ref,
    dynamic pokemon,
    SoundService soundService,
  ) {
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
        soundService.playSound(SoundEffect.click);

        showDialog(
          context: context,
          barrierDismissible: false,
          barrierColor: Colors.black.withOpacity(0.3),
          builder: (context) => const Center(child: PokemonLoader(size: 80)),
        );

        try {
          await ref.read(pokemonDetailProvider(pokemon.id).future);

          if (context.mounted) {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    FigmaPokemonDetailScreen(pokemon: pokemon),
              ),
            );
          }
        } catch (e) {
          if (context.mounted) {
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error loading Pokémon: $e'),
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
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Hero(
                      tag: 'pokemon-${pokemon.id}',
                      child: CachedNetworkImage(
                        imageUrl: pokemon.imageUrl,
                        fit: BoxFit.contain,
                        placeholder: (context, url) =>
                            const Center(child: PokemonLoaderSmall(size: 35)),
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
                    pokemon.name[0].toUpperCase() + pokemon.name.substring(1),
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
          // Favorite heart indicator
          Positioned(
            top: 8,
            left: 8,
            child: GestureDetector(
              onTap: () {
                soundService.playSound(SoundEffect.click);
                ref.read(favoritesProvider.notifier).removeFavorite(pokemon.id);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Removed ${pokemon.name[0].toUpperCase()}${pokemon.name.substring(1)} from favorites',
                    ),
                    duration: const Duration(seconds: 2),
                    backgroundColor: const Color(0xFFDC0A2D),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: const Color(0xFFDC0A2D),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showClearConfirmDialog(
    BuildContext context,
    WidgetRef ref,
    SoundService soundService,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.delete_forever,
                  color: Colors.red,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              const Text('Clear All Favorites'),
            ],
          ),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Are you sure you want to remove all Pokémon from your favorites?',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.warning_amber_rounded,
                    color: Colors.orange,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'This action cannot be undone.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.orange,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                soundService.playSound(SoundEffect.click);
                Navigator.pop(dialogContext);
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
              child: const Text(
                'Cancel',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                soundService.playSound(SoundEffect.click);
                ref.read(favoritesProvider.notifier).clearAllFavorites();
                Navigator.pop(dialogContext);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('All favorites cleared'),
                    backgroundColor: Color(0xFFDC0A2D),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                elevation: 0,
              ),
              child: const Text(
                'Clear All',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        );
      },
    );
  }
}
