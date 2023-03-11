import 'package:cube_system/api/cube_api.dart';
import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state_holders/timetable_page_lessons.dart';

final timetablePageManager = Provider<TimetablePageManager>((ref) {
  return TimetablePageManager(
    api: ref.watch(cubeApi),
    timetable: ref.watch(timetablePageTimetable.notifier),
  );
});

class TimetablePageManager {
  final CubeApi api;

  final StateController<Map<DateTime, List<LessonFullNamesInDb>>> timetable;

  TimetablePageManager({
    required this.api,
    required this.timetable,
  });

  Future<void> getCurrentTimetable() async {
    final request = await api.apiLessonsAutocompleteGet(q: "36/2");
    final res = request.body!;

    final t2 = await api.apiLessonsGet(
      fullData: true,
      groups: [res.groups.first.id],
      startDate: '2023-03-01',
      endDate: '2023-03-20',
    );

    final lessons = t2.body!;

    Map<DateTime, List<LessonFullNamesInDb>> map = {};
    for (final lesson in lessons) {
      map[lesson.date] = (map[lesson.date] ?? []);
      map[lesson.date]!.add(lesson);
    }

    timetable.state = map;
  }
}
