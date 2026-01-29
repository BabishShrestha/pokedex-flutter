import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/features/evolution/evolution_chain_widget.dart';
import 'package:pokedex/features/pokemon_details/pokemon_detail_provider.dart';
import 'package:pokedex/features/pokemon_details/pokemon_species_provider.dart';
import 'package:pokedex/features/pokemon_details/widgets/pokemon_description_widget.dart';
import 'package:pokedex/features/pokemon_details/widgets/pokemon_info_card.dart';
import 'package:pokedex/features/pokemon_details/widgets/pokemon_stat_bar.dart';
import 'package:pokedex/features/pokemon_details/widgets/pokemon_type_badges.dart';

class PokemonDetailContent extends ConsumerWidget {
  final PokemonDetail detail;
  final Color typeColor;

  const PokemonDetailContent({
    super.key,
    required this.detail,
    required this.typeColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final speciesAsync = ref.watch(pokemonSpeciesProvider(detail.id));

    return SliverToBoxAdapter(
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
              if (detail.types.isNotEmpty) ...[
                PokemonTypeBadges(types: detail.types),
                const SizedBox(height: 24),
              ],
              _buildSectionTitle('About'),
              const SizedBox(height: 16),
              // Species description section
              speciesAsync.when(
                loading: () => const PokemonDescriptionLoading(),
                error: (_, __) => const PokemonDescriptionError(),
                data: (species) => PokemonDescriptionWidget(
                  species: species,
                  typeColor: typeColor,
                ),
              ),
              const SizedBox(height: 16),
              _buildPhysicalStats(),
              const SizedBox(height: 16),
              if (detail.abilities.isNotEmpty) ...[
                _buildAbilities(),
                const SizedBox(height: 24),
              ],
              EvolutionChainWidget(pokemonId: detail.id),
              const SizedBox(height: 16),
              _buildSectionTitle('Base Stats'),
              const SizedBox(height: 16),
              _buildStats(),
              const SizedBox(height: 80), // Space for FABs
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        color: typeColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildPhysicalStats() {
    return Row(
      children: [
        Expanded(
          child: PokemonInfoCard(
            icon: Icons.monitor_weight_outlined,
            label: 'Weight',
            value: '${(detail.weight / 10).toStringAsFixed(1)} kg',
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: PokemonInfoCard(
            icon: Icons.height,
            label: 'Height',
            value: '${(detail.height / 10).toStringAsFixed(1)} m',
          ),
        ),
      ],
    );
  }

  Widget _buildAbilities() {
    final abilitiesText = detail.abilities
        .take(3)
        .map((a) => a.name[0].toUpperCase() + a.name.substring(1))
        .join(', ');

    return PokemonInfoCard(
      icon: Icons.swap_horiz,
      label: 'Abilities',
      value: abilitiesText,
    );
  }

  Widget _buildStats() {
    return Column(
      children: detail.stats.map((stat) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: PokemonStatBar(
            name: stat.name,
            value: stat.value,
            color: typeColor,
          ),
        );
      }).toList(),
    );
  }
}
