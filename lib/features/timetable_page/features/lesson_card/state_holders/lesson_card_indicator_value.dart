import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:cube_system/features/timetable_page/state_holders/current_date.dart';
import 'package:cube_system/features/timetable_page/state_holders/pairs_timings.dart';

final lessonCardIndicatorValue =
    Provider.family.autoDispose<double, LessonFullNamesInDb>((ref, lesson) {
  final dateTime = ref.watch(currentDateTime);

  final number = lesson.number;
  final timing = ref.watch(pairsTimings)[number]!;

  final startDuration =
      Duration(hours: timing.first.hour, minutes: timing.first.minute);
  final endDuration =
      Duration(hours: timing.last.hour, minutes: timing.last.minute);

  final lessonDate = lesson.date;

  final lessonStartDateTime = lessonDate.add(startDuration);
  final lessonEndDateTime = lessonDate.add(endDuration);

  if (lessonStartDateTime.isAfter(dateTime)) return 1;
  if (lessonEndDateTime.isBefore(dateTime)) return 0;

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
