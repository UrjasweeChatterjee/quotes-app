import 'package:flutter/material.dart';
import 'package:quotesapp/presentation/favorites/favorites_body.dart';

import '../../controllers/quote_controller.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({
    super.key,
    required this.controller,
    required this.refresh,
  });

  final QuoteController controller;
  final VoidCallback refresh;

  @override
  Widget build(BuildContext context) {
    final favoriteQuotes = controller.favoriteQuotes;

    return Scaffold(
      body: FavoritesBody(
        quotes: favoriteQuotes,
        controller: controller,
        refresh: refresh,
      ),
    );
  }
}
