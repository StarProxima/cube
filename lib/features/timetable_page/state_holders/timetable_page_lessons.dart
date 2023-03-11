import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetablePageDayLessons =
    Provider.family<List<LessonFullNamesInDb>, DateTime>((ref, date) {
  return ref.watch(timetablePageTimetable)[date] ?? [];
});

final timetablePageTimetable =
    StateProvider<Map<DateTime, List<LessonFullNamesInDb>>>((ref) {
  return {};
});
