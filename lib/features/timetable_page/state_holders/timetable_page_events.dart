import 'dart:collection';

import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';
import 'package:cube_system/models/app_box_names/app_box_names.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/models/timetable_day/timetable_day_event.dart';

import 'package:cube_system/core/state_notifiers/hive_state_notifier.dart';

typedef TimetableEvents = SplayTreeMap<DateTime, TimetableDayEvent>;

final timetablePageDayLessonEvent =
    Provider.family<TimetableDayEvent?, DateTime>((ref, date) {
  return ref.watch(timetablePageEvents)[date];
});

final timetablePageEvents =
    StateNotifierProvider<TimetablePageEventsNotifier, TimetableEvents>((ref) {
  return TimetablePageEventsNotifier(
    TimetableEvents(),
    boxName: AppBoxNames.timetablePageEvents,
    autoSaving: false,
    currentDate: ref.watch(currentDate.notifier),
  );
});

class TimetablePageEventsNotifier
    extends SingleHiveStateNotifier<TimetableEvents> {
  final StateController<DateTime> currentDate;

  TimetablePageEventsNotifier(
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
    return TimetableEvents.from(
      (value as Map).cast<DateTime, TimetableDayEvent>(),
    );
  }

  @override
  void save() {
    final newState = TimetableEvents();

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
