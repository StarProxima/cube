import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/providers/current_lesson_time_to_end_provider.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/providers/next_lesson_time_to_start_provider.dart';

import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';

// На этот провайдер нужно подписаться для обновления прошлой, текущей и следующей пары

final lastCurrentNextLessonListener = Provider<void>((ref) {
  ref.watch(currentDateTimeLazy);

  ref.watch(
    currentLessonTimeToEndProvider
        .select((value) => value?.duration.inSeconds == 0),
  );

  ref.watch(
    nextLessonTimeToStartProvider
        .select((value) => value?.duration.inSeconds == 0),
  );

  final manager = ref.read(timetablePageManager);

  manager.findLastCurrentNextLesson();
});
