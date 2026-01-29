import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/services/sound_service.dart';
import 'package:pokedex/features/home/data/generation_provider.dart';

/// Generation filter chips widget
class GenerationFilterChips extends ConsumerWidget {
  const GenerationFilterChips({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final generationState = ref.watch(generationFilterProvider);
    final soundService = ref.watch(soundServiceProvider);

    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 10, // "All" + Gen 1-9
        itemBuilder: (context, index) {
          if (index == 0) {
            // "All" chip
            final isSelected = generationState.selectedGeneration == null;
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ChoiceChip(
                label: const Text('All'),
                selected: isSelected,
                onSelected: (_) {
                  soundService.playSound(SoundEffect.click);
                  ref.read(generationFilterProvider.notifier).clearGeneration();
                },
                backgroundColor: Colors.white,
                selectedColor: const Color(0xFFDC0A2D),
                labelStyle: TextStyle(
                  color: isSelected ? Colors.white : Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
                side: BorderSide(
                  color: isSelected
                      ? const Color(0xFFDC0A2D)
                      : Colors.grey.shade300,
                  width: 1.5,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
              ),
            );
          }

          final generation = index; // 1-9
          final isSelected = generationState.selectedGeneration == generation;
          final gen = Generation(
            id: generation,
            name: 'generation-$generation',
            pokemonNames: [],
          );

          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ChoiceChip(
              showCheckmark: false,
              label: Text(gen.displayName),
              visualDensity: VisualDensity.compact,
              selected: isSelected,
              onSelected: (_) {
                soundService.playSound(SoundEffect.click);
                ref
                    .read(generationFilterProvider.notifier)
                    .selectGeneration(generation);
              },
              backgroundColor: Colors.white,
              selectedColor: const Color(0xFFDC0A2D),
              labelStyle: TextStyle(
                color: isSelected ? Colors.white : Colors.black87,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
              side: BorderSide(
                color: isSelected
                    ? const Color(0xFFDC0A2D)
                    : Colors.grey.shade300,
                width: 1.5,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
          );
        },
      ),
    );
  }
}
