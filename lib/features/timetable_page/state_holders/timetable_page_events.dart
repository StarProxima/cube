import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/models/lesson_event/lesson_event.dart';

final timetablePageDayLessonEvent =
    Provider.family<LessonEvent?, DateTime>((ref, date) {
  return ref.watch(timetablePageLessonEvents)[date];
});

final timetablePageLessonEvents =
    StateProvider<Map<DateTime, LessonEvent>>((ref) {
  return {};
});
