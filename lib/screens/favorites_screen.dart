import 'package:flutter/material.dart';

import '../main.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Quote> quotes;
  final Function(Quote) toggleFavorite;

  const FavoritesScreen({
    super.key,
    required this.quotes,
    required this.toggleFavorite,
  });

  @override
  Widget build(BuildContext context) {
    final borderColors = [
      Colors.lightBlue,
      Colors.pinkAccent,
      Colors.green,
      Colors.deepPurpleAccent,
      Colors.orange,
      Colors.teal,
    ];

    return quotes.isEmpty
        ? const Center(
          child: Text(
            'No favorite quotes yet',
            style: TextStyle(color: Colors.grey),
          ),
        )
        : ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          itemCount: quotes.length,
          itemBuilder: (context, index) {
            final quote = quotes[index];
            final borderColor = borderColors[index % borderColors.length];
            return Container(
              margin: const EdgeInsets.only(bottom: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border(left: BorderSide(color: borderColor, width: 4)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      quote.text,
                      style: const TextStyle(
                        fontSize: 18,
                        height: 1.5,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '- ${quote.author}',
                          style: const TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.favorite, color: Colors.red),
                          onPressed: () => toggleFavorite(quote),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
  }
}
