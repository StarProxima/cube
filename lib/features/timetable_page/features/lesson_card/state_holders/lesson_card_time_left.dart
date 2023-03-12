import 'package:cube_system/features/timetable_page/features/lesson_card/state_holders/lesson_card_active_lesson.dart';
import 'package:cube_system/features/timetable_page/state_holders/current_date.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lessonCardTimeLeft = StateProvider<DateTime?>((ref) {
  final dateTime = ref.watch(currentDateTimeQuick);
  final activeLesson = ref.read(lessonCardActiveLesson);

  if (activeLesson == null) return null;

  final end = activeLesson.timings.end;
  final endDuration = Duration(hours: end.hour, minutes: end.minute);
  final endDateTime = activeLesson.lesson.date.add(endDuration);

  final currentDuration = Duration(
    hours: dateTime.hour,
    minutes: dateTime.minute,
    seconds: dateTime.second,
  );

  if (currentDuration > endDuration) return null;

  return endDateTime.subtract(currentDuration);
});
