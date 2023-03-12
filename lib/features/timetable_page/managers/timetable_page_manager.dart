import 'dart:async';

import 'package:cube_system/api/cube_api.dart';
import 'package:cube_system/features/timetable_page/state_holders/timetable_page_selected_date.dart';
import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:cube_system/features/timetable_page/state_holders/timetable_page_lessons.dart';

final timetablePageManager = Provider<TimetablePageManager>((ref) {
  return TimetablePageManager(
    api: ref.watch(cubeApi),
    timetable: ref.watch(timetablePageTimetable.notifier),
    selectedDate: ref.watch(timetablePageSelectedDate.notifier),
  );
});

class TimetablePageManager {
  final CubeApi api;

  final StateController<Map<DateTime, List<LessonFullNamesInDb>>> timetable;
  final StateController<DateTime> selectedDate;

  TimetablePageManager({
    required this.api,
    required this.timetable,
    required this.selectedDate,
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

    Map<DateTime, List<LessonFullNamesInDb>> map = {};
    for (final lesson in lessons) {
      map[lesson.date] = (map[lesson.date] ?? []);
      map[lesson.date]!.add(lesson);
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
}
