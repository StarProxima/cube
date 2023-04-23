import 'package:cube_system/features/settings/state_holders/app_settings_state_holder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/core/date_time_duration.dart';
import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';
import 'package:cube_system/features/timetable_page/state_holders/lessons/next_lesson.dart';

import 'package:cube_system/features/timetable_page/state_holders/lessons/last_lesson.dart';

final nextLessonTimeToStartProvider = Provider<DateTimeDuration?>((ref) {
  final condition = ref.watch(
    appSettingsStateHolder
        .select((value) => value.lessonCardRecessDisplayCondition),
  );

  if (condition.isNever) return null;

  if (condition.isOnlyRecessBetweenLessons) {
    final last = ref.watch(lastLesson);
    final next = ref.watch(nextLesson);
    if (last == null || next == null) return null;
    if (next.number - last.number != 1) return null;
  }

  final next = ref.watch(nextLesson);

  if (next == null) return null;

  final dateTime = ref.watch(currentDateTimeQuick);

  final startDateTime = next.timings.startDateTime;
  final duration = startDateTime.difference(dateTime);

  return DateTimeDuration(duration);
});
