import 'package:cube_system/features/timetable_page/features/lesson_card/state_holders/current_lesson.dart';
import 'package:cube_system/models/lesson/lesson.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';

final lessonCardIndicatorValue =
    Provider.family.autoDispose<double, Lesson>((ref, lesson) {
  final dateTime = ref.watch(currentDateTimeLazy);

  final timings = lesson.timings;

  final startDuration =
      Duration(hours: timings.start.hour, minutes: timings.start.minute);
  final endDuration =
      Duration(hours: timings.end.hour, minutes: timings.end.minute);

  final lessonDate = lesson.lesson.date;

  final lessonStartDateTime = lessonDate.add(startDuration);
  final lessonEndDateTime = lessonDate.add(endDuration);

  final lessonIsOver = lessonEndDateTime.isBefore(dateTime);
  final lessonNotStarted = lessonStartDateTime.isAfter(dateTime);

  final isActiveLesson = ref.read(currentLesson) == lesson;

  if (isActiveLesson && (lessonIsOver || lessonNotStarted)) {
    Future(() => ref.read(currentLesson.notifier).state = null);
  }

  if (lessonIsOver) return 0;
  if (lessonNotStarted) return 1;

  Future(() => ref.read(currentLesson.notifier).state = lesson);

  final currentDuration = Duration(
    hours: dateTime.hour,
    minutes: dateTime.minute,
    milliseconds: -startDuration.inMilliseconds,
  );

  final relativeEndDuration = Duration(
    hours: lessonEndDateTime.hour,
    minutes: lessonEndDateTime.minute,
    milliseconds: -startDuration.inMilliseconds,
  );

  final value =
      currentDuration.inMilliseconds / relativeEndDuration.inMilliseconds;

  return 1 - value;
});
