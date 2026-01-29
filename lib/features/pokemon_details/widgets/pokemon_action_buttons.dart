import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/features/home/data/simple_comparison_provider.dart';
import 'package:pokedex/features/pokemon_compare/simple_compare_screen.dart';

class PokemonActionButtons extends ConsumerWidget {
  final int pokemonId;
  final bool isSelected;
  final bool showCompareButton;

  const PokemonActionButtons({
    super.key,
    required this.pokemonId,
    required this.isSelected,
    required this.showCompareButton,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showCompareButton) ...[
          _buildCompareButton(context),
          const SizedBox(height: 12),
        ],
        _buildSelectionButton(ref),
      ],
    );
  }

  Widget _buildCompareButton(BuildContext context) {
    return FloatingActionButton.extended(
      heroTag: 'compare',
      onPressed: () => _navigateToCompareScreen(context),
      backgroundColor: const Color(0xFFDC0A2D),
      icon: const Icon(Icons.compare_arrows),
      label: const Text('Compare'),
    );
  }

  void _navigateToCompareScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SimpleCompareScreen()),
    );
  }

  Widget _buildSelectionButton(WidgetRef ref) {
    return FloatingActionButton.extended(
      heroTag: 'select',
      onPressed: () => _toggleSelection(ref),
      backgroundColor: isSelected
          ? Colors.grey.shade400
          : const Color(0xFFDC0A2D),
      icon: Icon(isSelected ? Icons.remove : Icons.add),
      label: Text(isSelected ? 'Remove' : 'Add'),
    );
  }

  void _toggleSelection(WidgetRef ref) {
    ref.read(comparisonProvider.notifier).toggleSelection(pokemonId.toString());
  }
}
