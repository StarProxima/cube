import 'package:cube_system/api/cube_api.dart';
import 'package:cube_system/gen/api/client_index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetablePageManager = Provider<TimetablePageManager>((ref) {
  return TimetablePageManager(
    api: ref.watch(cubeApi),
  );
});

class TimetablePageManager {
  final CubeApi api;

  TimetablePageManager({required this.api});

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

    return;
  }
}
