import '../data/quote_data.dart';
import '../models/quote.dart';

class QuoteController {
  final List<Quote> _quotes = allQuotes;

  List<Quote> get quotes => _quotes;

  List<Quote> get favoriteQuotes => _quotes.where((q) => q.isFavorite).toList();

  void toggleFavorite(Quote quote) {
    quote.isFavorite = !quote.isFavorite;
  }
}
