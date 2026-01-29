import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/services/sound_service.dart';
import 'package:pokedex/features/home/data/favorites_provider.dart';

class PokemonDetailAppBar extends ConsumerWidget {
  final int pokemonId;
  final int comparisonCount;

  const PokemonDetailAppBar({
    super.key,
    required this.pokemonId,
    required this.comparisonCount,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref.watch(
      favoritesProvider.select((favorites) => favorites.contains(pokemonId)),
    );
    final soundService = ref.watch(soundServiceProvider);

    return SliverAppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      pinned: false,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          soundService.playSound(SoundEffect.click);
          Navigator.pop(context);
        },
      ),
      title: Text(
        '#${pokemonId.toString().padLeft(3, '0')}',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        // Favorite button with better visibility
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: GestureDetector(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.white.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: IconButton(
                icon: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  transitionBuilder: (child, animation) {
                    return ScaleTransition(scale: animation, child: child);
                  },
                  child: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    key: ValueKey(isFavorite),
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                onPressed: () {
                  soundService.playSound(SoundEffect.click);
                  ref
                      .read(favoritesProvider.notifier)
                      .toggleFavorite(pokemonId);

                  // Show snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        isFavorite
                            ? 'Removed from favorites'
                            : 'Added to favorites',
                      ),
                      duration: const Duration(seconds: 1),
                      backgroundColor: isFavorite
                          ? Colors.grey[700]
                          : Colors.red,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        if (comparisonCount > 0) _buildComparisonBadge(),
      ],
    );
  }

  Widget _buildComparisonBadge() {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            '$comparisonCount',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
