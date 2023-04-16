import 'package:flutter_riverpod/flutter_riverpod.dart';

enum TimetableSearchEventType {
  welcome,
  inputDelay,
  loading,
  results,
  noFound,
  error,
}

final timetableSearchPageEventType =
    StateProvider<TimetableSearchEventType>((ref) {
  return TimetableSearchEventType.welcome;
});
