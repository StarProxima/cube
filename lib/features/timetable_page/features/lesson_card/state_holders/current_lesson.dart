import 'package:cube_system/models/lesson/lesson.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';

import 'package:cube_system/source/date_time_duration.dart';

final currentLesson = StateProvider<Lesson?>((ref) {
  return null;
});

final currentLessonTimeToEnd = StateProvider<DateTimeDuration?>((ref) {
  final currentDateTime = ref.watch(currentDateTimeQuick);
  final activeLesson = ref.watch(currentLesson);

  if (activeLesson == null) return null;

  final endLessonDateTime = activeLesson.timings.endDateTime;
  final duration = endLessonDateTime.difference(currentDateTime);

  return DateTimeDuration(duration);
});
