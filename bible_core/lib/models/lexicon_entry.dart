import 'package:meta/meta.dart';

/// Entry in a lexicon (e.g., for a lemma or root word)
@immutable
class LexiconEntry {
  final String lemma;
  final String? transliteration;
  final String definition;
  final String? etymology;
  final List<String> usages;
  final String? strongsNumber;

  const LexiconEntry({
    required this.lemma,
    this.transliteration,
    required this.definition,
    this.etymology,
    this.usages = const [],
    this.strongsNumber,
  });

  @override
  String toString() => '$lemma: $definition';
}
