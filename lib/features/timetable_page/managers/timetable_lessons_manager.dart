import 'dart:collection';

import 'package:cube_system/features/timetable_page/managers/timetable_day_event_manager.dart';
import 'package:cube_system/models/timetable/timetable_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/api/cube_api.dart';
import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:cube_system/models/lesson/lesson.dart';
import 'package:cube_system/models/timetable_day/timetable_day_event.dart';
import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';
import 'package:cube_system/features/timetable_page/state_holders/lessons/current_lesson.dart';
import 'package:cube_system/features/timetable_page/state_holders/lessons/last_lesson.dart';
import 'package:cube_system/features/timetable_page/state_holders/lessons/next_lesson.dart';
import 'package:cube_system/features/timetable_page/state_holders/selected_date.dart';
import 'package:cube_system/features/timetable_page/state_holders/timetable_page_events.dart';
import 'package:cube_system/features/timetable_page/state_holders/timetable_page_lessons.dart';
import 'package:cube_system/features/timetable_page/managers/lesson_convertor.dart';
import 'package:intl/intl.dart';

import 'package:cube_system/features/timetable_page/state_holders/selected_timetable.dart';

final timetableLessonsManager = Provider<TimetableLessonsManager>((ref) {
  return TimetableLessonsManager(
    api: ref.watch(cubeApi),
    lessonConvertor: ref.watch(lessonConvertor),
    eventManager: ref.watch(timetableDayEventManager),
    selectedTimetable: ref.watch(selectedTimetableStateHolder.notifier),
    timetable: ref.watch(timetablePageLessons.notifier),
    events: ref.watch(timetablePageLessonEvents.notifier),
    currentDateTime: ref.watch(currentDateTimeQuick.notifier),
    selectedDate: ref.watch(selectedDate.notifier),
    currentLesson: ref.watch(currentLesson.notifier),
    nextLesson: ref.watch(nextLesson.notifier),
    lastLesson: ref.watch(lastLesson.notifier),
  );
});

class TimetableLessonsManager {
  final CubeApi api;
  final LessonConvertor lessonConvertor;
  final TimetableDayEventManager eventManager;

  final SelectedTimetableNotifier selectedTimetable;
  final TimetablePageLessonsNotifier timetable;
  final StateController<SplayTreeMap<DateTime, TimetableDayEvent>> events;
  final StateController<DateTime> currentDateTime;
  final StateController<DateTime> selectedDate;
  final StateController<Lesson?> currentLesson;
  final StateController<Lesson?> nextLesson;
  final StateController<Lesson?> lastLesson;

  TimetableLessonsManager({
    required this.api,
    required this.lessonConvertor,
    required this.eventManager,
    required this.selectedTimetable,
    required this.timetable,
    required this.events,
    required this.currentDateTime,
    required this.selectedDate,
    required this.currentLesson,
    required this.nextLesson,
    required this.lastLesson,
  });

  void clear() {
    timetable.change(SplayTreeMap());
    events.state = SplayTreeMap();
  }

  Future<List<LessonFullNamesInDb>> _getLessons({
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final format = DateFormat('yyyy-MM-dd');

    final timetable = selectedTimetable.state;

    if (timetable == null) return [];

    final lessonResponse = await api.apiLessonsGet(
      fullData: true,
      groups: timetable.type == TimetableType.group ? [timetable.id] : null,
      teachers: timetable.type == TimetableType.teacher ? [timetable.id] : null,
      places: timetable.type == TimetableType.place ? [timetable.id] : null,
      startDate: format.format(startDate),
      endDate: format.format(endDate),
    );

    return lessonResponse.body!;
  }

  void _setLessons(List<LessonFullNamesInDb> lessons) {
    TimetableLessons timetableMap = SplayTreeMap.of(timetable.state.cast());

    for (final lesson in lessons) {
      timetableMap[lesson.date] = [];
    }

    for (int i = 0; i < lessons.length; i++) {
      final lesson = lessons[i];
      int emptyLessonsBefore = 0;
      if (i > 0 && lessons[i - 1].date == lesson.date) {
        emptyLessonsBefore = lesson.number - lessons[i - 1].number - 1;
      }
      final l = lessonConvertor.lessonByLessonFullNamesInDb(
        lesson: lesson,
        emptyLessonsBefore: emptyLessonsBefore,
      );

      timetableMap[lesson.date]!.add(l);
    }

    timetable.change(timetableMap);
  }

  Future<void> updateCurrentTimetable() async {
    await Future(() {});

    final date = selectedDate.state;

    final dayOffset = date.weekday - 1;
    final weekStart = date.add(Duration(days: -dayOffset));
    final weekEnd = date.add(Duration(days: 6 - dayOffset));

    final startDate = weekStart.add(const Duration(days: -7));
    final endDate = weekEnd.add(const Duration(days: 7));

    if (selectedTimetable.state == null) {
      eventManager.setNotSelectedEvents(
        startDate: startDate,
        endDate: endDate,
      );
      return;
    }

    eventManager.setLoadingEvents(startDate: startDate, endDate: endDate);

    try {
      await Future.delayed(const Duration(milliseconds: 350));

      final lessons = await _getLessons(startDate: startDate, endDate: endDate);

      _setLessons(lessons);

      eventManager.setLessonsAfterLoading();
    } catch (e) {
      eventManager.setErrorsAfterLoading();
    }

    findLastCurrentNextLesson();
  }

  void findLastCurrentNextLesson() async {
    await Future(() {});
    final currentDate = currentDateTime.state.add(const Duration(seconds: 1));

    Lesson? lessonCurrent;
    Lesson? lessonLast;

    final dates = timetable.state.keys;

    for (final date in dates) {
      final lessons = timetable.state[date]!;

      for (final lesson in lessons) {
        if (lesson.isEvent) continue;

        if (currentDate.isAfter(lesson.timings.startDateTime) &&
            currentDate.isBefore(lesson.timings.endDateTime)) {
          lessonCurrent = lesson;
        } else if (currentDate.isBefore(lesson.timings.startDateTime)) {
          nextLesson.state = lesson;
          currentLesson.state = lessonCurrent;
          lastLesson.state = lessonLast;
          return;
        }

        lessonLast = lesson;
      }
    }
  }
}
