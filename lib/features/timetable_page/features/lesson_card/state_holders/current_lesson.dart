import 'package:cube_system/models/lesson/lesson.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';

import 'package:cube_system/source/date_time_duration.dart';

final currentLesson = StateProvider<Lesson?>((ref) {
  return null;
});

final currentLessonTimeToEnd = StateProvider<DateTimeDuration?>((ref) {
  final currentDateTime = ref.watch(currentDateTimeQuick);
  final activeLesson = ref.watch(currentLesson);

  if (activeLesson == null) return null;

  final endLessonDateTime = activeLesson.timings.endDateTime;
  final duration = endLessonDateTime.difference(currentDateTime);

  return DateTimeDuration(duration);
});

final currentLessonTimeToEndProgressValue =
    Provider.family.autoDispose<double, Lesson>((ref, lesson) {
  final currentDateTime = ref.watch(currentDateTimeLazy);

  final lessonStart = lesson.timings.startDateTime;
  final lessonEnd = lesson.timings.endDateTime;

  final lessonIsOver = currentDateTime.isAfter(lessonEnd);
  final lessonNotStarted = currentDateTime.isBefore(lessonStart);

  final isActiveLesson = ref.read(currentLesson) == lesson;

  if (isActiveLesson && (lessonIsOver || lessonNotStarted)) {
    Future(() => ref.read(currentLesson.notifier).state = null);
  }

  if (lessonIsOver) return 0;
  if (lessonNotStarted) return 1;

  Future(() => ref.read(currentLesson.notifier).state = lesson);

  final relativeCurrentDateTime = currentDateTime.difference(lessonStart);

  final relativeLessonEnd = lessonEnd.difference(lessonStart);

  final value =
      relativeCurrentDateTime.inMilliseconds / relativeLessonEnd.inMilliseconds;

  return 1 - value;
});
