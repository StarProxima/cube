import 'dart:async';

import 'package:cube_system/api/cube_api.dart';
import 'package:cube_system/features/timetable_page/managers/lesson_convertor.dart';
import 'package:cube_system/features/timetable_page/state_holders/selected_date.dart';
import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:cube_system/models/lesson/lesson.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:cube_system/features/timetable_page/state_holders/timetable_page_lessons.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_picked_date_in_page_view.dart';

final timetablePageManager = Provider<TimetablePageManager>((ref) {
  return TimetablePageManager(
    api: ref.watch(cubeApi),
    timetable: ref.watch(timetablePageTimetable.notifier),
    selectedDate: ref.watch(selectedDate.notifier),
    lessonConvertor: ref.watch(lessonConvertor),
    currentPickedDateInPageView:
        ref.watch(currentPickedDateInPageView.notifier),
  );
});

class TimetablePageManager {
  final CubeApi api;

  final StateController<Map<DateTime, List<Lesson>>> timetable;
  final StateController<DateTime> selectedDate;
  final StateController<DateTime> currentPickedDateInPageView;

  final LessonConvertor lessonConvertor;

  TimetablePageManager({
    required this.api,
    required this.timetable,
    required this.selectedDate,
    required this.lessonConvertor,
    required this.currentPickedDateInPageView,
  });

  Future<void> updateCurrentTimetable() async {
    final request = await api.apiLessonsAutocompleteGet(q: "36/2");

    final res = request.body!;

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
}
