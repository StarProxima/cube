import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';
import 'package:cube_system/models/lesson_timings/lesson_date_timings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lessonTimeToEndProgressValueProvider =
    Provider.family.autoDispose<double, LessonDateTimings>((ref, timings) {
  final currentDateTime = ref.watch(currentDateTimeLazy);

  final lessonStart = timings.startDateTime;
  final lessonEnd = timings.endDateTime;

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
