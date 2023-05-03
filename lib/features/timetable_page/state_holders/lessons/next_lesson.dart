import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/models/lesson/lesson.dart';

final nextLessonStateHolder = StateProvider<Lesson?>((ref) {
  return null;
});
