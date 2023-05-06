import 'package:cube_system/gen/api/client_index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cubeApi = Provider<CubeApi>((ref) {
  return CubeApi.create(
    baseUrl: Uri.tryParse('http://2qkhm0fz-test.api.cube.nlabs.su'),
  );
});
