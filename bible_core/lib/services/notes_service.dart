import 'package:meta/meta.dart';

/// User note attached to a verse or passage
@immutable
class Note {
  final String id;
  final String bookId;
  final int chapter;
  final int? verse;
  final String content;
  final DateTime createdAt;
  final DateTime? modifiedAt;
  final List<String> tags;

  const Note({
    required this.id,
    required this.bookId,
    required this.chapter,
    this.verse,
    required this.content,
    required this.createdAt,
    this.modifiedAt,
    this.tags = const [],
  });

  String get reference => verse != null ? '$bookId $chapter:$verse' : '$bookId $chapter';
}

/// Service for managing user notes
abstract class NotesService {
  /// Get all notes
  Future<List<Note>> getNotes();
  
  /// Get notes for a specific passage
  Future<List<Note>> getNotesForPassage(String bookId, int chapter, {int? verse});
  
  /// Add a note
  Future<void> addNote(Note note);
  
  /// Update a note
  Future<void> updateNote(Note note);
  
  /// Delete a note
  Future<void> deleteNote(String id);
  
  /// Search notes by content or tags
  Future<List<Note>> searchNotes(String query);
}
