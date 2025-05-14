import '../model/quote.dart';

class QuoteController {
  final List<Quote> _quotes = [];

  List<Quote> get quotes => _quotes;

  List<Quote> get favoriteQuotes => _quotes.where((q) => q.isFavorite).toList();

  void toggleFavorite(Quote quote) {
    quote.isFavorite = !quote.isFavorite;
  }
}
