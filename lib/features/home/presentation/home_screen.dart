import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/features/home/data/remote_data_repo.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonList = ref.watch(fetchpokemonListProvider);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          pokemonList.when(
            data: (pokemons) {
              return SliverList(
                delegate: SliverChildBuilderDelegate((
                  BuildContext context,
                  index,
                ) {
                  final pokemon = pokemons[index];
                  // Get the best available image URL with fallbacks and null safety
                  String? imageUrl;
                  try {
                    // Try official artwork first
                    if (pokemon.sprites.other?.officialArtwork.frontDefault !=
                            null &&
                        pokemon
                            .sprites
                            .other!
                            .officialArtwork
                            .frontDefault!
                            .isNotEmpty) {
                      imageUrl =
                          pokemon.sprites.other!.officialArtwork.frontDefault;
                    }
                    // Fall back to standard front sprite
                    else if (pokemon.sprites.frontDefault != null &&
                        pokemon.sprites.frontDefault!.isNotEmpty) {
                      imageUrl = pokemon.sprites.frontDefault;
                    }
                  } catch (e) {
                    // Handle any null pointer exceptions
                    imageUrl = null;
                  }

                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          if (imageUrl != null)
                            CachedNetworkImage(
                              imageUrl: imageUrl,
                              height: 120,
                              width: 120,
                              placeholder: (context, url) => SizedBox(
                                height: 120,
                                width: 120,
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                              errorWidget: (context, url, error) => Icon(
                                Icons.error,
                                size: 60,
                                color: Colors.red,
                              ),
                            )
                          else
                            Container(
                              height: 120,
                              width: 120,
                              color: Colors.grey[300],
                              child: Icon(Icons.image_not_supported, size: 60),
                            ),
                          SizedBox(height: 12),
                          Text(
                            pokemon.name.toUpperCase(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '#${pokemon.id.toString().padLeft(3, '0')}',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }, childCount: pokemons.length),
              );
            },
            loading: () => SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (error, stack) => SliverFillRemaining(
              child: Center(child: Text('Error: $error')),
            ),
          ),
        ],
      ),
    );
  }
}
