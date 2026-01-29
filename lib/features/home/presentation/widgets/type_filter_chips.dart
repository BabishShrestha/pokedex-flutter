import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/services/sound_service.dart';
import 'package:pokedex/core/utils/pokemon_type_colors.dart';
import 'package:pokedex/features/home/data/type_filter_provider.dart';

/// Type filter chips widget with 18 Pokemon types
class TypeFilterChips extends ConsumerWidget {
  const TypeFilterChips({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final typeState = ref.watch(typeFilterProvider);
    final soundService = ref.watch(soundServiceProvider);

    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: allTypes.length,
        itemBuilder: (context, index) {
          final typeName = allTypes[index];
          final isSelected = typeState.isTypeSelected(typeName);
          final typeColor = PokemonTypeColors.getTypeColor(typeName);

          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: FilterChip(
              showCheckmark: false,
              visualDensity: VisualDensity.compact,
              labelPadding: const EdgeInsets.symmetric(horizontal: 12),
              label: Text(typeName[0].toUpperCase() + typeName.substring(1)),
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
                fontSize: 13,
              ),
              side: BorderSide(
                color: isSelected ? typeColor : Colors.grey.shade300,
                width: isSelected ? 2 : 1.5,
              ),
              checkmarkColor: typeColor,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
          );
        },
      ),
    );
  }
}
