import 'package:cube_system/models/lesson/lesson.dart';
import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lessonTimeToEndProgressValueProvider =
    Provider.family.autoDispose<double, Lesson>((ref, lesson) {
  final currentDateTime = ref.watch(currentDateTimeLazy);

  final lessonStart = lesson.timings.startDateTime;
  final lessonEnd = lesson.timings.endDateTime;

  final lessonIsOver = currentDateTime.isAfter(lessonEnd);
  final lessonNotStarted = currentDateTime.isBefore(lessonStart);

  if (lessonIsOver) return 0;
  if (lessonNotStarted) return 1;

  final relativeCurrentDateTime = currentDateTime.difference(lessonStart);

  final relativeLessonEnd = lessonEnd.difference(lessonStart);

  final value =
      relativeCurrentDateTime.inMilliseconds / relativeLessonEnd.inMilliseconds;

  return 1 - value;
});
