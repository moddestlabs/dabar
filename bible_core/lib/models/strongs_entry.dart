import 'package:meta/meta.dart';

/// Strong's Concordance entry
@immutable
class StrongsEntry {
  final String number;
  final Language language;
  final String lemma;
  final String? transliteration;
  final String shortDefinition;
  final String? longDefinition;
  final List<String> kjvOccurrences;

  const StrongsEntry({
    required this.number,
    required this.language,
    required this.lemma,
    this.transliteration,
    required this.shortDefinition,
    this.longDefinition,
    this.kjvOccurrences = const [],
  });

  @override
  String toString() => '$number ($lemma): $shortDefinition';
}

enum Language {
  hebrew,
  greek,
}
