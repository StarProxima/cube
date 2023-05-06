import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_search_page/models/timetable_search_info.dart';

final timetableSearchPageTimetables =
    StateProvider<List<TimetableSearchInfo>>((ref) {
  return [];
});
