import 'package:flutter/material.dart';
import 'package:quotesapp/model/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;

  const QuoteCard({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        title: Text(quote.text),
        subtitle: Text("- ${quote.author}"),
      ),
    );
  }
}
