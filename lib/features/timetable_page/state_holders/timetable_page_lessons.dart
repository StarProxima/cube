import 'dart:collection';

import 'package:cube_system/models/app_box_names/app_box_names.dart';
import 'package:cube_system/models/lesson/lesson.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/core/state_notifiers/hive_state_notifier.dart';

import 'package:cube_system/features/date_time_contol/managers/date_time_manager.dart';

typedef TimetableLessons = SplayTreeMap<DateTime, List<Lesson>>;

final timetablePageDayLessons =
    Provider.family<List<Lesson>?, DateTime>((ref, date) {
  return ref.watch(timetablePageLessons)[date];
});

final timetablePageLessons =
    StateNotifierProvider<TimetablePageLessonsNotifier, TimetableLessons>(
        (ref) {
  return TimetablePageLessonsNotifier(
    TimetableLessons(),
    boxName: AppBoxNames.timetablePageLessons,
    autoSaving: false,
    dateTimeManager: ref.watch(dateTimeManager),
  );
});

class TimetablePageLessonsNotifier
    extends SingleHiveStateNotifier<TimetableLessons> {
  final DateTimeManager dateTimeManager;

  TimetablePageLessonsNotifier(
    super.state, {
    required super.boxName,
    required super.autoSaving,
    required this.dateTimeManager,
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

    return TimetableLessons.from(typedMap);
  }

  @override
  void save() {
    final clippedState = TimetableLessons();

    final bounds = dateTimeManager.getDateTimeBounds();

    for (final date in state.keys) {
      final isSkip = date.isBefore(bounds.start) || date.isAfter(bounds.end);
      if (isSkip) continue;

      clippedState[date] = state[date]!;
    }

    saveData(clippedState);
  }
}
