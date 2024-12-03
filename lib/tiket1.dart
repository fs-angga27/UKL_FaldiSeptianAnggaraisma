import 'package:flutter/material.dart';
import 'package:ukl/botnav.dart';

void main() {
  runApp(const Tiket());
}

class Tiket extends StatelessWidget {
  const Tiket({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Film Bioskop'),
          bottom: const TabBar(
              tabs: [Tab(text: 'SEDANG TAYANG'), Tab(text: 'AKAN DATANG')]),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.7,
                  children: const [
                    MovieCard(
                      title: 'Gala',
                      genre: 'Horor',
                      rating: 6.0,
                      imageUrl:
                          'Assets/film-bioskop-yang-tayang-november-2024-2.png',
                    ),
                    MovieCard(
                      title: 'Bila esok Ibu tiada',
                      genre: 'Drama',
                      rating: 7.0,
                      imageUrl: 'Assets/s3 (1).jpeg',
                    ),
                    MovieCard(
                      title: 'Gladiator',
                      genre: 'Action',
                      rating: 6.5,
                      imageUrl: 'Assets/poster-film-gladiator-2_34.jpeg',
                    ),
                    MovieCard(
                      title: 'Santet Segoro Pitu',
                      genre: 'Horror',
                      rating: 6.0,
                      imageUrl:
                          'Assets/film-bioskop-yang-tayang-november-2024-13.jpeg',
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.7,
                  children: const [
                    MovieCard(
                      title: 'Santet Segoro Pitu',
                      genre: 'Horor',
                      rating: 8.0,
                      imageUrl:
                          'Assets/film-bioskop-yang-tayang-november-2024-13.jpeg',
                    ),
                    MovieCard(
                      title: 'Gala',
                      genre: 'Action, Adventure',
                      rating: 7.5,
                      imageUrl:
                          'Assets/film-bioskop-yang-tayang-november-2024-2.png',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavbar(
          currentIndex: 2,
        ),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String genre;
  final double rating;
  final String imageUrl;

  const MovieCard({
    super.key,
    required this.title,
    required this.genre,
    required this.rating,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Stack(
              children: [
                Image.asset(
                  imageUrl,
                  height: 236,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: IconButton(
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  genre,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      rating.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
