import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final weekTimelineManager = Provider<WeekTimelineManager>((ref) {
  return WeekTimelineManager(
    timetableManager: ref.watch(timetablePageManager),
  );
});

class WeekTimelineManager {
  final TimetablePageManager timetableManager;

  WeekTimelineManager({
    required this.timetableManager,
  });

  void pickSelectedDate(DateTime date) {
    timetableManager.pickSelectedDate(date);
  }
}
