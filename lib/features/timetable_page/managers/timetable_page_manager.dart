import 'package:cube_system/features/timetable_page/managers/timetable_lessons_manager.dart';
import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';
import 'package:cube_system/features/timetable_page/state_holders/selected_date.dart';
import 'package:cube_system/models/timetable/timetable_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_picked_date_in_page_view.dart';

import 'package:cube_system/features/timetable_page/state_holders/selected_timetable.dart';

final timetablePageManager = Provider<TimetablePageManager>((ref) {
  return TimetablePageManager(
    lessonsManager: ref.watch(timetableLessonsManager),
    selectedTimetable: ref.watch(selectedTimetable.notifier),
    currentDateTime: ref.watch(currentDateTimeQuick.notifier),
    selectedDate: ref.watch(selectedDate.notifier),
    currentPickedDateInPageView:
        ref.watch(currentPickedDateInPageView.notifier),
  );
});

class TimetablePageManager {
  final TimetableLessonsManager lessonsManager;

  final StateController<TimetableInfo?> selectedTimetable;
  final StateController<DateTime> currentDateTime;
  final StateController<DateTime> selectedDate;
  final StateController<DateTime> currentPickedDateInPageView;

  TimetablePageManager({
    required this.lessonsManager,
    required this.selectedTimetable,
    required this.currentDateTime,
    required this.selectedDate,
    required this.currentPickedDateInPageView,
  });

  void selectTimetable(TimetableInfo timetable) {
    selectedTimetable.state = timetable;
    lessonsManager.clear();
    lessonsManager.updateCurrentTimetable();
  }

  void updateCurrentTimetable() => lessonsManager.updateCurrentTimetable();

  void findLastCurrentNextLesson() =>
      lessonsManager.findLastCurrentNextLesson();

  void selectDate(DateTime newDate) {
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
      selectDate(newDate);
    }
  }
}
