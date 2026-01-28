import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/services/ai_service.dart';
import 'package:pokedex/core/utils/pokemon_type_colors.dart';
import 'package:pokedex/core/widgets/pokemon_loader.dart';
import 'package:pokedex/features/home/data/simple_comparison_provider.dart';
import 'package:pokedex/features/pokemon_details/pokemon_detail_provider.dart';

class SimpleCompareScreen extends ConsumerWidget {
  const SimpleCompareScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final comparisonState = ref.watch(comparisonProvider);
    final selectedIds = comparisonState.selectedPokemon;

    if (selectedIds.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: const Text('Compare Pokémon')),
        body: const Center(child: Text('No Pokémon selected for comparison')),
      );
    }

    // Watch all selected Pokemon details
    final pokemonDetails = selectedIds
        .map((id) => ref.watch(pokemonDetailProvider(int.parse(id))))
        .toList();

    // Check if any are still loading
    final isLoading = pokemonDetails.any((p) => p.isLoading);
    final hasError = pokemonDetails.any((p) => p.hasError);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Compare Pokémon'),
        actions: [
          IconButton(
            icon: const Icon(Icons.clear_all),
            onPressed: () {
              ref.read(comparisonProvider.notifier).clearSelection();
              Navigator.pop(context);
            },
            tooltip: 'Clear All',
          ),
        ],
      ),
      body: isLoading
          ? const Center(child: PokemonLoader(size: 100))
          : hasError
          ? const Center(child: Text('Error loading Pokémon details'))
          : SingleChildScrollView(
              child: Column(
                children: [
                  // Pokemon Images Section
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: selectedIds.asMap().entries.map((entry) {
                        final detail = pokemonDetails[entry.key].value!;
                        return Expanded(
                          child: _buildPokemonCard(
                            context,
                            ref,
                            detail,
                            entry.value,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // AI Team Analysis (only show if 2+ Pokemon selected)
                  if (selectedIds.length >= 2)
                    _AiTeamAnalysisWidget(
                      pokemonDetails: pokemonDetails
                          .map((p) => p.value!)
                          .toList(),
                    ),

                  // Stats Comparison
                  _buildStatsComparison(pokemonDetails),

                  // Physical Stats Comparison
                  _buildPhysicalComparison(pokemonDetails),

                  // Types Comparison
                  _buildTypesComparison(pokemonDetails),

                  // Abilities Comparison
                  _buildAbilitiesComparison(pokemonDetails),

                  const SizedBox(height: 32),
                ],
              ),
            ),
    );
  }

  Widget _buildPokemonCard(
    BuildContext context,
    WidgetRef ref,
    PokemonDetail detail,
    String pokemonId,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            detail.types.isNotEmpty
                ? PokemonTypeColors.getTypeColor(
                    detail.types.first,
                  ).withOpacity(0.3)
                : Colors.grey.shade300,
            Colors.white,
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Remove button
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: const Icon(Icons.close, size: 18),
              onPressed: () {
                ref
                    .read(comparisonProvider.notifier)
                    .toggleSelection(pokemonId);
              },
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
          ),
          // Pokemon Image
          CachedNetworkImage(
            imageUrl: detail.imageUrl,
            height: 120,
            fit: BoxFit.contain,
            placeholder: (context, url) => const PokemonLoaderSmall(size: 50),
            errorWidget: (context, url, error) =>
                const Icon(Icons.error, color: Colors.red),
          ),
          const SizedBox(height: 8),
          // Pokemon Name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              detail.name.toUpperCase(),
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            '#${detail.id.toString().padLeft(3, '0')}',
            style: TextStyle(fontSize: 10, color: Colors.grey[600]),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildStatsComparison(List<AsyncValue<PokemonDetail>> pokemonDetails) {
    final details = pokemonDetails.map((p) => p.value!).toList();

    // Get all stat names from first pokemon
    final statNames = details.first.stats.map((s) => s.name).toList();

    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Base Stats Comparison',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ...statNames.map((statName) {
            return _buildStatRow(statName, details);
          }),
        ],
      ),
    );
  }

  Widget _buildStatRow(String statName, List<PokemonDetail> details) {
    final statValues = details.map((d) {
      return d.stats.firstWhere((s) => s.name == statName).value;
    }).toList();

    final maxValue = statValues.reduce((a, b) => a > b ? a : b);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey.shade200, width: 1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _formatStatName(statName),
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Row(
            children: statValues.map((value) {
              final isBest = value == maxValue;
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                      color: isBest
                          ? Colors.green.shade100
                          : Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: isBest
                            ? Colors.green.shade300
                            : Colors.grey.shade300,
                        width: isBest ? 2 : 1,
                      ),
                    ),
                    child: Text(
                      value.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: isBest
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color: isBest ? Colors.green.shade700 : Colors.black87,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildPhysicalComparison(
    List<AsyncValue<PokemonDetail>> pokemonDetails,
  ) {
    final details = pokemonDetails.map((p) => p.value!).toList();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Physical Stats',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          _buildPhysicalRow('Height', details, (d) => d.height, 'm'),
          _buildPhysicalRow('Weight', details, (d) => d.weight, 'kg'),
        ],
      ),
    );
  }

  Widget _buildPhysicalRow(
    String label,
    List<PokemonDetail> details,
    int Function(PokemonDetail) getValue,
    String unit,
  ) {
    final values = details.map(getValue).toList();
    final maxValue = values.reduce((a, b) => a > b ? a : b);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey.shade200, width: 1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Row(
            children: values.map((value) {
              final isBest = value == maxValue;
              final displayValue = (value / 10).toStringAsFixed(1);
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                      color: isBest
                          ? Colors.blue.shade100
                          : Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: isBest
                            ? Colors.blue.shade300
                            : Colors.grey.shade300,
                        width: isBest ? 2 : 1,
                      ),
                    ),
                    child: Text(
                      '$displayValue $unit',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: isBest
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color: isBest ? Colors.blue.shade700 : Colors.black87,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildTypesComparison(List<AsyncValue<PokemonDetail>> pokemonDetails) {
    final details = pokemonDetails.map((p) => p.value!).toList();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Types',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: details.map((detail) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Column(
                    children: detail.types
                        .map(
                          (type) => Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(bottom: 6),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: PokemonTypeColors.getTypeColor(type),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              type.toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: PokemonTypeColors.getTextColor(type),
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildAbilitiesComparison(
    List<AsyncValue<PokemonDetail>> pokemonDetails,
  ) {
    final details = pokemonDetails.map((p) => p.value!).toList();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Abilities',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: details.map((detail) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Column(
                    children: detail.abilities
                        .map(
                          (ability) => Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(bottom: 6),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: ability.isHidden
                                  ? Colors.purple.shade50
                                  : Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: ability.isHidden
                                    ? Colors.purple.shade300
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  ability.name
                                      .split('-')
                                      .map(
                                        (w) =>
                                            w[0].toUpperCase() + w.substring(1),
                                      )
                                      .join(' '),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                if (ability.isHidden)
                                  Text(
                                    'Hidden',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.purple.shade700,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  String _formatStatName(String name) {
    final Map<String, String> nameMap = {
      'hp': 'HP',
      'attack': 'Attack',
      'defense': 'Defense',
      'special-attack': 'Sp. Atk',
      'special-defense': 'Sp. Def',
      'speed': 'Speed',
    };
    return nameMap[name] ?? name;
  }
}

// AI Team Analysis Widget
class _AiTeamAnalysisWidget extends ConsumerStatefulWidget {
  final List<PokemonDetail> pokemonDetails;

  const _AiTeamAnalysisWidget({required this.pokemonDetails});

  @override
  ConsumerState<_AiTeamAnalysisWidget> createState() =>
      _AiTeamAnalysisWidgetState();
}

class _AiTeamAnalysisWidgetState extends ConsumerState<_AiTeamAnalysisWidget> {
  TeamAnalysis? _teamAnalysis;
  bool _isLoading = false;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.purple.shade50, Colors.white],
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.purple.shade200, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.purple.withOpacity(0.1),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              if (!_isExpanded && _teamAnalysis == null) {
                _loadTeamAnalysis();
              }
              setState(() => _isExpanded = !_isExpanded);
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.purple, Colors.purpleAccent],
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.psychology,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'AI Team Analysis',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Get strategic insights for your team',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: Colors.purple.shade400,
                  ),
                ],
              ),
            ),
          ),
          if (_isExpanded) ...[
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: _isLoading
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PokemonLoaderSmall(size: 30),
                        const SizedBox(width: 12),
                        Text(
                          'AI is analyzing your team...',
                          style: TextStyle(
                            color: Colors.purple.shade700,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  : _teamAnalysis != null
                  ? _buildAnalysisContent(_teamAnalysis!)
                  : const SizedBox.shrink(),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildAnalysisContent(TeamAnalysis analysis) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Balance Score
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.purple.shade200),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Team Balance Score',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: LinearProgressIndicator(
                        value: analysis.balanceScore / 100,
                        backgroundColor: Colors.grey.shade200,
                        valueColor: AlwaysStoppedAnimation(
                          _getScoreColor(analysis.balanceScore),
                        ),
                        minHeight: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Text(
                '${analysis.balanceScore.toStringAsFixed(0)}%',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: _getScoreColor(analysis.balanceScore),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),

        // Type Coverage
        Text(
          'Type Coverage',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.purple.shade700,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          analysis.typeCoverage,
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey.shade700,
            height: 1.4,
          ),
        ),
        const SizedBox(height: 16),

        // Strengths
        _buildSection(
          '💪 Team Strengths',
          analysis.strengths,
          Colors.green.shade700,
        ),
        const SizedBox(height: 16),

        // Weaknesses
        _buildSection(
          '⚠️ Team Weaknesses',
          analysis.weaknesses,
          Colors.red.shade700,
        ),
        const SizedBox(height: 16),

        // Suggestions
        _buildSection(
          '💡 Improvement Tips',
          analysis.suggestions,
          Colors.blue.shade700,
        ),
      ],
    );
  }

  Widget _buildSection(String title, List<String> items, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 8),
        ...items.map(
          (item) => Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    item,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade800,
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Color _getScoreColor(double score) {
    if (score >= 70) return Colors.green;
    if (score >= 40) return Colors.orange;
    return Colors.red;
  }

  Future<void> _loadTeamAnalysis() async {
    setState(() => _isLoading = true);
    try {
      final aiService = ref.read(aiServiceProvider);
      final teamData = widget.pokemonDetails
          .map(
            (p) => {
              'name': p.name,
              'types': p.types,
              'stats': {for (var stat in p.stats) stat.name: stat.value},
            },
          )
          .toList();

      final analysis = await aiService.analyzeTeam(teamPokemon: teamData);
      setState(() {
        _teamAnalysis = analysis;
        _isLoading = false;
      });
    } catch (e) {
      setState(() => _isLoading = false);
    }
  }
}
