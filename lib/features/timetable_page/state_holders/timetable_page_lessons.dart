import 'dart:collection';

import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';
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
    TimetableLessons(),
    boxName: AppBoxNames.timetablePageLessons,
    autoSaving: false,
    currentDate: ref.watch(currentDate.notifier),
  );
});

class TimetablePageLessonsNotifier
    extends SingleHiveStateNotifier<TimetableLessons> {
  final StateController<DateTime> currentDate;

  TimetablePageLessonsNotifier(
    super.state, {
    required super.boxName,
    required super.autoSaving,
    required this.currentDate,
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
    final newState = TimetableLessons();

    final current = currentDate.state;
    final dayOffset = current.weekday - 1;
    final weekStart = current.add(Duration(days: -dayOffset));
    final weekEnd = current.add(Duration(days: 6 - dayOffset));
    final startDate = weekStart.add(const Duration(days: -7));
    final endDate = weekEnd.add(const Duration(days: 7));

    for (final date in state.keys) {
      if (date.isBefore(startDate) || date.isAfter(endDate)) continue;
      newState[date] = state[date]!;
    }

    saveData(newState);
  }
}
