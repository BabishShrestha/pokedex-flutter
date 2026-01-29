import 'package:flutter/material.dart';

class PokemonDetailAppBar extends StatelessWidget {
  final int pokemonId;
  final int comparisonCount;

  const PokemonDetailAppBar({
    super.key,
    required this.pokemonId,
    required this.comparisonCount,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      pinned: false,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(
        '#${pokemonId.toString().padLeft(3, '0')}',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [if (comparisonCount > 0) _buildComparisonBadge()],
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
