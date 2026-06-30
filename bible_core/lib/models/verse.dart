import 'package:meta/meta.dart';

/// Represents a single verse with its text and metadata
@immutable
class Verse {
  final String bookId;
  final int chapter;
  final int number;
  final String text;
  final String? notes;

  const Verse({
    required this.bookId,
    required this.chapter,
    required this.number,
    required this.text,
    this.notes,
  });

  String get reference => '$bookId $chapter:$number';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Verse &&
          runtimeType == other.runtimeType &&
          bookId == other.bookId &&
          chapter == other.chapter &&
          number == other.number;

  @override
  int get hashCode => Object.hash(bookId, chapter, number);

  @override
  String toString() => '$reference - ${text.substring(0, text.length > 50 ? 50 : text.length)}...';
}
