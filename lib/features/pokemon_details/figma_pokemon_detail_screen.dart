import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/utils/pokemon_type_colors.dart';
import 'package:pokedex/core/widgets/pokemon_loader.dart';
import 'package:pokedex/features/evolution/evolution_chain_widget.dart';
import 'package:pokedex/features/home/data/simple_comparison_provider.dart';
import 'package:pokedex/features/home/data/simple_pokemon_provider.dart';
import 'package:pokedex/features/pokemon_details/pokemon_detail_provider.dart';
import 'package:pokedex/features/pokemon_compare/simple_compare_screen.dart';

class FigmaPokemonDetailScreen extends ConsumerWidget {
  final SimplePokemon pokemon;

  const FigmaPokemonDetailScreen({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(pokemonDetailProvider(pokemon.id));
    final comparisonState = ref.watch(comparisonProvider);
    final isSelected = comparisonState.selectedPokemon.any(
      (p) => p == pokemon.id.toString(),
    );

    return detailAsync.when(
      loading: () => Scaffold(
        backgroundColor: const Color(0xFFDC0A2D),
        appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
        body: Center(
          child: Image.asset('assets/loading.gif', width: 100, height: 100),
        ),
      ),
      error: (error, stack) => Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFDC0A2D),
          title: const Text('Error'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text('Error loading details: $error'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(pokemonDetailProvider(pokemon.id));
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
      data: (detail) {
        final typeColor = detail.types.isNotEmpty
            ? PokemonTypeColors.getTypeColor(detail.types.first)
            : const Color(0xFF48D0B0);

        return Scaffold(
          backgroundColor: typeColor,
          body: Stack(
            children: [
              // Main scrollable content
              CustomScrollView(
                slivers: [
                  // Header with back button and ID
                  SliverAppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    pinned: false,
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                    title: Text(
                      '#${detail.id.toString().padLeft(3, '0')}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    actions: [
                      if (comparisonState.selectedPokemon.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                '${comparisonState.selectedPokemon.length}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),

                  // Pokemon name and image
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 300,
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            detail.name[0].toUpperCase() +
                                detail.name.substring(1),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Expanded(
                            child: Hero(
                              tag: 'pokemon-${pokemon.id}',
                              child: CachedNetworkImage(
                                imageUrl: detail.imageUrl,
                                fit: BoxFit.contain,
                                placeholder: (context, url) => Center(
                                  child: PokemonLoader(
                                    size: 80,
                                    backgroundColor: Colors.white.withOpacity(
                                      0.2,
                                    ),
                                  ),
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(
                                      Icons.error,
                                      size: 100,
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // White card with info
                  SliverToBoxAdapter(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Type badges
                            if (detail.types.isNotEmpty) ...[
                              Center(
                                child: Wrap(
                                  spacing: 8,
                                  children: detail.types
                                      .map(
                                        (type) => Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20,
                                            vertical: 8,
                                          ),
                                          decoration: BoxDecoration(
                                            color:
                                                PokemonTypeColors.getTypeColor(
                                                  type,
                                                ),
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                          child: Text(
                                            type[0].toUpperCase() +
                                                type.substring(1),
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                              const SizedBox(height: 24),
                            ],

                            // About section title
                            Text(
                              'About',
                              style: TextStyle(
                                color: typeColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),

                            // Weight and Height
                            Row(
                              children: [
                                Expanded(
                                  child: _buildInfoCard(
                                    icon: Icons.monitor_weight_outlined,
                                    label: 'Weight',
                                    value:
                                        '${(detail.weight / 10).toStringAsFixed(1)} kg',
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: _buildInfoCard(
                                    icon: Icons.height,
                                    label: 'Height',
                                    value:
                                        '${(detail.height / 10).toStringAsFixed(1)} m',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),

                            // Abilities (Moves)
                            if (detail.abilities.isNotEmpty) ...[
                              _buildInfoCard(
                                icon: Icons.swap_horiz,
                                label: 'Moves',
                                value: detail.abilities
                                    .take(2)
                                    .map(
                                      (a) =>
                                          a.name[0].toUpperCase() +
                                          a.name.substring(1),
                                    )
                                    .join(', '),
                              ),
                              const SizedBox(height: 24),
                            ],

                            // Evolution Chain
                            EvolutionChainWidget(pokemonId: detail.id),

                            const SizedBox(height: 16),

                            // Base Stats
                            Text(
                              'Base Stats',
                              style: TextStyle(
                                color: typeColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),

                            // Stats bars
                            ...detail.stats.map((stat) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: _buildStatBar(
                                  stat.name,
                                  stat.value,
                                  typeColor,
                                ),
                              );
                            }).toList(),

                            const SizedBox(height: 80), // Space for FABs
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Floating Action Buttons
              Positioned(
                bottom: 16,
                right: 16,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (comparisonState.selectedPokemon.length >= 2)
                      FloatingActionButton.extended(
                        heroTag: 'compare',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SimpleCompareScreen(),
                            ),
                          );
                        },
                        backgroundColor: const Color(0xFFDC0A2D),
                        icon: const Icon(Icons.compare_arrows),
                        label: const Text('Compare'),
                      ),
                    if (comparisonState.selectedPokemon.length >= 2)
                      const SizedBox(height: 12),
                    FloatingActionButton.extended(
                      heroTag: 'select',
                      onPressed: () {
                        ref
                            .read(comparisonProvider.notifier)
                            .toggleSelection(pokemon.id.toString());
                      },
                      backgroundColor: isSelected
                          ? Colors.grey.shade400
                          : const Color(0xFFDC0A2D),
                      icon: Icon(isSelected ? Icons.remove : Icons.add),
                      label: Text(isSelected ? 'Remove' : 'Add'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey.shade600, size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatBar(String name, int value, Color color) {
    // Normalize stat value (max around 255)
    final percentage = (value / 255).clamp(0.0, 1.0);

    return Row(
      children: [
        SizedBox(
          width: 80,
          child: Text(
            _formatStatName(name),
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(width: 12),
        SizedBox(
          width: 40,
          child: Text(
            value.toString().padLeft(3, '0'),
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Stack(
            children: [
              Container(
                height: 6,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              FractionallySizedBox(
                widthFactor: percentage,
                child: Container(
                  height: 6,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _formatStatName(String name) {
    switch (name.toLowerCase()) {
      case 'hp':
        return 'HP';
      case 'attack':
        return 'ATK';
      case 'defense':
        return 'DEF';
      case 'special-attack':
        return 'SATK';
      case 'special-defense':
        return 'SDEF';
      case 'speed':
        return 'SPD';
      default:
        return name.toUpperCase();
    }
  }
}
