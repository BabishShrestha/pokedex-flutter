import 'package:flutter/material.dart';

class PokemonStatBar extends StatelessWidget {
  final String name;
  final int value;
  final Color color;

  static const int _maxStatValue = 255;
  static const double _statBarHeight = 6.0;
  static const double _statNameWidth = 80.0;
  static const double _statValueWidth = 40.0;

  const PokemonStatBar({
    super.key,
    required this.name,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final percentage = (value / _maxStatValue).clamp(0.0, 1.0);

    return Row(
      children: [
        _buildStatName(),
        const SizedBox(width: 12),
        _buildStatValue(),
        const SizedBox(width: 12),
        _buildStatBar(percentage),
      ],
    );
  }

  Widget _buildStatName() {
    return SizedBox(
      width: _statNameWidth,
      child: Text(
        _formatStatName(name),
        style: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildStatValue() {
    return SizedBox(
      width: _statValueWidth,
      child: Text(
        value.toString().padLeft(3, '0'),
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildStatBar(double percentage) {
    return Expanded(
      child: Stack(
        children: [_buildStatBarBackground(), _buildStatBarFill(percentage)],
      ),
    );
  }

  Widget _buildStatBarBackground() {
    return Container(
      height: _statBarHeight,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  Widget _buildStatBarFill(double percentage) {
    return FractionallySizedBox(
      widthFactor: percentage,
      child: Container(
        height: _statBarHeight,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }

  String _formatStatName(String name) {
    const statNameMap = {
      'hp': 'HP',
      'attack': 'ATK',
      'defense': 'DEF',
      'special-attack': 'SATK',
      'special-defense': 'SDEF',
      'speed': 'SPD',
    };

    return statNameMap[name.toLowerCase()] ?? name.toUpperCase();
  }
}
