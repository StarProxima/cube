import 'dart:async';

import 'package:cube_system/api/cube_api.dart';
import 'package:cube_system/features/timetable_page/managers/lesson_convertor.dart';
import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';
import 'package:cube_system/features/timetable_page/state_holders/selected_date.dart';
import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:cube_system/models/lesson/lesson.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:cube_system/features/timetable_page/state_holders/timetable_page_lessons.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_picked_date_in_page_view.dart';

import 'package:cube_system/features/timetable_page/state_holders/timetable_page_title.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/state_holders/lesson_card_expected_next_lesson.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/state_holders/lesson_card_active_lesson.dart';

final timetablePageManager = Provider<TimetablePageManager>((ref) {
  return TimetablePageManager(
    api: ref.watch(cubeApi),
    lessonConvertor: ref.watch(lessonConvertor),
    timetable: ref.watch(timetablePageTimetable.notifier),
    currentDateTime: ref.watch(currentDateTimeQuick.notifier),
    selectedDate: ref.watch(selectedDate.notifier),
    currentPickedDateInPageView:
        ref.watch(currentPickedDateInPageView.notifier),
    timetablePageTitle: ref.watch(timetablePageTitle.notifier),
    lessonCardActiveLesson: ref.watch(lessonCardActiveLesson.notifier),
    lessonCardExpectedNextLesson:
        ref.watch(lessonCardExpectedNextLesson.notifier),
    lessonCardLastLesson: ref.watch(lessonCardLastLesson.notifier),
  );
});

class TimetablePageManager {
  final CubeApi api;
  final LessonConvertor lessonConvertor;

  final StateController<Map<DateTime, List<Lesson>>> timetable;
  final StateController<DateTime> currentDateTime;
  final StateController<DateTime> selectedDate;
  final StateController<DateTime> currentPickedDateInPageView;
  final StateController<String> timetablePageTitle;
  final StateController<Lesson?> lessonCardActiveLesson;
  final StateController<Lesson?> lessonCardExpectedNextLesson;
  final StateController<Lesson?> lessonCardLastLesson;

  TimetablePageManager({
    required this.api,
    required this.lessonConvertor,
    required this.timetable,
    required this.currentDateTime,
    required this.selectedDate,
    required this.currentPickedDateInPageView,
    required this.timetablePageTitle,
    required this.lessonCardActiveLesson,
    required this.lessonCardExpectedNextLesson,
    required this.lessonCardLastLesson,
  });

  Future<void> updateCurrentTimetable() async {
    final request = await api.apiLessonsAutocompleteGet(q: "36/2");

    final res = request.body!;

    timetablePageTitle.state = res.groups.first.name;

    final date = selectedDate.state;

    final dayOffset = date.weekday - 1;
    final weekStart = date.add(Duration(days: -dayOffset));
    final weekEnd = date.add(Duration(days: 6 - dayOffset));

    final startDate = weekStart.add(const Duration(days: -7));

    final endDate = weekEnd.add(const Duration(days: 7));

    final format = DateFormat('yyyy-MM-dd');

    final t2 = await api.apiLessonsGet(
      fullData: true,
      groups: [res.groups.first.id],
      startDate: format.format(startDate),
      endDate: format.format(endDate),
    );

    final lessons = t2.body!;

    Map<DateTime, List<Lesson>> map = {};
    for (final lesson in lessons) {
      map[lesson.date] = (map[lesson.date] ?? []);
      final l = lessonConvertor.lessonByLessonFullNamesInDb(lesson: lesson);
      map[lesson.date]!.add(l);
    }

    timetable.state = map;
  }

  void pickSelectedDate(DateTime newDate) {
    final date = selectedDate.state;
    selectedDate.state = newDate;

    final dayOffset = date.weekday - 1;
    final weekStart = date.add(Duration(days: -dayOffset));
    final weekEnd = date.add(Duration(days: 6 - dayOffset));

    if (newDate.isBefore(weekStart) || newDate.isAfter(weekEnd)) {
      updateCurrentTimetable();
    }
  }

  void handlePageViewChange(DateTime newDate) {
    final lastDate = currentPickedDateInPageView.state;
    currentPickedDateInPageView.state = newDate;

    //Если предыщая дата является выбранной, то мы меняем страницу с помощью свайпа,
    //поэтому нужно обновить выбранную дату, иначе дата выбирается виджетом WeekTime
    if (lastDate == selectedDate.state) {
      pickSelectedDate(newDate);
    }
  }

  void findExpectedNextLesson() {
    final curdateTime = currentDateTime.state;
    final currentDate = DateUtils.dateOnly(curdateTime);

    for (final date in timetable.state.keys) {
      final lessons = timetable.state[date]!;

      for (final lesson in lessons) {
        if (lesson.isEvent) continue;

        final lessonStart = lesson.timings.start;
        final lessonStartDateTime = date.add(
          Duration(hours: lessonStart.hour, minutes: lessonStart.minute),
        );

        if (curdateTime.isBefore(lessonStartDateTime)) {
          lessonCardExpectedNextLesson.state = lesson;
          return;
        }

        lessonCardLastLesson.state = lesson;
      }
    }
  }
}
