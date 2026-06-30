import 'package:meta/meta.dart';

/// Represents a chapter within a book
@immutable
class Chapter {
  final String bookId;
  final int number;
  final int verseCount;

  const Chapter({
    required this.bookId,
    required this.number,
    required this.verseCount,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Chapter &&
          runtimeType == other.runtimeType &&
          bookId == other.bookId &&
          number == other.number;

  @override
  int get hashCode => Object.hash(bookId, number);

  @override
  String toString() => '$bookId $number';
}
