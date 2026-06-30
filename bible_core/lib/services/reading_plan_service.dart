import 'package:meta/meta.dart';
import 'package:bible_core/models/passage_reference.dart';

/// A reading plan with scheduled passages
@immutable
class ReadingPlan {
  final String id;
  final String name;
  final String? description;
  final List<ReadingDay> days;
  final DateTime? startDate;

  const ReadingPlan({
    required this.id,
    required this.name,
    this.description,
    required this.days,
    this.startDate,
  });

  int get totalDays => days.length;
}

/// A single day in a reading plan
@immutable
class ReadingDay {
  final int dayNumber;
  final List<PassageReference> passages;
  final bool isCompleted;

  const ReadingDay({
    required this.dayNumber,
    required this.passages,
    this.isCompleted = false,
  });
}

/// Service for managing reading plans
abstract class ReadingPlanService {
  /// Get all available reading plans
  Future<List<ReadingPlan>> getPlans();
  
  /// Get a specific reading plan
  Future<ReadingPlan?> getPlan(String id);
  
  /// Mark a day as completed
  Future<void> markDayComplete(String planId, int dayNumber);
  
  /// Get current day for an active plan
  Future<int?> getCurrentDay(String planId);
}
