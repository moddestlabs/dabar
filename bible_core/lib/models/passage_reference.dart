import 'package:meta/meta.dart';

/// Reference to a passage (book, chapter, verse range)
@immutable
class PassageReference {
  final String bookId;
  final int chapter;
  final int? startVerse;
  final int? endVerse;

  const PassageReference({
    required this.bookId,
    required this.chapter,
    this.startVerse,
    this.endVerse,
  });

  /// Whether this reference is a single verse
  bool get isSingleVerse => startVerse == endVerse;

  /// Whether this reference is an entire chapter
  bool get isChapter => startVerse == null && endVerse == null;

  @override
  String toString() {
    if (isChapter) return '$bookId $chapter';
    if (isSingleVerse) return '$bookId $chapter:$startVerse';
    return '$bookId $chapter:$startVerse-$endVerse';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PassageReference &&
          runtimeType == other.runtimeType &&
          bookId == other.bookId &&
          chapter == other.chapter &&
          startVerse == other.startVerse &&
          endVerse == other.endVerse;

  @override
  int get hashCode => Object.hash(bookId, chapter, startVerse, endVerse);
}
