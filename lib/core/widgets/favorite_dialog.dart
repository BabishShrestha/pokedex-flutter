import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/services/sound_service.dart';
import 'package:pokedex/features/home/data/favorites_provider.dart';

/// Shows a confirmation dialog for adding/removing a Pokemon from favorites
Future<void> showFavoriteDialog({
  required BuildContext context,
  required WidgetRef ref,
  required int pokemonId,
  String? pokemonName,
}) async {
  final isFavorite = ref.read(favoritesProvider).contains(pokemonId);

  return showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFFDC0A2D).withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: const Color(0xFFDC0A2D),
                size: 24,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                isFavorite ? 'Remove Favorite?' : 'Add to Favorites?',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isFavorite
                  ? 'Do you want to remove this Pokémon from your favorites?'
                  : 'Do you want to add this Pokémon to your favorites?',
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(Icons.info_outline, color: Colors.grey[600], size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      isFavorite
                          ? 'You can always add it back later'
                          : 'Access your favorites anytime from the menu',
                      style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              ref.read(soundServiceProvider).playSound(SoundEffect.click);
              Navigator.pop(dialogContext);
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: const Text(
              'Cancel',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(soundServiceProvider).playSound(SoundEffect.click);
              ref.read(favoritesProvider.notifier).toggleFavorite(pokemonId);
              Navigator.pop(dialogContext);

              // Show snackbar
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Row(
                    children: [
                      Icon(
                        isFavorite ? Icons.heart_broken : Icons.favorite,
                        color: Colors.white,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        isFavorite
                            ? 'Removed from favorites'
                            : 'Added to favorites',
                      ),
                    ],
                  ),
                  duration: const Duration(seconds: 2),
                  backgroundColor: isFavorite
                      ? Colors.grey[700]
                      : const Color(0xFFDC0A2D),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: isFavorite
                  ? Colors.red
                  : const Color(0xFFDC0A2D),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              elevation: 0,
            ),
            child: Text(
              isFavorite ? 'Remove' : 'Add',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      );
    },
  );
}
