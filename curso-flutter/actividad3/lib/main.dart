import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Pokemon {
  final String name;
  final String imageUrl;
  final String type;
  final int pokedexNumber;

  Pokemon({
    required this.name,
    required this.imageUrl,
    required this.type,
    required this.pokedexNumber,
  });
}

final List<Pokemon> initialPokemons = [
  Pokemon(
    name: 'Bulbasaur',
    imageUrl: 'assets/images/001.png', // Ruta relativa a la carpeta 'assets'
    type: 'Planta / Veneno',
    pokedexNumber: 1,
  ),
  Pokemon(
    name: 'Charmander',
    imageUrl: 'assets/images/004.png', // Ruta relativa a la carpeta 'assets'
    type: 'Fuego',
    pokedexNumber: 4,
  ),
  Pokemon(
    name: 'Squirtle',
    imageUrl: 'assets/images/007.png', // Ruta relativa a la carpeta 'assets'
    type: 'Agua',
    pokedexNumber: 7,
  ),
];

void main() {
  runApp(const PokedexApp());
}

class PokedexApp extends StatelessWidget {
  const PokedexApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pokedex'),
        ),
        body: CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
          ),
          items: initialPokemons.map((pokemon) {
            return Builder(
              builder: (BuildContext context) {
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        pokemon.imageUrl,
                        width: 200,
                        height: 200,
                      ),
                      Text('Name: ${pokemon.name}'),
                      Text('Type: ${pokemon.type}'),
                      Text('Pokedex Number: ${pokemon.pokedexNumber}'),
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
