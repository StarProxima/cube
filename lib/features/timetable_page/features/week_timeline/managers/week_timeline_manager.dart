import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';

import 'package:cube_system/features/timetable_page/features/week_timeline/state_holders/week_timeline_shown_week_date.dart';

final weekTimelineManager = Provider<WeekTimelineManager>((ref) {
  return WeekTimelineManager(
    timetableManager: ref.watch(timetablePageManager),
    currentDate: ref.watch(currentDate.notifier),
    shownWeekDate: ref.watch(weekTimelineShownWeekDate.notifier),
  );
});

class WeekTimelineManager {
  final TimetablePageManager timetableManager;
  final StateController<DateTime> currentDate;
  final StateController<DateTime> shownWeekDate;
  WeekTimelineManager({
    required this.timetableManager,
    required this.currentDate,
    required this.shownWeekDate,
  });

  void pickSelectedDate(DateTime date) {
    timetableManager.pickSelectedDate(date);
  }

  Future<void> setShownWeekDate(DateTime weekDate) async {
    await Future(() {});
    shownWeekDate.state = weekDate;
  }

  int calculateWeekOffset(DateTime newSelectedDate) {
    final date = currentDate.state;

    final offset = newSelectedDate.difference(date);

    final weekDay = date.weekday - 1;

    final offsetFromStartWeekInDays = Duration(
      days: weekDay + offset.inDays,
    ).inDays;

    final int offsetInWeeks;

    if (offsetFromStartWeekInDays >= 0) {
      offsetInWeeks = offsetFromStartWeekInDays ~/ 7;
    } else {
      offsetInWeeks = (offsetFromStartWeekInDays - 6) ~/ 7;
    }

    return offsetInWeeks;
  }
}
