import 'package:meta/meta.dart';

/// Represents a single word in the original language with morphological data
@immutable
class Word {
  final String text;
  final String? transliteration;
  final String? lemma;
  final String? strongsNumber;
  final MorphologyTag? morphology;
  final int position;

  const Word({
    required this.text,
    this.transliteration,
    this.lemma,
    this.strongsNumber,
    this.morphology,
    required this.position,
  });

  @override
  String toString() => text;
}

/// Morphological tag for a word (parsed from encoded morphology codes)
@immutable
class MorphologyTag {
  final String? partOfSpeech;
  final String? person;
  final String? gender;
  final String? number;
  final String? tense;
  final String? voice;
  final String? mood;
  final String? case_;
  final String? state;
  final String rawCode;

  const MorphologyTag({
    this.partOfSpeech,
    this.person,
    this.gender,
    this.number,
    this.tense,
    this.voice,
    this.mood,
    this.case_,
    this.state,
    required this.rawCode,
  });

  @override
  String toString() => rawCode;
}
