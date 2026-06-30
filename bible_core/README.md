# bible_core

Pure Dart package containing all Bible data models, parsing logic, concordance indexing, lexicon lookups, and business logic.

**No Flutter dependency.** This package can be unit-tested with `dart test` and consumed by the Flutter app via local path dependency.

## Structure

- `models/` — Core domain models (Verse, Book, Chapter, Word, MorphologyTag, etc.)
- `data/` — Data loading and repository pattern
  - `sources/` — Parsers for open Bible text formats (OSHB, SWORD modules, etc.)
  - `repository.dart` — BibleRepository interface
- `concordance/` — Word-for-word concordance index and search
- `lexicon/` — Strong's numbers, morphology parsing, lexicon lookups
- `tts/` — Abstract TTS engine interface (implemented in bible_app)
- `services/` — Bookmark, notes, reading plan services
