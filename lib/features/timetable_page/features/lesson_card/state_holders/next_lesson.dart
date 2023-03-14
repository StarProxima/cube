import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/models/lesson/lesson.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';

import 'package:cube_system/source/date_time_duration.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/state_holders/last_lesson.dart';

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

final nextLessonTimeToStartProgressValue = StateProvider<double>((ref) {
  final lessonNext = ref.watch(nextLesson);
  final lessonLast = ref.watch(lastLesson);

  final currentDateTime = ref.watch(currentDateTimeQuick);

  if (lessonNext == null || lessonLast == null) return 1;

  final startInterval = lessonLast.timings.endDateTime;
  final endInterval = lessonNext.timings.startDateTime;

  final relativeCurrentDateTime = currentDateTime.difference(startInterval);
  final relativeEndInterval = endInterval.difference(startInterval);

  final value = relativeCurrentDateTime.inMilliseconds /
      relativeEndInterval.inMilliseconds;

  return 1 - value;
});
