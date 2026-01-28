import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/widgets/pokemon_loader.dart';
import 'package:pokedex/features/evolution/evolution_chain_provider.dart';

/// Evolution chain widget showing horizontal flow of evolutions
class EvolutionChainWidget extends ConsumerWidget {
  final int pokemonId;

  const EvolutionChainWidget({required this.pokemonId, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final evolutionChainAsync = ref.watch(evolutionChainProvider(pokemonId));

    return evolutionChainAsync.when(
      data: (chain) {
        if (chain == null || !chain.hasEvolutions) {
          return const SizedBox.shrink();
        }

        return Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Evolution Chain',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16),
              _buildEvolutionFlow(chain),
            ],
          ),
        );
      },
      loading: () => const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: PokemonLoaderSmall(size: 40),
        ),
      ),
      error: (error, stack) {
        print('Evolution chain error: $error');
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildEvolutionFlow(EvolutionChain chain) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: _buildStage(chain.baseSpecies),
    );
  }

  Widget _buildStage(EvolutionMember member) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Current Pokemon
        _buildPokemonCard(member),

        // Evolutions
        if (member.evolvesTo.isNotEmpty) ...[
          for (var evoTrigger in member.evolvesTo) ...[
            // Arrow with requirement
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  const Icon(Icons.arrow_forward, color: Colors.grey, size: 24),
                  if (evoTrigger.minLevel != null ||
                      evoTrigger.item != null ||
                      evoTrigger.condition != null)
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        evoTrigger.displayRequirement,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                ],
              ),
            ),
            // Next evolution
            _buildStage(evoTrigger.pokemon),
          ],
        ],
      ],
    );
  }

  Widget _buildPokemonCard(EvolutionMember member) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300, width: 1.5),
      ),
      child: Column(
        children: [
          // Pokemon image
          SizedBox(
            height: 70,
            child: CachedNetworkImage(
              imageUrl: member.imageUrl,
              fit: BoxFit.contain,
              placeholder: (context, url) =>
                  const Center(child: PokemonLoaderSmall(size: 30)),
              errorWidget: (context, url, error) => Icon(
                Icons.catching_pokemon,
                size: 40,
                color: Colors.grey[300],
              ),
            ),
          ),
          const SizedBox(height: 4),
          // Pokemon ID
          Text(
            '#${member.id.toString().padLeft(3, '0')}',
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w600,
            ),
          ),
          // Pokemon name
          Text(
            member.name[0].toUpperCase() + member.name.substring(1),
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
