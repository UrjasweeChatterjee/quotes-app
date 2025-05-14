import 'package:flutter/material.dart';
import 'package:quotesapp/controllers/quote_controller.dart';
import 'package:quotesapp/presentation/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.controller,
    required void Function() refresh,
  });

  final QuoteController controller;

  @override
  Widget build(BuildContext context) {
    final quotes = controller.quotes;

    return Scaffold(body: HomeBody(quotes: quotes, controller: controller));
  }
}
