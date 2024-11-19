import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  final List<String> previews = [
    'https://image.tmdb.org/t/p/w500/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg',
    'https://image.tmdb.org/t/p/w500/kqjL17yufvn9OVLyXYpvtyrFfak.jpg',
    'https://image.tmdb.org/t/p/w500/6bCplVkhowCjTHXWv49UjRPn0eK.jpg',
  ];

  final List<String> categories = [
    'https://image.tmdb.org/t/p/w500/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg',
    'https://image.tmdb.org/t/p/w500/hYZ4a0JvPETdfgJJ9ZzyFufq8KQ.jpg',
    'https://image.tmdb.org/t/p/w500/zr7Z9WDmL0C78yUBkXoCr2fMhCH.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Netflix Clone'),
        backgroundColor: Colors.black,
      ),
      drawer: AppDrawer(), // Drawer funcional
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          _buildHeader(),
          SizedBox(height: 20),
          _buildHorizontalList('Avances', previews),
          _buildHorizontalList('Categorías populares', categories),
        ],
      ),
    );
  }

  // Cabecera destacada
  Widget _buildHeader() {
    return Stack(
      children: [
        Image.network(
          'https://image.tmdb.org/t/p/w500/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg',
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Stranger Things',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.play_arrow),
                    label: Text('Reproducir'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.info_outline),
                    label: Text('Información'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Carrusel horizontal
  Widget _buildHorizontalList(String title, List<String> images) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 8),
        Container(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    images[index],
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
