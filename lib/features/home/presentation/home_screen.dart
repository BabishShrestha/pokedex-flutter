import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context, index) {
              return Column(
                children: [
                  CachedNetworkImage(imageUrl: ""),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Pokemon Name"),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
