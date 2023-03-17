import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/api/cube_api.dart';
import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:cube_system/models/lesson/lesson.dart';
import 'package:cube_system/models/timetable_day/timetable_day_event.dart';
import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';
import 'package:cube_system/features/timetable_page/state_holders/current_picked_date_in_page_view.dart';
import 'package:cube_system/features/timetable_page/state_holders/lessons/current_lesson.dart';
import 'package:cube_system/features/timetable_page/state_holders/lessons/last_lesson.dart';
import 'package:cube_system/features/timetable_page/state_holders/lessons/next_lesson.dart';
import 'package:cube_system/features/timetable_page/state_holders/selected_date.dart';
import 'package:cube_system/features/timetable_page/state_holders/timetable_page_events.dart';
import 'package:cube_system/features/timetable_page/state_holders/timetable_page_lessons.dart';
import 'package:cube_system/features/timetable_page/state_holders/timetable_page_title.dart';
import 'package:cube_system/features/timetable_page/managers/lesson_convertor.dart';
import 'package:intl/intl.dart';

import 'package:cube_system/models/timetable_day/timetable_day_type.dart';

final timetableLessonsManager = Provider<TimetableLessonsManager>((ref) {
  return TimetableLessonsManager(
    api: ref.watch(cubeApi),
    lessonConvertor: ref.watch(lessonConvertor),
    timetable: ref.watch(timetablePageTimetable.notifier),
    events: ref.watch(timetablePageLessonEvents.notifier),
    currentDateTime: ref.watch(currentDateTimeQuick.notifier),
    selectedDate: ref.watch(selectedDate.notifier),
    currentPickedDateInPageView:
        ref.watch(currentPickedDateInPageView.notifier),
    timetablePageTitle: ref.watch(timetablePageTitle.notifier),
    currentLesson: ref.watch(currentLesson.notifier),
    nextLesson: ref.watch(nextLesson.notifier),
    lastLesson: ref.watch(lastLesson.notifier),
  );
});

class TimetableLessonsManager {
  final CubeApi api;
  final LessonConvertor lessonConvertor;

  final StateController<Map<DateTime, List<Lesson>>> timetable;
  final StateController<Map<DateTime, TimetableDayEvent>> events;
  final StateController<DateTime> currentDateTime;
  final StateController<DateTime> selectedDate;
  final StateController<DateTime> currentPickedDateInPageView;
  final StateController<String> timetablePageTitle;
  final StateController<Lesson?> currentLesson;
  final StateController<Lesson?> nextLesson;
  final StateController<Lesson?> lastLesson;

  TimetableLessonsManager({
    required this.api,
    required this.lessonConvertor,
    required this.timetable,
    required this.events,
    required this.currentDateTime,
    required this.selectedDate,
    required this.currentPickedDateInPageView,
    required this.timetablePageTitle,
    required this.currentLesson,
    required this.nextLesson,
    required this.lastLesson,
  });

  // TODO: Refactor and decompose
  Future<void> updateCurrentTimetable() async {
    await Future(() {});
    final date = selectedDate.state;

    final dayOffset = date.weekday - 1;
    final weekStart = date.add(Duration(days: -dayOffset));
    final weekEnd = date.add(Duration(days: 6 - dayOffset));

    final startDate = weekStart.add(const Duration(days: -7));

    final endDate = weekEnd.add(const Duration(days: 7));

    Map<DateTime, List<Lesson>> timetableMap = timetable.state.cast();
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

    final format = DateFormat('yyyy-MM-dd');

    try {
      final request = await api.apiLessonsAutocompleteGet(q: "36/2");

      final res = request.body!;

      timetablePageTitle.state = res.groups.first.name;

      final t2 = await api.apiLessonsGet(
        fullData: true,
        groups: [res.groups.first.id],
        startDate: format.format(startDate),
        endDate: format.format(endDate),
      );

      final lessons = t2.body!;

      for (final lesson in lessons) {
        if (timetableMap.containsKey(lesson.date)) {
          timetableMap[lesson.date] = [];
        }
      }

      for (final lesson in lessons) {
        timetableMap[lesson.date] = (timetableMap[lesson.date] ?? []);
        final l = lessonConvertor.lessonByLessonFullNamesInDb(lesson: lesson);
        timetableMap[lesson.date]!.add(l);
      }
      timetable.state = timetableMap;

      events.state = eventMap.map(
        (key, value) {
          return MapEntry(
            key,
            TimetableDayEvent(
              type: timetableMap[key]?.isEmpty ?? true
                  ? TimetableDayType.weekend
                  : TimetableDayType.lessons,
            ),
          );
        },
      );
    } catch (e) {
      for (final entry in eventMap.entries) {
        if (entry.value.type == TimetableDayType.loading) {
          eventMap[entry.key] = TimetableDayEvent(type: TimetableDayType.error);
        }
      }

      events.state = eventMap;
    }

    findLastCurrentNextLesson();
  }

  void findLastCurrentNextLesson() async {
    await Future(() {});
    final currentDate = currentDateTime.state.add(const Duration(seconds: 1));

    Lesson? lessonCurrent;

    for (final date in timetable.state.keys) {
      final lessons = timetable.state[date]!;

      for (final lesson in lessons) {
        if (lesson.isEvent) continue;

        if (currentDate.isAfter(lesson.timings.startDateTime) &&
            currentDate.isBefore(lesson.timings.endDateTime)) {
          lessonCurrent = lesson;
        } else if (currentDate.isBefore(lesson.timings.startDateTime)) {
          nextLesson.state = lesson;
          currentLesson.state = lessonCurrent;
          return;
        }

        lastLesson.state = lesson;
      }
    }
  }
}
