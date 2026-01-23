import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/dio/dio_client.dart';
import 'package:pokedex/features/home/domain/entities/entities.dart';

final fetchpokemonListProvider = FutureProvider<List<Pokemon>>(
  (ref) => PokemonRepo(ref).fetchPokemonList(),
);

class PokemonRepo {
  final Ref ref;
  PokemonRepo(this.ref);

  /// Fetches first 151 Pokemon (Gen 1) with parallel requests for better performance
  Future<List<Pokemon>> fetchPokemonList() async {
    try {
      final dio = ref.read(dioProvider);

      // Fetch Pokemon IDs 1-20 for initial testing (can increase to 151 later)
      const int totalPokemon = 20;
      const int batchSize = 10; // Fetch 10 at a time

      final List<Pokemon> allPokemon = [];

      // Process in batches for better performance
      for (int i = 1; i <= totalPokemon; i += batchSize) {
        final int endIndex = (i + batchSize - 1).clamp(1, totalPokemon);

        // Create parallel requests for a batch
        final List<Future<Pokemon>> futures = [];
        for (int id = i; id <= endIndex; id++) {
          futures.add(_fetchSinglePokemon(dio, id));
        }

        // Wait for all requests in this batch to complete
        final batchResults = await Future.wait(futures);
        allPokemon.addAll(batchResults);

        print('Loaded batch: ${allPokemon.length} Pokemon so far');
      }

      print('Successfully loaded ${allPokemon.length} Pokemon');
      return allPokemon;
    } catch (e, stackTrace) {
      print('Error loading Pokemon: $e');
      print('Stack trace: $stackTrace');
      rethrow;
    }
  }

  /// Fetches a single Pokemon's detailed data including sprites
  Future<Pokemon> _fetchSinglePokemon(dio, int id) async {
    try {
      final response = await dio.get("pokemon/$id");
      if (response.statusCode == 200) {
        return Pokemon.fromJson(response.data);
      } else {
        throw Exception(
          "Failed to load pokemon with id $id: ${response.statusCode}",
        );
      }
    } catch (e) {
      print('Error fetching Pokemon $id: $e');
      rethrow;
    }
  }
}
