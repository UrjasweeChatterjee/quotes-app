class Quote {
  final String text; // Example field
  final String author; // Example field
  bool isFavorite; // Required for favorites toggle

  Quote({required this.text, required this.author, this.isFavorite = false});
}
