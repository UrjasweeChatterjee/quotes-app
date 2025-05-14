import 'package:flutter/material.dart';
import 'package:quotesapp/model/quote.dart';

import 'quote_card.dart';

class QuoteList extends StatelessWidget {
  final List<Quote> quotes;

  const QuoteList({super.key, required this.quotes});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quotes.length,
      itemBuilder: (context, index) {
        return QuoteCard(quote: quotes[index]);
      },
    );
  }
}
