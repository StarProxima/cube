import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/models/lesson/lesson.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';

import 'package:cube_system/source/date_time_duration.dart';

final nextLesson = StateProvider<Lesson?>((ref) {
  return null;
});

final nextLessonTimeToStart = StateProvider<DateTimeDuration?>((ref) {
  final dateTime = ref.watch(currentDateTimeQuick);
  final next = ref.watch(nextLesson);

  if (next == null) return null;

  final startDateTime = next.timings.startDateTime;
  final duration = startDateTime.difference(dateTime);

  if (duration.isNegative) return DateTimeDuration(Duration.zero);

  return DateTimeDuration(duration);
});
