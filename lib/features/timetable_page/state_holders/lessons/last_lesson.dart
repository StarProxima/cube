import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/models/lesson/lesson.dart';

final lastLessonStateHolder = StateProvider<Lesson?>((ref) {
  return null;
});
