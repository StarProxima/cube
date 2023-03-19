import 'package:cube_system/api/cube_api.dart';
import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetableSearchPageManager = Provider<TimetableSearchPageManager>((ref) {
  return TimetableSearchPageManager(
    api: ref.watch(cubeApi),
  );
});

class TimetableSearchPageManager {
  final CubeApi api;

  TimetableSearchPageManager({
    required this.api,
  });
}
