import 'package:flutter_riverpod/flutter_riverpod.dart';

/// State for Pokemon comparison with simplified model
class SimpleComparisonState {
  final List<String> selectedPokemon;

  const SimpleComparisonState({this.selectedPokemon = const []});

  SimpleComparisonState copyWith({List<String>? selectedPokemon}) {
    return SimpleComparisonState(
      selectedPokemon: selectedPokemon ?? this.selectedPokemon,
    );
  }
}

/// Notifier for Pokemon comparison state
class SimpleComparisonNotifier extends Notifier<SimpleComparisonState> {
  @override
  SimpleComparisonState build() => const SimpleComparisonState();

  /// Toggle Pokemon selection by ID
  void toggleSelection(String pokemonId) {
    final currentList = List<String>.from(state.selectedPokemon);

    if (currentList.contains(pokemonId)) {
      currentList.remove(pokemonId);
    } else {
      // Limit to 6 Pokemon for comparison
      if (currentList.length < 6) {
        currentList.add(pokemonId);
      }
    }

    state = state.copyWith(selectedPokemon: currentList);
  }

  /// Check if Pokemon is selected
  bool isSelected(String pokemonId) =>
      state.selectedPokemon.contains(pokemonId);

  /// Clear all selections
  void clearSelection() {
    state = state.copyWith(selectedPokemon: []);
  }

  /// Get count of selected Pokemon
  int get selectedCount => state.selectedPokemon.length;
}

/// Provider for simple comparison state
final comparisonProvider =
    NotifierProvider<SimpleComparisonNotifier, SimpleComparisonState>(
      SimpleComparisonNotifier.new,
    );
