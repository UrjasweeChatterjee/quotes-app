import 'package:flutter/material.dart';

import '../../models/quote.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    super.key,
    required this.quote,
    required this.onFavoriteToggle,
  });

  final VoidCallback onFavoriteToggle;
  final Quote quote;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF8F0FF), Color(0xFFE6D0FF)], // Light purple gradient
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(2, 4)),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          title: Text(
            quote.text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            "- ${quote.author}",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          trailing: IconButton(
            icon: Icon(
              quote.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: quote.isFavorite ? Colors.red : Colors.grey[600],
            ),
            onPressed: onFavoriteToggle,
          ),
        ),
      ),
    );
  }
}
