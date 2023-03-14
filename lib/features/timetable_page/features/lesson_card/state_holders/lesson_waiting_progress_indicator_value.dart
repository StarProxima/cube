import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/state_holders/next_lesson.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/state_holders/last_lesson.dart';

final lessonWaitingProgressIndicatorValue = StateProvider<double>((ref) {
  final next = ref.watch(nextLesson);
  final last = ref.watch(lastLesson);
  final date = ref.watch(currentDateTimeQuick);

  if (next == null || last == null) return 1;

  final start = last.timings.endDateTime;
  final end = next.timings.startDateTime;

  final relativeDate = date.difference(start);
  final relativeEnd = end.difference(start);

  final value = relativeDate.inMilliseconds / relativeEnd.inMilliseconds;

  return 1 - value;
});
