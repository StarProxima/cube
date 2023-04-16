import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/lessons/last_lesson.dart';
import 'package:cube_system/features/timetable_page/state_holders/lessons/next_lesson.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/providers/next_lesson_time_to_start_provider.dart';

import 'package:cube_system/features/settings/state_holders/app_settings_view_state_holder.dart';

final nextLessonTimeToStartProgressValueProvider = Provider<double>((ref) {
  ref.watch(
    appSettingsViewStateHolder
        .select((value) => value.lessonCardRecessDisplayCondition),
  );

  final timeLeft = ref.read(nextLessonTimeToStartProvider)?.duration;
  if (timeLeft == null) return 1;

  final lessonNext = ref.watch(nextLesson);
  final lessonLast = ref.watch(lastLesson);

  if (lessonNext == null || lessonLast == null) return 1;

  final startInterval = lessonLast.timings.endDateTime;
  final endInterval = lessonNext.timings.startDateTime;

  final recessTime = endInterval.difference(startInterval);

  if (recessTime.inMinutes <= 30) {
    ref.watch(currentDateTimeQuick);
  } else {
    ref.watch(currentDateTimeLazy);
  }

  final value =
      (recessTime.inSeconds - timeLeft.inSeconds) / recessTime.inSeconds;

  return value;
});
