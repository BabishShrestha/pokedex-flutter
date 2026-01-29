import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/core/widgets/pokemon_loader.dart';
import 'package:pokedex/features/home/data/simple_pokemon_provider.dart';
import 'package:pokedex/features/pokemon_details/pokemon_detail_provider.dart';

class PokemonDetailHeader extends StatelessWidget {
  final SimplePokemon pokemon;
  final PokemonDetail detail;

  const PokemonDetailHeader({
    super.key,
    required this.pokemon,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 300,
        child: Column(
          children: [
            const SizedBox(height: 10),
            _buildPokemonName(),
            const SizedBox(height: 20),
            Expanded(child: _buildPokemonImage()),
          ],
        ),
      ),
    );
  }

  Widget _buildPokemonName() {
    final capitalizedName =
        detail.name[0].toUpperCase() + detail.name.substring(1);

    return Text(
      capitalizedName,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildPokemonImage() {
    return Hero(
      tag: 'pokemon-${pokemon.id}',
      child: CachedNetworkImage(
        imageUrl: detail.imageUrl,
        fit: BoxFit.contain,
        placeholder: (context, url) => Center(
          child: PokemonLoader(
            size: 80,
            backgroundColor: Colors.white.withOpacity(0.2),
          ),
        ),
        errorWidget: (context, url, error) =>
            const Icon(Icons.error, size: 100, color: Colors.white),
      ),
    );
  }
}
