import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/models/timetable_day/timetable_day_event.dart';

final timetablePageDayLessonEvent =
    Provider.family<TimetableDayEvent?, DateTime>((ref, date) {
  return ref.watch(timetablePageLessonEvents)[date];
});

final timetablePageLessonEvents =
    StateProvider<Map<DateTime, TimetableDayEvent>>((ref) {
  return {};
});
