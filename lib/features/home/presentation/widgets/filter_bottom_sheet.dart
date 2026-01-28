import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/services/sound_service.dart';
import 'package:pokedex/core/utils/pokemon_type_colors.dart';
import 'package:pokedex/features/home/data/generation_provider.dart';
import 'package:pokedex/features/home/data/type_filter_provider.dart';

enum SortOption { idAsc, idDesc, nameAsc, nameDesc }

extension SortOptionExtension on SortOption {
  String get displayName {
    switch (this) {
      case SortOption.idAsc:
        return 'ID (Low to High)';
      case SortOption.idDesc:
        return 'ID (High to Low)';
      case SortOption.nameAsc:
        return 'Name (A to Z)';
      case SortOption.nameDesc:
        return 'Name (Z to A)';
    }
  }

  IconData get icon {
    switch (this) {
      case SortOption.idAsc:
        return Icons.arrow_upward;
      case SortOption.idDesc:
        return Icons.arrow_downward;
      case SortOption.nameAsc:
        return Icons.sort_by_alpha;
      case SortOption.nameDesc:
        return Icons.sort_by_alpha;
    }
  }
}

/// Sort state notifier
class SortNotifier extends Notifier<SortOption> {
  @override
  SortOption build() => SortOption.idAsc;

  void setSortOption(SortOption option) {
    state = option;
  }
}

/// Sort provider
final sortOptionProvider = NotifierProvider<SortNotifier, SortOption>(() {
  return SortNotifier();
});

/// Filter bottom sheet
class FilterBottomSheet extends ConsumerWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final generationState = ref.watch(generationFilterProvider);
    final typeState = ref.watch(typeFilterProvider);
    final currentSort = ref.watch(sortOptionProvider);
    final soundService = ref.watch(soundServiceProvider);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Filters & Sort',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    soundService.playSound(SoundEffect.click);
                    // Clear all filters
                    ref
                        .read(generationFilterProvider.notifier)
                        .clearGeneration();
                    ref.read(typeFilterProvider.notifier).clearTypes();
                    ref
                        .read(sortOptionProvider.notifier)
                        .setSortOption(SortOption.idAsc);
                  },
                  icon: const Icon(Icons.clear_all),
                  label: const Text('Clear All'),
                  style: TextButton.styleFrom(
                    foregroundColor: const Color(0xFFDC0A2D),
                  ),
                ),
              ],
            ),
            const Divider(height: 24),

            // Sort Options
            const Text(
              'Sort By',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: SortOption.values.map((option) {
                final isSelected = currentSort == option;
                return ChoiceChip(
                  label: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(option.icon, size: 16),
                      const SizedBox(width: 4),
                      Text(option.displayName),
                    ],
                  ),
                  selected: isSelected,
                  onSelected: (_) {
                    soundService.playSound(SoundEffect.click);
                    ref.read(sortOptionProvider.notifier).setSortOption(option);
                  },
                  backgroundColor: Colors.white,
                  selectedColor: const Color(0xFFDC0A2D).withOpacity(0.15),
                  labelStyle: TextStyle(
                    color: isSelected
                        ? const Color(0xFFDC0A2D)
                        : Colors.black87,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
                  ),
                  side: BorderSide(
                    color: isSelected
                        ? const Color(0xFFDC0A2D)
                        : Colors.grey.shade300,
                    width: isSelected ? 2 : 1,
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 24),
            const Divider(),

            // Generation Filter
            const Text(
              'Generation',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                // "All" option
                ChoiceChip(
                  label: const Text('All'),
                  selected: generationState.selectedGeneration == null,
                  onSelected: (_) {
                    soundService.playSound(SoundEffect.click);
                    ref
                        .read(generationFilterProvider.notifier)
                        .clearGeneration();
                  },
                  backgroundColor: Colors.white,
                  selectedColor: const Color(0xFFDC0A2D),
                  labelStyle: TextStyle(
                    color: generationState.selectedGeneration == null
                        ? Colors.white
                        : Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                  side: BorderSide(
                    color: generationState.selectedGeneration == null
                        ? const Color(0xFFDC0A2D)
                        : Colors.grey.shade300,
                  ),
                ),
                // Generation 1-9
                ...List.generate(9, (index) {
                  final gen = index + 1;
                  final isSelected = generationState.selectedGeneration == gen;
                  return ChoiceChip(
                    label: Text(
                      'Gen ${['I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX'][index]}',
                    ),
                    selected: isSelected,
                    onSelected: (_) {
                      soundService.playSound(SoundEffect.click);
                      ref
                          .read(generationFilterProvider.notifier)
                          .selectGeneration(gen);
                    },
                    backgroundColor: Colors.white,
                    selectedColor: const Color(0xFFDC0A2D),
                    labelStyle: TextStyle(
                      color: isSelected ? Colors.white : Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                    side: BorderSide(
                      color: isSelected
                          ? const Color(0xFFDC0A2D)
                          : Colors.grey.shade300,
                    ),
                  );
                }),
              ],
            ),

            const SizedBox(height: 24),
            const Divider(),

            // Type Filter
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Types',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                if (typeState.selectedTypes.isNotEmpty)
                  Text(
                    '${typeState.selectedTypes.length} selected',
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
              ],
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: allTypes.map((typeName) {
                final isSelected = typeState.isTypeSelected(typeName);
                final typeColor = PokemonTypeColors.getTypeColor(typeName);

                return FilterChip(
                  label: Text(
                    typeName[0].toUpperCase() + typeName.substring(1),
                  ),
                  selected: isSelected,
                  onSelected: (_) {
                    soundService.playSound(SoundEffect.click);
                    ref.read(typeFilterProvider.notifier).toggleType(typeName);
                  },
                  backgroundColor: Colors.white,
                  selectedColor: typeColor.withOpacity(0.2),
                  labelStyle: TextStyle(
                    color: isSelected ? typeColor : Colors.black87,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
                  ),
                  side: BorderSide(
                    color: isSelected ? typeColor : Colors.grey.shade300,
                    width: isSelected ? 2 : 1,
                  ),
                  checkmarkColor: typeColor,
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            // Apply Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  soundService.playSound(SoundEffect.click);
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFDC0A2D),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Apply Filters',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
