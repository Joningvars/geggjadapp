import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard(this.title, this.imageUrl, {super.key});
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(imageUrl, fit: BoxFit.cover, height: 200),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
