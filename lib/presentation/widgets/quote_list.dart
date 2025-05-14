import 'package:flutter/material.dart';

import '../../controllers/quote_controller.dart';
import '../../models/quote.dart';
import 'quote_card.dart';

class QuoteList extends StatelessWidget {
  const QuoteList({
    super.key,
    required this.quotes,
    required this.controller,
    required VoidCallback refresh,
  });

  final QuoteController controller;
  final List<Quote> quotes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 12),
      itemCount: quotes.length,
      itemBuilder: (context, index) {
        return QuoteCard(
          quote: quotes[index],
          onFavoriteToggle: () {
            controller.toggleFavorite(quotes[index]);
          },
        );
      },
    );
  }
}
