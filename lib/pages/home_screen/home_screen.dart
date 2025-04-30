import 'package:flutter/material.dart';
import 'package:geggjadapp/data/moviedata.dart';
import 'package:geggjadapp/utils/darkmode.dart';
import 'package:geggjadapp/utils/lightmode.dart';
import 'package:geggjadapp/widgets/movie_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bio paradís'),
          actions: [
            Switch(
              value: isDarkMode,
              onChanged: (value) {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: movieList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: MovieCard(movieList[index]),
              );
            },
          ),
        ),
        // body: ListView.builder(),
      ),
      theme: isDarkMode ? darkmode : lightmode,
    );
  }
}
