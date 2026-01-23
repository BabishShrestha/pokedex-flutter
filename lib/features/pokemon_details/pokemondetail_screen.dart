import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/core/widgets/pokedex_appbar.dart';

class PokemonDetailScreen extends StatelessWidget {
  const PokemonDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> genreItem = ['poison', 'grass'];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PokedexAppBar(title: 'Pokemon Details'),
      body: Column(
        children: <Widget>[
          const Text('Bulbasaur'),
          // SizedBox(
          //   height: 50,
          //   child: ListView.builder(
          //     itemCount: genreItem!.length,
          //     itemBuilder: (context, index) {
          //       return Container(
          //         margin: const EdgeInsets.all(8),
          //         padding: const EdgeInsets.all(8),
          //         // height: 0,
          //         decoration: BoxDecoration(
          //             color: Colors.green,
          //             borderRadius: BorderRadius.circular(20)),
          //         child: FittedBox(
          //           child: Text(
          //             genreItem[index],
          //           ),
          //         ),
          //       );
          //     },
          //     scrollDirection: Axis.horizontal,
          //   ),
          // ),
          SizedBox(
            height: 200,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              CachedNetworkImage(
                  width: 200,
                  height: 200,
                  imageUrl:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/35.png'),
              // CachedNetworkImage(
              //     imageUrl:
              //         'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/35.png'),
              Positioned(
                top: 100,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Placeholder()
                    // DefaultTabController(
                    //   length: 4,
                    //   child: TabBar(labelColor: Colors.black, tabs: [
                    //     Tab(
                    //       child: Text('About'),
                    //     ),
                    //     Tab(
                    //       child: Text('Base Stats'),
                    //     ),
                    //     Tab(
                    //       child: Text('Evolution'),
                    //     ),
                    //     Tab(
                    //       child: Text('Moves'),
                    //     ),
                    //   ]),
                    // ),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
