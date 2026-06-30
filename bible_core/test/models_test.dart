import 'package:test/test.dart';
import 'package:bible_core/models/verse.dart';
import 'package:bible_core/models/passage_reference.dart';

void main() {
  group('Verse', () {
    test('creates verse with correct properties', () {
      const verse = Verse(
        bookId: 'john',
        chapter: 3,
        number: 16,
        text: 'For God so loved the world...',
      );

      expect(verse.bookId, 'john');
      expect(verse.chapter, 3);
      expect(verse.number, 16);
      expect(verse.reference, 'john 3:16');
    });
  });

  group('PassageReference', () {
    test('creates single verse reference', () {
      const ref = PassageReference(
        bookId: 'john',
        chapter: 3,
        startVerse: 16,
        endVerse: 16,
      );

      expect(ref.isSingleVerse, true);
      expect(ref.isChapter, false);
      expect(ref.toString(), 'john 3:16');
    });

    test('creates chapter reference', () {
      const ref = PassageReference(
        bookId: 'john',
        chapter: 3,
      );

      expect(ref.isChapter, true);
      expect(ref.toString(), 'john 3');
    });
  });
}
