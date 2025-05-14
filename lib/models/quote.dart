class Quote {
  Quote({required this.text, required this.author, this.isFavorite = false});

  final String author;
  bool isFavorite;
  final String text;
}
