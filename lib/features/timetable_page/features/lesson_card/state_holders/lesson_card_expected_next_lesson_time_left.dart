import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/state_holders/lesson_card_expected_next_lesson.dart';

final lessonCardExpectedNextLessonTimeLeft = StateProvider<DateTime?>((ref) {
  final dateTime = ref.watch(currentDateTimeQuick);
  final expectedNextLesson = ref.watch(lessonCardExpectedNextLesson);

  if (expectedNextLesson == null) return null;

  final currentDuration = Duration(
    days: dateTime.day,
    hours: dateTime.hour,
    minutes: dateTime.minute,
    seconds: dateTime.second,
    milliseconds: dateTime.millisecond,
  );

  final start = expectedNextLesson.timings.start;

  final startDuration = Duration(hours: start.hour, minutes: start.minute);

  final startDateTime = expectedNextLesson.lesson.date.add(startDuration);

  return startDateTime.subtract(currentDuration);
});

final lessonCardExpectedNextLessonTimeLeftStr = StateProvider<String>((ref) {
  final timeLeft = ref.watch(lessonCardExpectedNextLessonTimeLeft);

  if (timeLeft == null) return '00:00';

  final timeLeftBuffer = StringBuffer();

  if (timeLeft.day > 0) {
    timeLeftBuffer.write("${timeLeft.day}".padLeft(2, '0'));
    timeLeftBuffer.write(":");
  }

  if (timeLeft.hour > 0) {
    timeLeftBuffer.write("${timeLeft.hour}".padLeft(2, '0'));
    timeLeftBuffer.write(":");
  }

  timeLeftBuffer.write("${timeLeft.minute}".padLeft(2, '0'));
  timeLeftBuffer.write(":");

  timeLeftBuffer.write("${timeLeft.second}".padLeft(2, '0'));

  return timeLeftBuffer.toString();
});
