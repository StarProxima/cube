import 'package:cube_system/api/cube_api.dart';
import 'package:cube_system/features/timetable_search_page/state_holders/timetable_searsh_timetables.dart';
import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:cube_system/models/timetable/timetable_info.dart';
import 'package:cube_system/models/timetable/timetable_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetableSearchPageManager = Provider<TimetableSearchPageManager>((ref) {
  return TimetableSearchPageManager(
    api: ref.watch(cubeApi),
    timetables: ref.watch(timetableSearshTimetables.notifier),
  );
});

class TimetableSearchPageManager {
  final CubeApi api;

  final StateController<List<TimetableInfo>> timetables;

  TimetableSearchPageManager({
    required this.api,
    required this.timetables,
  });

  void search(String querry) async {
    await Future(() {});

    final response = await api.apiLessonsAutocompleteGet(q: querry);

    final res = response.body!;

    final List<TimetableInfo> timetablesList = [];

    for (final group in res.groups) {
      timetablesList.add(
        TimetableInfo(
          id: group.id,
          label: group.name,
          type: TimetableType.group,
        ),
      );
    }

    for (final teacher in res.teachers) {
      timetablesList.add(
        TimetableInfo(
          id: teacher.id,
          label: teacher.name,
          type: TimetableType.teacher,
        ),
      );
    }

    for (final place in res.places) {
      timetablesList.add(
        TimetableInfo(
          id: place.id,
          label: place.name,
          type: TimetableType.place,
        ),
      );
    }

    timetables.state = timetablesList;
  }
}
