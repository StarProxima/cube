import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/providers/current_lesson_time_to_end_provider.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/providers/next_lesson_time_to_start_provider.dart';

// На этот провайдер нужно подписаться для обновления прошлой, текущей и следующей пары
//TODO: Найти способ получше
final lastCurrentNextLessonListener =
    StateNotifierProvider<LastCurrentNextLessonListenerNotifier, void>((ref) {
  ref.watch(currentDateTimeLazy);

  ref.watch(
    currentLessonTimeToEndProvider
        .select((value) => value?.duration.inSeconds == 0),
  );

  ref.watch(
    nextLessonTimeToStartProvider
        .select((value) => value?.duration.inSeconds == 0),
  );

  return LastCurrentNextLessonListenerNotifier(true);
});

class LastCurrentNextLessonListenerNotifier extends StateNotifier<bool> {
  LastCurrentNextLessonListenerNotifier(super.state);

  @override
  bool updateShouldNotify(void old, void current) => true;
}
