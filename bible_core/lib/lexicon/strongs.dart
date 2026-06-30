import 'package:bible_core/models/strongs_entry.dart';

/// Lookup Strong's Concordance entries
class StrongsLookup {
  // TODO: Load Strong's data from open sources
  
  /// Get a Strong's entry by number
  Future<StrongsEntry?> getEntry(String number) async {
    throw UnimplementedError('Strong\'s lookup not yet implemented');
  }
  
  /// Search Strong's entries
  Future<List<StrongsEntry>> search(String query) async {
    throw UnimplementedError('Strong\'s search not yet implemented');
  }
}
