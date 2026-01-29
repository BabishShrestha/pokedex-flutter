import 'package:flutter/material.dart';
import 'package:pokedex/features/pokemon_details/pokemon_species_provider.dart';

/// Widget to display Pokemon description, generation, and legendary/mythical status
class PokemonDescriptionWidget extends StatelessWidget {
  final PokemonSpecies species;
  final Color typeColor;

  const PokemonDescriptionWidget({
    super.key,
    required this.species,
    required this.typeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Status badges (legendary/mythical)
        if (species.isLegendary || species.isMythical) ...[
          _buildStatusBadges(),
          const SizedBox(height: 12),
        ],

        // Description text
        Text(
          species.description,
          style: TextStyle(fontSize: 14, height: 1.5, color: Colors.grey[700]),
        ),
        const SizedBox(height: 12),

        // Generation info
        _buildGenerationChip(),
      ],
    );
  }

  Widget _buildStatusBadges() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        if (species.isLegendary) _buildBadge('Legendary', _legendaryColor),
        if (species.isMythical) _buildBadge('Mythical', _mythicalColor),
      ],
    );
  }

  Widget _buildBadge(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color, color.withOpacity(0.8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(_getBadgeIcon(label), size: 14, color: Colors.white),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }

  IconData _getBadgeIcon(String label) {
    if (label == 'Legendary') return Icons.stars;
    if (label == 'Mythical') return Icons.auto_awesome;
    return Icons.label;
  }

  Widget _buildGenerationChip() {
    return Row(
      children: [
        Icon(Icons.category_outlined, size: 16, color: typeColor),
        const SizedBox(width: 6),
        Text(
          species.generation,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: typeColor,
          ),
        ),
      ],
    );
  }

  // Colors for badges
  static const Color _legendaryColor = Color(0xFFFFD700); // Gold
  static const Color _mythicalColor = Color(0xFFE040FB); // Purple/Pink
}

/// Compact loading placeholder for species data
class PokemonDescriptionLoading extends StatelessWidget {
  const PokemonDescriptionLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Description placeholder
        _buildShimmerBox(width: double.infinity, height: 14),
        const SizedBox(height: 8),
        _buildShimmerBox(width: double.infinity, height: 14),
        const SizedBox(height: 8),
        _buildShimmerBox(width: 200, height: 14),
        const SizedBox(height: 12),
        // Generation placeholder
        _buildShimmerBox(width: 120, height: 16),
      ],
    );
  }

  Widget _buildShimmerBox({required double width, required double height}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

/// Error state for species data (minimal, non-intrusive)
class PokemonDescriptionError extends StatelessWidget {
  final String? message;

  const PokemonDescriptionError({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Text(
      message ?? 'Description unavailable',
      style: TextStyle(
        fontSize: 14,
        fontStyle: FontStyle.italic,
        color: Colors.grey[500],
      ),
    );
  }
}
