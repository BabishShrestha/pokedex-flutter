import 'package:flutter/material.dart';
import 'package:pokedex/core/utils/pokemon_type_colors.dart';

class PokemonTypeBadges extends StatelessWidget {
  final List<String> types;

  const PokemonTypeBadges({super.key, required this.types});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(spacing: 8, children: types.map(_buildTypeBadge).toList()),
    );
  }

  Widget _buildTypeBadge(String type) {
    final capitalizedType = type[0].toUpperCase() + type.substring(1);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: PokemonTypeColors.getTypeColor(type),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        capitalizedType,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
