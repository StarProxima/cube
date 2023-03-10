import 'package:cube_system/api/cube_api.dart';
import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state_holders/timetable_page_lessons.dart';

final timetablePageManager = Provider<TimetablePageManager>((ref) {
  return TimetablePageManager(
    api: ref.watch(cubeApi),
    timetablePageLessons: ref.watch(timetablePageLessons.notifier),
  );
});

class TimetablePageManager {
  final CubeApi api;
  final StateController<List<LessonFullNamesInDb>> timetablePageLessons;

  TimetablePageManager({
    required this.api,
    required this.timetablePageLessons,
  });

  Future<void> getCurrentTimetable() async {
    final request = await api.apiLessonsAutocompleteGet(q: "36/2");
    final res = request.body!;

    final t2 = await api.apiLessonsGet(
      fullData: true,
      groups: [res.groups.first.id],
      startDate: '2023-03-11',
      endDate: '2023-03-11',
    );

    final res2 = t2.body!;

    timetablePageLessons.state = res2;
  }
}
