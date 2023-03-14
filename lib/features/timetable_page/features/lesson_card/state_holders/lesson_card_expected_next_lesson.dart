import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/models/lesson/lesson.dart';

final lessonCardExpectedNextLesson = StateProvider<Lesson?>((ref) {
  return null;
});

final lessonCardLastLesson = StateProvider<Lesson?>((ref) {
  return null;
});
