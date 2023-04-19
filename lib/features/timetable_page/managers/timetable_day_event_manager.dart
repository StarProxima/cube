import 'dart:collection';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/models/timetable_day/timetable_day_event.dart';

import 'package:cube_system/features/timetable_page/state_holders/timetable_page_events.dart';
import 'package:cube_system/features/timetable_page/state_holders/timetable_page_lessons.dart';

import 'package:cube_system/models/timetable_day/timetable_day_type.dart';

final timetableDayEventManager = Provider<TimetableDayEventManager>((ref) {
  return TimetableDayEventManager(
    timetable: ref.watch(timetablePageLessons.notifier),
    events: ref.watch(timetablePageLessonEvents.notifier),
  );
});

class TimetableDayEventManager {
  final TimetablePageLessonsNotifier timetable;
  final StateController<SplayTreeMap<DateTime, TimetableDayEvent>> events;

  TimetableDayEventManager({
    required this.timetable,
    required this.events,
  });

  void setNotSelectedEvents({
    required DateTime startDate,
    required DateTime endDate,
  }) {
    SplayTreeMap<DateTime, TimetableDayEvent> eventMap = SplayTreeMap();

    for (int day = 0; day < endDate.difference(startDate).inDays; day++) {
      final date = startDate.add(Duration(days: day));
      eventMap[date] =
          TimetableDayEvent(type: TimetableDayEventType.notSelected);
    }

    events.state = eventMap;
  }

  static final _shouldLoadingEvents = [
    TimetableDayEventType.error,
    TimetableDayEventType.notSelected
  ];

  void setLoadingEvents({
    required DateTime startDate,
    required DateTime endDate,
  }) {
    SplayTreeMap<DateTime, TimetableDayEvent> eventMap =
        SplayTreeMap.of(events.state.cast());

    for (int day = 0; day < endDate.difference(startDate).inDays; day++) {
      final date = startDate.add(Duration(days: day));
      final shouldLoading = !eventMap.containsKey(date) ||
          _shouldLoadingEvents.contains(eventMap[date]?.type);
      if (shouldLoading) {
        eventMap[date] = TimetableDayEvent(type: TimetableDayEventType.loading);
      }
    }

    events.state = eventMap;
  }

  void setLessonsAfterLoading() {
    SplayTreeMap<DateTime, TimetableDayEvent> eventMap =
        SplayTreeMap.of(events.state.cast());
    final timetableMap = timetable.state;

    for (final entry in eventMap.entries) {
      if (entry.value.type == TimetableDayEventType.loading) {
        eventMap[entry.key] = TimetableDayEvent(
          type: timetableMap[entry.key]?.isEmpty ?? true
              ? TimetableDayEventType.weekend
              : TimetableDayEventType.lessons,
        );
      }
    }

    events.state = eventMap;
  }

  void setErrorsAfterLoading() {
    SplayTreeMap<DateTime, TimetableDayEvent> eventMap =
        SplayTreeMap.of(events.state.cast());

    for (final entry in eventMap.entries) {
      if (entry.value.type == TimetableDayEventType.loading) {
        eventMap[entry.key] =
            TimetableDayEvent(type: TimetableDayEventType.error);
      }
    }

    events.state = eventMap;
  }
}
