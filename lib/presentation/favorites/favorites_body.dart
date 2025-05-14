import 'package:flutter/material.dart';

import '../../controllers/quote_controller.dart';
import '../../models/quote.dart';
import '../../presentation/widgets/quote_list.dart';

class FavoritesBody extends StatelessWidget {
  const FavoritesBody({
    super.key,
    required this.quotes,
    required this.controller,
    required this.refresh,
  });

  final QuoteController controller;
  final List<Quote> quotes;
  final VoidCallback refresh;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF0E6FF), Color(0xFFE1D2F9)], // Light purple background gradient
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child:
          quotes.isEmpty
              ? Center(child: Text("No favorites yet."))
              : QuoteList(
                quotes: quotes,
                controller: controller,
                refresh: refresh,
              ),
    );
  }
}
