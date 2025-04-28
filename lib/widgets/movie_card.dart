import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geggjadapp/models/movie.dart';
import 'package:geggjadapp/movie_screen.dart';

class MovieCard extends StatelessWidget {
  const MovieCard(this.movie, {super.key});

  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the movie screen when tapped
        HapticFeedback.lightImpact();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MovieScreen(movie)),
        );
      },
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Image.network(movie.imageUrl, height: 200),
            const SizedBox(height: 10),
            Text(
              movie.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              movie.startTime,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
