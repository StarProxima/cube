import 'package:cube_system/models/timetable/timetable_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetableSearshTimetables = StateProvider<List<TimetableInfo>>((ref) {
  return [];
});
