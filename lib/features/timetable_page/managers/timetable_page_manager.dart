import 'package:cube_system/api/cube_api.dart';
import 'package:cube_system/features/timetable_page/managers/lesson_convertor.dart';
import 'package:cube_system/features/timetable_page/managers/timetable_lessons_manager.dart';
import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';
import 'package:cube_system/features/timetable_page/state_holders/selected_date.dart';
import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:cube_system/models/lesson/lesson.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/timetable_page_lessons.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_picked_date_in_page_view.dart';

import 'package:cube_system/features/timetable_page/state_holders/timetable_page_title.dart';

import 'package:cube_system/features/timetable_page/state_holders/lessons/next_lesson.dart';

import 'package:cube_system/features/timetable_page/state_holders/lessons/current_lesson.dart';

import 'package:cube_system/features/timetable_page/state_holders/lessons/last_lesson.dart';

import 'package:cube_system/models/timetable_day/timetable_day_event.dart';
import 'package:cube_system/features/timetable_page/state_holders/timetable_page_events.dart';

final timetablePageManager = Provider<TimetablePageManager>((ref) {
  return TimetablePageManager(
    api: ref.watch(cubeApi),
    lessonConvertor: ref.watch(lessonConvertor),
    lessonsManager: ref.watch(timetableLessonsManager),
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

class TimetablePageManager {
  final CubeApi api;
  final LessonConvertor lessonConvertor;
  final TimetableLessonsManager lessonsManager;

  final StateController<Map<DateTime, List<Lesson>>> timetable;
  final StateController<Map<DateTime, TimetableDayEvent>> events;
  final StateController<DateTime> currentDateTime;
  final StateController<DateTime> selectedDate;
  final StateController<DateTime> currentPickedDateInPageView;
  final StateController<String> timetablePageTitle;
  final StateController<Lesson?> currentLesson;
  final StateController<Lesson?> nextLesson;
  final StateController<Lesson?> lastLesson;

  TimetablePageManager({
    required this.api,
    required this.lessonConvertor,
    required this.lessonsManager,
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

  void updateCurrentTimetable() => lessonsManager.updateCurrentTimetable();

  void findLastCurrentNextLesson() =>
      lessonsManager.findLastCurrentNextLesson();

  void pickSelectedDate(DateTime newDate) {
    final date = selectedDate.state;
    selectedDate.state = newDate;

    final dayOffset = date.weekday - 1;
    final weekStart = date.add(Duration(days: -dayOffset));
    final weekEnd = date.add(Duration(days: 6 - dayOffset));

    if (newDate.isBefore(weekStart) || newDate.isAfter(weekEnd)) {
      lessonsManager.updateCurrentTimetable();
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
