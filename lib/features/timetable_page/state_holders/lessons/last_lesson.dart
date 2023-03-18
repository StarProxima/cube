import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/models/lesson/lesson.dart';

final lastLesson = StateProvider<Lesson?>((ref) {
  return null;
});
