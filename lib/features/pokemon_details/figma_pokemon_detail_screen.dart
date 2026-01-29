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
import 'package:pokedex/features/pokemon_details/widgets/pokemon_detail_app_bar.dart';
import 'package:pokedex/features/pokemon_details/widgets/pokemon_detail_header.dart';
import 'package:pokedex/features/pokemon_details/widgets/pokemon_detail_content.dart';
import 'package:pokedex/features/pokemon_details/widgets/pokemon_action_buttons.dart';

// Constants
class _PokemonDetailConstants {
  static const int minPokemonId = 1;
  static const int maxPokemonId = 1025;
  static const int transitionDurationMs = 500;
  static const double loadingOverlayOpacity = 0.5;
  static const double loadingBackgroundOpacity = 0.3;
  static const Color primaryColor = Color(0xFFDC0A2D);
  static const Color defaultTypeColor = Color(0xFF48D0B0);
}

class FigmaPokemonDetailScreen extends ConsumerStatefulWidget {
  final SimplePokemon pokemon;

  const FigmaPokemonDetailScreen({super.key, required this.pokemon});

  @override
  ConsumerState<FigmaPokemonDetailScreen> createState() =>
      _FigmaPokemonDetailScreenState();
}

class _FigmaPokemonDetailScreenState
    extends ConsumerState<FigmaPokemonDetailScreen> {
  bool _isNavigating = false;

  bool get _canNavigatePrevious =>
      widget.pokemon.id > _PokemonDetailConstants.minPokemonId;

  bool get _canNavigateNext =>
      widget.pokemon.id < _PokemonDetailConstants.maxPokemonId;

  @override
  Widget build(BuildContext context) {
    final detailAsync = ref.watch(pokemonDetailProvider(widget.pokemon.id));
    final comparisonState = ref.watch(comparisonProvider);
    final isSelected = _isPokemonSelected(comparisonState);

    return detailAsync.when(
      loading: () => _buildLoadingState(),
      error: (error, stack) => _buildErrorState(error),
      data: (detail) => _buildDetailState(detail, comparisonState, isSelected),
    );
  }

  bool _isPokemonSelected(SimpleComparisonState comparisonState) {
    return comparisonState.selectedPokemon.any(
      (p) => p == widget.pokemon.id.toString(),
    );
  }

  Widget _buildLoadingState() {
    return Scaffold(
      backgroundColor: _PokemonDetailConstants.primaryColor,
      body: Stack(
        children: [
          _buildLoadingBackground(),
          _buildLoadingOverlay(),
          _buildBackButton(),
        ],
      ),
    );
  }

  Widget _buildLoadingBackground() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildHeroImage(widget.pokemon.imageUrl, width: 200, height: 200),
          const SizedBox(height: 20),
          _buildPokemonIdText(widget.pokemon.id),
        ],
      ),
    );
  }

  Widget _buildLoadingOverlay() {
    return Container(
      color: Colors.black.withOpacity(
        _PokemonDetailConstants.loadingBackgroundOpacity,
      ),
      child: const Center(child: PokemonLoader(size: 80)),
    );
  }

  Widget _buildBackButton() {
    return Positioned(
      top: MediaQuery.of(context).padding.top,
      left: 0,
      child: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  Widget _buildHeroImage(String imageUrl, {double? width, double? height}) {
    return Hero(
      tag: 'pokemon-${widget.pokemon.id}',
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildPokemonIdText(int id) {
    return Text(
      '#${id.toString().padLeft(3, '0')}',
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildErrorState(Object error) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _PokemonDetailConstants.primaryColor,
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
              onPressed: _retryLoadingPokemon,
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }

  void _retryLoadingPokemon() {
    ref.invalidate(pokemonDetailProvider(widget.pokemon.id));
  }

  Widget _buildDetailState(
    PokemonDetail detail,
    SimpleComparisonState comparisonState,
    bool isSelected,
  ) {
    final typeColor = _getTypeColor(detail);

    return Stack(
      children: [
        Scaffold(
          backgroundColor: typeColor,
          body: GestureDetector(
            onHorizontalDragEnd: _handleSwipeGesture,
            child: Stack(
              children: [
                _buildScrollableContent(detail, typeColor, comparisonState),
                _buildFloatingActionButtons(comparisonState, isSelected),
              ],
            ),
          ),
        ),
        if (_isNavigating) _buildNavigationLoadingOverlay(),
      ],
    );
  }

  Color _getTypeColor(PokemonDetail detail) {
    return detail.types.isNotEmpty
        ? PokemonTypeColors.getTypeColor(detail.types.first)
        : _PokemonDetailConstants.defaultTypeColor;
  }

  void _handleSwipeGesture(DragEndDetails details) {
    final velocity = details.primaryVelocity ?? 0;

    if (velocity > 0 && _canNavigatePrevious) {
      _navigateToPokemon(widget.pokemon.id - 1, isNext: false);
    } else if (velocity < 0 && _canNavigateNext) {
      _navigateToPokemon(widget.pokemon.id + 1, isNext: true);
    }
  }

  Future<void> _navigateToPokemon(
    int newPokemonId, {
    required bool isNext,
  }) async {
    setState(() => _isNavigating = true);

    try {
      await ref.read(pokemonDetailProvider(newPokemonId).future);

      if (!mounted) return;

      final newPokemon = _createSimplePokemon(newPokemonId);
      _navigateToDetailScreen(newPokemon, isNext: isNext);
    } catch (e) {
      if (mounted) {
        setState(() => _isNavigating = false);
        _showErrorSnackBar(e);
      }
    }
  }

  SimplePokemon _createSimplePokemon(int pokemonId) {
    return SimplePokemon(
      id: pokemonId,
      name: '',
      imageUrl:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$pokemonId.png',
    );
  }

  void _navigateToDetailScreen(SimplePokemon pokemon, {required bool isNext}) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            FigmaPokemonDetailScreen(pokemon: pokemon),
        transitionsBuilder: _buildSlideTransition(isNext: isNext),
        transitionDuration: const Duration(
          milliseconds: _PokemonDetailConstants.transitionDurationMs,
        ),
      ),
    );
  }

  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)
  _buildSlideTransition({required bool isNext}) {
    return (context, animation, secondaryAnimation, child) {
      final begin = isNext ? const Offset(1.0, 0.0) : const Offset(-1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      final tween = Tween(
        begin: begin,
        end: end,
      ).chain(CurveTween(curve: curve));
      final offsetAnimation = animation.drive(tween);

      return SlideTransition(position: offsetAnimation, child: child);
    };
  }

  void _showErrorSnackBar(Object error) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Error loading Pokemon: $error')));
  }

  Widget _buildNavigationLoadingOverlay() {
    return Container(
      color: Colors.black.withOpacity(
        _PokemonDetailConstants.loadingOverlayOpacity,
      ),
      child: const Center(child: PokemonLoader(size: 80)),
    );
  }

  Widget _buildScrollableContent(
    PokemonDetail detail,
    Color typeColor,
    SimpleComparisonState comparisonState,
  ) {
    return CustomScrollView(
      slivers: [
        PokemonDetailAppBar(
          pokemonId: detail.id,
          comparisonCount: comparisonState.selectedPokemon.length,
        ),
        PokemonDetailHeader(pokemon: widget.pokemon, detail: detail),
        PokemonDetailContent(detail: detail, typeColor: typeColor),
      ],
    );
  }

  Widget _buildFloatingActionButtons(
    SimpleComparisonState comparisonState,
    bool isSelected,
  ) {
    return Positioned(
      bottom: 16,
      right: 16,
      child: PokemonActionButtons(
        pokemonId: widget.pokemon.id,
        isSelected: isSelected,
        showCompareButton: comparisonState.selectedPokemon.length >= 2,
      ),
    );
  }
}
