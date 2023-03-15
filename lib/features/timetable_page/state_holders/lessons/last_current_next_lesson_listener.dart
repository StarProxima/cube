import 'dart:ffi';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/state_holders/current_lesson.dart';
import 'package:cube_system/features/timetable_page/features/lesson_card/state_holders/next_lesson.dart';
import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';

// На этот провайдер нужно подписаться для обновления прошлой, текущей и следующей пары
//TODO: Найти способ получше
final lastCurrentNextLessonListener =
    StateNotifierProvider<LastCurrentNextLessonListenerNotifier, void>((ref) {
  ref.watch(currentDateTimeLazy);

  ref.watch(
    currentLessonTimeToEnd.select((value) => value?.duration.inSeconds == 0),
  );

  ref.watch(
    nextLessonTimeToStart.select((value) => value?.duration.inSeconds == 0),
  );

  // ignore: void_checks
  return LastCurrentNextLessonListenerNotifier(Void);
});

class LastCurrentNextLessonListenerNotifier extends StateNotifier<void> {
  LastCurrentNextLessonListenerNotifier(super.state);

  @override
  bool updateShouldNotify(void old, void current) => true;
}
