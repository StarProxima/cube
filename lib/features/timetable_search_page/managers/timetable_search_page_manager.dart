import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetableSearchPageManager = Provider<TimetableSearchPageManager>((ref) {
  return TimetableSearchPageManager();
});

class TimetableSearchPageManager {
  TimetableSearchPageManager();
}
