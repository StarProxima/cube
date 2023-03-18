import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/models/lesson/lesson.dart';
import 'package:cube_system/models/timetable_day/timetable_day_event.dart';

import 'package:cube_system/features/timetable_page/state_holders/timetable_page_events.dart';
import 'package:cube_system/features/timetable_page/state_holders/timetable_page_lessons.dart';

import 'package:cube_system/models/timetable_day/timetable_day_type.dart';

final timetableDayEventManager = Provider<TimetableDayEventManager>((ref) {
  return TimetableDayEventManager(
    timetable: ref.watch(timetablePageTimetable.notifier),
    events: ref.watch(timetablePageLessonEvents.notifier),
  );
});

class TimetableDayEventManager {
  final StateController<Map<DateTime, List<Lesson>>> timetable;
  final StateController<Map<DateTime, TimetableDayEvent>> events;

  TimetableDayEventManager({
    required this.timetable,
    required this.events,
  });

  void setLoadingEvents({
    required DateTime startDate,
    required DateTime endDate,
  }) {
    Map<DateTime, TimetableDayEvent> eventMap = events.state.cast();

    for (int day = 0; day < endDate.difference(startDate).inDays; day++) {
      final date = startDate.add(Duration(days: day));
      final shouldLoading = !eventMap.containsKey(date) ||
          eventMap[date]?.type == TimetableDayType.error;
      if (shouldLoading) {
        eventMap[date] = TimetableDayEvent(type: TimetableDayType.loading);
      }
    }

    events.state = eventMap;
  }

  void setLessonsAfterLoading() {
    Map<DateTime, TimetableDayEvent> eventMap = events.state.cast();
    final timetableMap = timetable.state;

    for (final entry in eventMap.entries) {
      if (entry.value.type == TimetableDayType.loading) {
        eventMap[entry.key] = TimetableDayEvent(
          type: timetableMap[entry.key]?.isEmpty ?? true
              ? TimetableDayType.weekend
              : TimetableDayType.lessons,
        );
      }
    }

    events.state = eventMap;
  }

  void setErrorsAfterLoading() {
    Map<DateTime, TimetableDayEvent> eventMap = events.state.cast();

    for (final entry in eventMap.entries) {
      if (entry.value.type == TimetableDayType.loading) {
        eventMap[entry.key] = TimetableDayEvent(type: TimetableDayType.error);
      }
    }

    events.state = eventMap;
  }
}
