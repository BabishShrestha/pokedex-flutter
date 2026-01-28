import 'package:flutter_riverpod/flutter_riverpod.dart';

/// AI Service for Pokémon-related analysis and insights
class AiService {
  /// Generate battle strategy advice based on Pokémon characteristics
  Future<BattleStrategy> generateBattleStrategy({
    required String pokemonName,
    required List<String> types,
    required Map<String, int> stats,
    required List<String> abilities,
  }) async {
    // Simulate AI processing delay
    await Future.delayed(const Duration(milliseconds: 800));

    // In production, this would call an actual AI API (OpenAI, Gemini, etc.)
    // For now, generate intelligent responses based on data
    return BattleStrategy(
      strengths: _generateStrengths(types, stats),
      weaknesses: _generateWeaknesses(types),
      recommendedRoles: _generateRoles(types, stats),
      counterStrategies: _generateCounterStrategies(types),
      synergyTips: _generateSynergyTips(types, abilities),
    );
  }

  /// Generate creative nickname suggestions
  Future<List<NicknameSuggestion>> generateNicknames({
    required String pokemonName,
    required List<String> types,
    required int id,
  }) async {
    await Future.delayed(const Duration(milliseconds: 600));

    return _generateCreativeNicknames(pokemonName, types, id);
  }

  /// Explain type matchups in natural language
  Future<TypeMatchupExplanation> explainTypeMatchups({
    required List<String> types,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));

    return TypeMatchupExplanation(
      summary: _generateTypeMatchupSummary(types),
      strongAgainst: _getStrongAgainst(types),
      weakAgainst: _getWeakAgainst(types),
      resistantTo: _getResistances(types),
      vulnerableTo: _getVulnerabilities(types),
    );
  }

  /// Analyze team composition and provide insights
  Future<TeamAnalysis> analyzeTeam({
    required List<Map<String, dynamic>> teamPokemon,
  }) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    return TeamAnalysis(
      balanceScore: _calculateTeamBalance(teamPokemon),
      typeCoverage: _analyzeTypeCoverage(teamPokemon),
      strengths: _identifyTeamStrengths(teamPokemon),
      weaknesses: _identifyTeamWeaknesses(teamPokemon),
      suggestions: _generateTeamSuggestions(teamPokemon),
    );
  }

  /// Compare two Pokémon and provide strategic insights
  Future<ComparisonInsight> compareForBattle({
    required Map<String, dynamic> pokemon1,
    required Map<String, dynamic> pokemon2,
  }) async {
    await Future.delayed(const Duration(milliseconds: 700));

    return ComparisonInsight(
      winner: _determineAdvantage(pokemon1, pokemon2),
      reasoning: _explainMatchup(pokemon1, pokemon2),
      scenario1:
          'In offensive scenarios, ${pokemon1['name']} excels due to higher attack stats.',
      scenario2:
          'For defensive play, ${pokemon2['name']} provides better bulk and resistances.',
    );
  }

  // Helper methods for generating intelligent responses

  List<String> _generateStrengths(List<String> types, Map<String, int> stats) {
    final strengths = <String>[];

    // Analyze stats
    final highestStat = stats.entries.reduce(
      (a, b) => a.value > b.value ? a : b,
    );
    strengths.add(
      'Exceptional ${highestStat.key} (${highestStat.value}) makes it excel in ${_getStatRole(highestStat.key)}',
    );

    // Analyze types
    for (final type in types) {
      strengths.add(_getTypeStrength(type));
    }

    return strengths.take(3).toList();
  }

  List<String> _generateWeaknesses(List<String> types) {
    final weaknesses = <String>[];
    for (final type in types) {
      weaknesses.addAll(_getTypeWeaknesses(type));
    }
    return weaknesses.toSet().take(4).toList();
  }

  List<String> _generateRoles(List<String> types, Map<String, int> stats) {
    final roles = <String>[];

    if (stats['attack']! > 100) roles.add('Physical Sweeper');
    if (stats['defense']! > 100) roles.add('Physical Wall');
    if (stats['special-attack']! > 100) roles.add('Special Attacker');
    if (stats['speed']! > 100) roles.add('Speed Demon');

    if (roles.isEmpty) roles.add('Balanced Fighter');

    return roles.take(2).toList();
  }

  List<String> _generateCounterStrategies(List<String> types) {
    return [
      'Use ${_getCounterType(types.first)} type moves for super effective damage',
      'Exploit low defensive stats with high-power attacks',
      'Consider status moves to limit effectiveness',
    ];
  }

  List<String> _generateSynergyTips(
    List<String> types,
    List<String> abilities,
  ) {
    return [
      'Pairs well with defensive Pokémon to cover weaknesses',
      'Abilities like ${abilities.first.split('-').join(' ')} provide strategic advantages',
      'Consider weather-based team compositions',
    ];
  }

  List<NicknameSuggestion> _generateCreativeNicknames(
    String pokemonName,
    List<String> types,
    int id,
  ) {
    final nicknames = <NicknameSuggestion>[];

    // Type-based nicknames
    if (types.contains('fire')) {
      nicknames.add(
        NicknameSuggestion('Blaze', 'Fire-type inspired, short and powerful'),
      );
      nicknames.add(
        NicknameSuggestion(
          'Ember',
          'Classic fire reference, cute and memorable',
        ),
      );
    }
    if (types.contains('water')) {
      nicknames.add(
        NicknameSuggestion('Aqua', 'Water-themed, elegant and simple'),
      );
      nicknames.add(NicknameSuggestion('Splash', 'Playful and water-related'));
    }
    if (types.contains('grass')) {
      nicknames.add(
        NicknameSuggestion('Verde', 'Spanish for green, sophisticated'),
      );
      nicknames.add(
        NicknameSuggestion('Leaf', 'Nature-inspired, straightforward'),
      );
    }

    // Personality-based
    nicknames.add(
      NicknameSuggestion(
        '${pokemonName.substring(0, 3).toUpperCase()}',
        'Shortened form, easy to remember',
      ),
    );
    nicknames.add(
      NicknameSuggestion('Champion', 'Motivational, emphasizes potential'),
    );

    return nicknames.take(5).toList();
  }

  String _generateTypeMatchupSummary(List<String> types) {
    if (types.length == 1) {
      return 'As a pure ${types[0]}-type, this Pokémon has straightforward strengths and weaknesses typical of ${types[0]} types.';
    } else {
      return 'The ${types[0]}/${types[1]} dual typing creates interesting matchups, offering both offensive coverage and defensive benefits.';
    }
  }

  List<String> _getStrongAgainst(List<String> types) {
    final strong = <String>[];
    for (final type in types) {
      strong.addAll(_getTypeEffective(type));
    }
    return strong.toSet().take(5).toList();
  }

  List<String> _getWeakAgainst(List<String> types) {
    final weak = <String>[];
    for (final type in types) {
      weak.addAll(_getTypeWeaknesses(type));
    }
    return weak.toSet().take(5).toList();
  }

  List<String> _getResistances(List<String> types) {
    return ['Normal', 'Fighting', 'Bug'].take(3).toList();
  }

  List<String> _getVulnerabilities(List<String> types) {
    return _getWeakAgainst(types);
  }

  double _calculateTeamBalance(List<Map<String, dynamic>> team) {
    // Simplified balance calculation
    final typeCount = <String>{};
    for (final pokemon in team) {
      typeCount.addAll(List<String>.from(pokemon['types']));
    }
    return (typeCount.length / 18) * 100; // 18 total types
  }

  String _analyzeTypeCoverage(List<Map<String, dynamic>> team) {
    final typeCount = <String>{};
    for (final pokemon in team) {
      typeCount.addAll(List<String>.from(pokemon['types']));
    }
    return 'Your team covers ${typeCount.length} different types, providing ${typeCount.length > 6 ? 'excellent' : 'good'} type diversity.';
  }

  List<String> _identifyTeamStrengths(List<Map<String, dynamic>> team) {
    return [
      'Strong offensive capabilities across multiple types',
      'Good balance between physical and special attackers',
      'Decent speed tier coverage',
    ];
  }

  List<String> _identifyTeamWeaknesses(List<Map<String, dynamic>> team) {
    return [
      'Limited defensive options may leave team vulnerable',
      'Consider adding a dedicated tank or wall',
      'Watch out for common weaknesses shared by multiple members',
    ];
  }

  List<String> _generateTeamSuggestions(List<Map<String, dynamic>> team) {
    return [
      'Add a Steel-type for defensive coverage',
      'Include a fast Electric or Dragon type for speed control',
      'Consider a Ground-type to handle Electric weaknesses',
    ];
  }

  String _determineAdvantage(Map<String, dynamic> p1, Map<String, dynamic> p2) {
    final p1Attack = p1['stats']['attack'] + p1['stats']['special-attack'];
    final p2Attack = p2['stats']['attack'] + p2['stats']['special-attack'];

    if (p1Attack > p2Attack) return p1['name'];
    if (p2Attack > p1Attack) return p2['name'];
    return 'Even Match';
  }

  String _explainMatchup(Map<String, dynamic> p1, Map<String, dynamic> p2) {
    return 'Based on type matchups and stat distribution, ${p1['name']} has better offensive pressure while ${p2['name']} offers more balanced stats for sustained battles.';
  }

  String _getStatRole(String stat) {
    final roles = {
      'hp': 'survivability and staying power',
      'attack': 'physical offense and damage output',
      'defense': 'taking physical hits',
      'special-attack': 'special move power',
      'special-defense': 'resisting special attacks',
      'speed': 'outspeeding opponents',
    };
    return roles[stat] ?? 'battles';
  }

  String _getTypeStrength(String type) {
    final strengths = {
      'fire': 'Excellent against Grass, Ice, Bug, and Steel types',
      'water': 'Strong offensive coverage against Fire, Ground, and Rock',
      'grass': 'Effective counter to Water, Ground, and Rock types',
      'electric': 'Dominant against Water and Flying types',
      'psychic': 'Powerful against Fighting and Poison types',
      'dragon': 'Broad offensive coverage and resistances',
      'steel': 'Exceptional defensive typing with many resistances',
      'fairy': 'Strong against Dragon, Dark, and Fighting types',
    };
    return strengths[type] ?? 'Unique type advantages in battles';
  }

  List<String> _getTypeWeaknesses(String type) {
    final weaknesses = {
      'fire': ['Water', 'Ground', 'Rock'],
      'water': ['Electric', 'Grass'],
      'grass': ['Fire', 'Ice', 'Poison', 'Flying', 'Bug'],
      'electric': ['Ground'],
      'psychic': ['Bug', 'Ghost', 'Dark'],
      'dragon': ['Ice', 'Dragon', 'Fairy'],
      'steel': ['Fire', 'Fighting', 'Ground'],
      'fairy': ['Poison', 'Steel'],
    };
    return weaknesses[type] ?? ['Normal'];
  }

  List<String> _getTypeEffective(String type) {
    final effective = {
      'fire': ['Grass', 'Ice', 'Bug', 'Steel'],
      'water': ['Fire', 'Ground', 'Rock'],
      'grass': ['Water', 'Ground', 'Rock'],
      'electric': ['Water', 'Flying'],
      'psychic': ['Fighting', 'Poison'],
      'dragon': ['Dragon'],
      'steel': ['Ice', 'Rock', 'Fairy'],
      'fairy': ['Dragon', 'Dark', 'Fighting'],
    };
    return effective[type] ?? [];
  }

  String _getCounterType(String type) {
    final counters = {
      'fire': 'Water',
      'water': 'Electric',
      'grass': 'Fire',
      'electric': 'Ground',
      'psychic': 'Dark',
      'dragon': 'Ice',
      'steel': 'Fire',
      'fairy': 'Steel',
    };
    return counters[type] ?? 'Normal';
  }
}

// Data models for AI responses

class BattleStrategy {
  final List<String> strengths;
  final List<String> weaknesses;
  final List<String> recommendedRoles;
  final List<String> counterStrategies;
  final List<String> synergyTips;

  BattleStrategy({
    required this.strengths,
    required this.weaknesses,
    required this.recommendedRoles,
    required this.counterStrategies,
    required this.synergyTips,
  });
}

class NicknameSuggestion {
  final String name;
  final String reason;

  NicknameSuggestion(this.name, this.reason);
}

class TypeMatchupExplanation {
  final String summary;
  final List<String> strongAgainst;
  final List<String> weakAgainst;
  final List<String> resistantTo;
  final List<String> vulnerableTo;

  TypeMatchupExplanation({
    required this.summary,
    required this.strongAgainst,
    required this.weakAgainst,
    required this.resistantTo,
    required this.vulnerableTo,
  });
}

class TeamAnalysis {
  final double balanceScore;
  final String typeCoverage;
  final List<String> strengths;
  final List<String> weaknesses;
  final List<String> suggestions;

  TeamAnalysis({
    required this.balanceScore,
    required this.typeCoverage,
    required this.strengths,
    required this.weaknesses,
    required this.suggestions,
  });
}

class ComparisonInsight {
  final String winner;
  final String reasoning;
  final String scenario1;
  final String scenario2;

  ComparisonInsight({
    required this.winner,
    required this.reasoning,
    required this.scenario1,
    required this.scenario2,
  });
}

/// Provider for AI service
final aiServiceProvider = Provider<AiService>((ref) => AiService());
