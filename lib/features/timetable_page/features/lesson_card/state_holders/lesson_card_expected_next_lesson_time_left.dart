import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/state_holders/lesson_card_expected_next_lesson.dart';

import 'package:cube_system/source/date_time_duration.dart';

final lessonCardExpectedNextLessonTimeLeft =
    StateProvider<DateTimeDuration?>((ref) {
  final dateTime = ref.watch(currentDateTimeQuick);
  final expectedNextLesson = ref.watch(lessonCardExpectedNextLesson);

  if (expectedNextLesson == null) return null;

  final startDateTime = expectedNextLesson.timings.startDateTime;
  final duration = startDateTime.difference(dateTime);

  if (duration.isNegative) return DateTimeDuration(Duration.zero);

  return DateTimeDuration(duration);
});
