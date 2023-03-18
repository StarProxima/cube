import 'package:cube_system/gen/api/client_index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cubeApi = Provider<CubeApi>((ref) {
  return CubeApi.create(
    baseUrl: Uri.tryParse('https://api.cube.nlabs.su/'),
  );
});
