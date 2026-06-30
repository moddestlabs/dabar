import 'package:meta/meta.dart';

/// Represents a book of the Bible
@immutable
class Book {
  final String id;
  final String name;
  final String abbreviation;
  final Testament testament;
  final int chapterCount;
  final int order;

  const Book({
    required this.id,
    required this.name,
    required this.abbreviation,
    required this.testament,
    required this.chapterCount,
    required this.order,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => '$name ($abbreviation)';
}

enum Testament {
  old,
  new_,
}
