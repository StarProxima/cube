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

final timetablePageLessons =
    StateNotifierProvider<TimetablePageLessonsNotifier, TimetableLessons>(
        (ref) {
  return TimetablePageLessonsNotifier(
    SplayTreeMap(),
    boxName: AppBoxNames.timetablePageLessons,
    autoSaving: false,
  );
});

class TimetablePageLessonsNotifier
    extends SingleHiveStateNotifier<TimetableLessons> {
  TimetablePageLessonsNotifier(
    super.state, {
    required super.boxName,
    required super.autoSaving,
  });

  @override
  serialize(value) {
    return value.cast();
  }

  @override
  deserialize(value) {
    final typedMap = (value as Map).map((key, value) {
      return MapEntry(key as DateTime, List<Lesson>.from(value));
    });

    return SplayTreeMap.from(typedMap);
  }
}
