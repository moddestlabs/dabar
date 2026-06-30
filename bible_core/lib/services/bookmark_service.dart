import 'package:meta/meta.dart';

/// User bookmark for a verse or passage
@immutable
class Bookmark {
  final String id;
  final String bookId;
  final int chapter;
  final int verse;
  final DateTime createdAt;
  final String? note;

  const Bookmark({
    required this.id,
    required this.bookId,
    required this.chapter,
    required this.verse,
    required this.createdAt,
    this.note,
  });

  String get reference => '$bookId $chapter:$verse';
}

/// Service for managing bookmarks
abstract class BookmarkService {
  /// Get all bookmarks
  Future<List<Bookmark>> getBookmarks();
  
  /// Add a bookmark
  Future<void> addBookmark(Bookmark bookmark);
  
  /// Remove a bookmark
  Future<void> removeBookmark(String id);
  
  /// Check if a verse is bookmarked
  Future<bool> isBookmarked(String bookId, int chapter, int verse);
}
