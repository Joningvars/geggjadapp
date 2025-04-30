import 'package:flutter/material.dart';
import 'package:geggjadapp/data/moviedata.dart';
import 'package:geggjadapp/pages/layout_screen/layout_screen.dart';
import 'package:geggjadapp/pages/movie_screen/movie_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Index Navigation Demo',
      home: IndexNavigationExample(),
    );
  }
}

class IndexNavigationExample extends StatefulWidget {
  @override
  _IndexNavigationExampleState createState() => _IndexNavigationExampleState();
}

class _IndexNavigationExampleState extends State<IndexNavigationExample> {
  int _selectedIndex = 0;

  // Define screens
  static final List<Widget> _screens = [
    LayoutDemoScreen(),
    MovieScreen(movieList[0]),
    Center(child: Text('👤 Profile', style: TextStyle(fontSize: 32))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // change tab
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person),
        actions: [
          Icon(Icons.add_a_photo_rounded),
          Icon(Icons.add_a_photo_rounded),
          Icon(Icons.add_a_photo_rounded),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Container(
            color: Colors.blue,
            height: 30,
            width: double.infinity,
            child: Text("CLICK ME"),
          ),
        ),
        title: Text('HELLO APPBAR'),
      ),
      body: _screens[_selectedIndex], // show current screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped, // handle tap
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
