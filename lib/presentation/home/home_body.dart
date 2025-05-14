import 'package:flutter/material.dart';
import 'package:quotesapp/controllers/quote_controller.dart';
import 'package:quotesapp/models/quote.dart';
import 'package:quotesapp/presentation/widgets/quote_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key, required this.quotes, required this.controller});

  final QuoteController controller;
  final List<Quote> quotes;

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
      child: QuoteList(quotes: quotes, controller: controller, refresh: () {}),
    );
  }
}
