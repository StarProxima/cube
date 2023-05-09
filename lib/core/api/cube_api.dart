import 'package:cube_system/gen/api/client_index.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cubeApi = Provider<CubeApi>((ref) {
  final url = dotenv.env['CUBE_API_BASE_URL'];

  if (url == null) throw Exception('CUBE_API_BASE_URL is not defined');

  return CubeApi.create(baseUrl: Uri.tryParse(url));
});
