import 'package:flutter/material.dart';

/// Pokemon type color mappings for UI theming
class PokemonTypeColors {
  // Private constructor to prevent instantiation
  PokemonTypeColors._();

  /// Get gradient colors for a Pokemon type
  static List<Color> getTypeGradient(String type) {
    final typeColors = _typeGradients[type.toLowerCase()];
    return typeColors ?? _typeGradients['normal']!;
  }

  /// Get primary color for a Pokemon type
  static Color getTypeColor(String type) {
    return getTypeGradient(type)[0];
  }

  /// Get secondary color for a Pokemon type
  static Color getTypeSecondaryColor(String type) {
    return getTypeGradient(type)[1];
  }

  /// Map of Pokemon types to gradient colors
  static const Map<String, List<Color>> _typeGradients = {
    'normal': [Color(0xFFA8A878), Color(0xFFD0D0B0)],
    'fire': [Color(0xFFF08030), Color(0xFFFFB060)],
    'water': [Color(0xFF6890F0), Color(0xFF98C0F8)],
    'electric': [Color(0xFFF8D030), Color(0xFFFFF060)],
    'grass': [Color(0xFF78C850), Color(0xFFA8E080)],
    'ice': [Color(0xFF98D8D8), Color(0xFFC8F0F0)],
    'fighting': [Color(0xFFC03028), Color(0xFFE85848)],
    'poison': [Color(0xFFA040A0), Color(0xFFC060C0)],
    'ground': [Color(0xFFE0C068), Color(0xFFF0D898)],
    'flying': [Color(0xFFA890F0), Color(0xFFC8B8F8)],
    'psychic': [Color(0xFFF85888), Color(0xFFFF88B0)],
    'bug': [Color(0xFFA8B820), Color(0xFFC8D840)],
    'rock': [Color(0xFFB8A038), Color(0xFFD8C068)],
    'ghost': [Color(0xFF705898), Color(0xFF9880B8)],
    'dragon': [Color(0xFF7038F8), Color(0xFFA070FF)],
    'dark': [Color(0xFF705848), Color(0xFF988070)],
    'steel': [Color(0xFFB8B8D0), Color(0xFFD8D8E8)],
    'fairy': [Color(0xFFEE99AC), Color(0xFFF8C0D0)],
  };

  /// Get a lighter shade for backgrounds
  static Color getTypeLightColor(String type) {
    final baseColor = getTypeColor(type);
    return Color.alphaBlend(Colors.white.withOpacity(0.7), baseColor);
  }

  /// Get a darker shade for borders
  static Color getTypeDarkColor(String type) {
    final baseColor = getTypeColor(type);
    return Color.alphaBlend(Colors.black.withOpacity(0.2), baseColor);
  }

  /// Create a linear gradient for a Pokemon type
  static LinearGradient createTypeGradient(String type) {
    final colors = getTypeGradient(type);
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: colors,
    );
  }

  /// Get text color (black or white) based on background brightness
  static Color getTextColor(String type) {
    final color = getTypeColor(type);
    final luminance = color.computeLuminance();
    return luminance > 0.5 ? Colors.black87 : Colors.white;
  }

  /// Get all available type names
  static List<String> get allTypes => _typeGradients.keys.toList();
}
