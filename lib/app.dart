import 'package:flutter/material.dart';

import 'controllers/quote_controller.dart';
import 'presentation/favorites/favorites_screen.dart';
import 'presentation/home/home_screen.dart';

class QuotesApp extends StatefulWidget {
  const QuotesApp({super.key});

  @override
  _QuotesAppState createState() => _QuotesAppState();
}

class _QuotesAppState extends State<QuotesApp> {
  final QuoteController _controller = QuoteController();
  int _currentIndex = 0;

  void _refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeScreen(controller: _controller, refresh: _refresh),
      FavoritesScreen(controller: _controller, refresh: _refresh),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Quotes App", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xFFE6E0F8), // Light purple hue
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFE6E0F8), // Light purple hue
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.format_quote),
            label: "All Quotes",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}
