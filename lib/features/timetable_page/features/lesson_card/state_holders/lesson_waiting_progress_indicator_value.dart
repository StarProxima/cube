import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/state_holders/lesson_card_expected_next_lesson.dart';

final lessonWaitingProgressIndicatorValue = StateProvider<double>((ref) {
  final expectedNextLesson = ref.watch(lessonCardExpectedNextLesson);
  final lastLesson = ref.watch(lessonCardLastLesson);
  final date = ref.watch(currentDateTimeQuick);

  if (expectedNextLesson == null || lastLesson == null) return 1;

  final start = lastLesson.timings.endDateTime;
  final end = expectedNextLesson.timings.startDateTime;

  final relativeDate = date.difference(start);
  final relativeEnd = end.difference(start);

  final value = relativeDate.inMilliseconds / relativeEnd.inMilliseconds;

  return 1 - value;
});
