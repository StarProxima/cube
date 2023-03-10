import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetablePageLessons = StateProvider<List<LessonFullNamesInDb>>((ref) {
  return [];
});
