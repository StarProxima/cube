import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/core/date_time_duration.dart';
import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';
import 'package:cube_system/features/timetable_page/state_holders/lessons/current_lesson.dart';

final currentLessonTimeToEndProvider = Provider<DateTimeDuration?>((ref) {
  final currentDateTime = ref.watch(currentDateTimeQuick);
  final activeLesson = ref.watch(currentLesson);

  if (activeLesson == null) return null;

  final endLessonDateTime = activeLesson.dateTimings.endDateTime;
  final duration = endLessonDateTime.difference(currentDateTime);

  return DateTimeDuration(duration);
});
