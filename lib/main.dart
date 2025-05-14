import 'package:flutter/material.dart';

import 'presentation/all quotes/all_quotes_screen.dart';
import 'presentation/favorites/favorites_screen.dart';

void main() {
  runApp(const QuotesApp());
}

class QuotesApp extends StatelessWidget {
  const QuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quotes App',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFF8F8F8),
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF8F8F8),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const MainScreen(),
    );
  }
}

class Quote {
  final String text;
  final String author;
  bool isFavorite;

  Quote({required this.text, required this.author, this.isFavorite = false});
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Quote> quotes = [
    Quote(
      text:
          "Overcome sadness\nThe secret of\nyour future\nis hidden in\nyour daily routine",
      author: "Urjaswee Chatterjee",
    ),
    Quote(
      text: "The only way to do great work\nis to love what you do",
      author: "Urjaswee Chatterjee",
    ),
    Quote(
      text: "Innovation distinguishes\nbetween a leader\nand a follower",
      author: "Urjaswee Chatterjee",
    ),
    Quote(
      text: "Your time is limited\ndon't waste it living\nsomeone else's life",
      author: "Urjaswee Chatterjee",
    ),
    Quote(text: "Stay hungry\nstay foolish", author: "Urjaswee Chatterjee"),
    Quote(
      text: "Life is what happens\nwhen you're busy\nmaking other plans",
      author: "Urjaswee Chatterjee",
    ),
  ];

  void _toggleFavorite(Quote quote) {
    setState(() {
      quote.isFavorite = !quote.isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentIndex == 0 ? 'All Quotes' : 'Favorites'),
      ),
      body:
          _currentIndex == 0
              ? AllQuotesScreen(quotes: quotes, toggleFavorite: _toggleFavorite)
              : FavoritesScreen(
                quotes: quotes.where((quote) => quote.isFavorite).toList(),
                toggleFavorite: _toggleFavorite,
              ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        elevation: 8,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.format_quote),
            label: 'All Quotes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
