/// Concordance index for word-for-word searches
class ConcordanceIndex {
  // TODO: Implement concordance indexing
  // - Build index from verses
  // - Search by lemma, Strong's number, or surface form
  // - Return verse references with context
  
  /// Build concordance index from verses
  Future<void> buildIndex() async {
    throw UnimplementedError('Concordance indexing not yet implemented');
  }
  
  /// Search concordance for a word or lemma
  Future<List<ConcordanceResult>> search(String query) async {
    throw UnimplementedError('Concordance search not yet implemented');
  }
}

/// Result from concordance search
class ConcordanceResult {
  final String bookId;
  final int chapter;
  final int verse;
  final String verseText;
  final String matchedWord;
  final String? lemma;
  final String? strongsNumber;

  const ConcordanceResult({
    required this.bookId,
    required this.chapter,
    required this.verse,
    required this.verseText,
    required this.matchedWord,
    this.lemma,
    this.strongsNumber,
  });

  String get reference => '$bookId $chapter:$verse';
}
