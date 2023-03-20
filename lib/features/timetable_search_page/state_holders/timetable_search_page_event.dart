import 'package:flutter_riverpod/flutter_riverpod.dart';

enum TimetableSearchEventType {
  welcome,
  loading,
  results,
  noFound,
  error,
}

final timetableSearchPageEventType =
    StateProvider<TimetableSearchEventType>((ref) {
  return TimetableSearchEventType.welcome;
});
