import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Actividad 4'),
      ),
      body: _getBody(_currentIndex),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Carrusel'),
            activeColor: Colors.blue,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Imagen y Boton'),
            activeColor: Colors.blue,
          ),
        ],
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return _buildCarousel(); // Función para mostrar el carrusel
      case 1:
        return _buildUserProfile(); // Función para mostrar el perfil de usuario
      default:
        return Container();
    }
  }

  Widget _buildCarousel() {
    return Center(
      child: CarouselSlider(
        items: [
          // Aquí colocarías los elementos del carrusel
          Image.network('URL_IMAGEN_1'),
          Image.network('URL_IMAGEN_2'),
          Image.network('URL_IMAGEN_3'),
        ],
        options: CarouselOptions(
          height: 400,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          autoPlay: false, // Cambiar a false para desactivar el autoplay
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

  Widget _buildUserProfile() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('URL_IMAGEN_PERFIL_USUARIO'),
            radius: 50,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón "Editar Perfil"
            },
            child: Text('Editar Perfil'),
          ),
        ],
      ),
    );
  }
}
