import 'dart:collection';

import 'package:cube_system/models/app_box_names/app_box_names.dart';
import 'package:cube_system/models/lesson/lesson.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/core/state_notifiers/hive_state_notifier.dart';

typedef TimetableLessons = SplayTreeMap<DateTime, List<Lesson>>;

final timetablePageDayLessons =
    Provider.family<List<Lesson>?, DateTime>((ref, date) {
  return ref.watch(timetablePageLessons)[date];
});

// final timetablePageTimetable = StateProvider<TimetableLessons>((ref) {
//   return SplayTreeMap();
// });

final timetablePageLessons =
    StateNotifierProvider<TimetablePageLessonsNotifier, TimetableLessons>(
        (ref) {
  return TimetablePageLessonsNotifier(
    SplayTreeMap(),
    boxName: AppBoxNames.timetablePageLessons,
    converter: Converter<TimetableLessons, Map<DateTime, List<Lesson>>>(
      to: (data) => data,
      from: (data) => SplayTreeMap.from(data),
    ),
  );
});

class TimetablePageLessonsNotifier
    extends SingleHiveStateNotifier<TimetableLessons> {
  TimetablePageLessonsNotifier(
    super.state, {
    required super.boxName,
    required super.converter,
  });
}
