import 'dart:collection';

import 'package:cube_system/features/date_time_contol/managers/date_time_manager.dart';
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
    dateTimeManager: ref.watch(dateTimeManager),
  );
});

class TimetablePageEventsNotifier
    extends SingleHiveStateNotifier<TimetableEvents> {
  final DateTimeManager dateTimeManager;

  TimetablePageEventsNotifier(
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
    return TimetableEvents.from(
      (value as Map).cast<DateTime, TimetableDayEvent>(),
    );
  }

  @override
  void save() {
    final clippedState = TimetableEvents();

    final bounds = dateTimeManager.getDateTimeBounds();

    for (final date in state.keys) {
      final isSkip = date.isBefore(bounds.start) || date.isAfter(bounds.end);
      if (isSkip) continue;

      clippedState[date] = state[date]!;
    }

    saveData(clippedState);
  }
}
