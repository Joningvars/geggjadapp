import 'package:flutter/material.dart';
import 'package:geggjadapp/models/movie.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen(this.movie, {super.key});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          movie.title,
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Image.network(movie.imageUrl, height: 200),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Release Date: ${movie.releaseDate}",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 20),
                  Text("Genre: ${movie.genre}", style: TextStyle(fontSize: 16)),
                ],
              ),
              Text("Start time: ${movie.startTime}"),
              SizedBox(height: 20),
              Divider(),
              SizedBox(height: 20),
              Text(
                movie.description,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: Text(
              "Start Time: ${movie.startTime}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
