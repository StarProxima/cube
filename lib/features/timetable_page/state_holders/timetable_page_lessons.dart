import 'dart:collection';

import 'package:cube_system/models/lesson/lesson.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetablePageDayLessons =
    Provider.family<List<Lesson>?, DateTime>((ref, date) {
  return ref.watch(timetablePageTimetable)[date];
});

final timetablePageTimetable =
    StateProvider<SplayTreeMap<DateTime, List<Lesson>>>((ref) {
  return SplayTreeMap();
});
