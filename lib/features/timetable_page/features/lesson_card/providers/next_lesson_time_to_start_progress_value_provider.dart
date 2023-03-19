import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';
import 'package:cube_system/features/timetable_page/state_holders/lessons/last_lesson.dart';
import 'package:cube_system/features/timetable_page/state_holders/lessons/next_lesson.dart';

final nextLessonTimeToStartProgressValueProvider = Provider<double>((ref) {
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
