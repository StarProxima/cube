import 'package:cube_system/features/timetable_page/features/lesson_card/state_holders/lesson_card_active_lesson.dart';
import 'package:cube_system/features/timetable_page/state_holders/current_date.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lessonCardTimeLeft = StateProvider<DateTime?>((ref) {
  final dateTime = ref.watch(currentDateTimeQuick);
  final activeLesson = ref.watch(lessonCardActiveLesson);

  if (activeLesson == null) return null;

  final end = activeLesson.timings.end;
  final endDuration = Duration(hours: end.hour, minutes: end.minute);
  final endDateTime = activeLesson.lesson.date.add(endDuration);

  final currentDuration = Duration(
    hours: dateTime.hour,
    minutes: dateTime.minute,
    seconds: dateTime.second,
    milliseconds: dateTime.millisecond,
  );

  if (currentDuration > endDuration) return null;

  return endDateTime.subtract(currentDuration);
});

final lessonCardTimeLeftStr = StateProvider<String>((ref) {
  final timeLeft = ref.watch(lessonCardTimeLeft);

  if (timeLeft == null) return '00:00';

  final timeLeftBuffer = StringBuffer();

  if (timeLeft.hour > 0) {
    timeLeftBuffer.write("${timeLeft.hour}:");
  }

  if (timeLeft.minute > 0 || timeLeft.hour > 0) {
    timeLeftBuffer.write("${timeLeft.minute}".padLeft(2, '0'));
    timeLeftBuffer.write(":");
  }

  timeLeftBuffer.write("${timeLeft.second}".padLeft(2, '0'));

  if (timeLeft.minute == 0 && timeLeft.hour == 0) {
    timeLeftBuffer.write(":");
    timeLeftBuffer
        .write("${timeLeft.millisecond}".padLeft(2, '0').substring(0, 2));
  }

  return timeLeftBuffer.toString();
});
