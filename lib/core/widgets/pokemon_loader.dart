import 'package:flutter/material.dart';

class PokemonLoader extends StatelessWidget {
  final double size;
  final Color? backgroundColor;

  const PokemonLoader({super.key, this.size = 80, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.transparent,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.all(size * 0.15),
      child: ClipOval(
        child: Image.asset('assets/loading.gif', fit: BoxFit.cover),
      ),
    );
  }
}

class PokemonLoaderSmall extends StatelessWidget {
  final double size;

  const PokemonLoaderSmall({super.key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      padding: EdgeInsets.all(size * 0.15),
      child: ClipOval(
        child: Image.asset('assets/loading.gif', fit: BoxFit.cover),
      ),
    );
  }
}
