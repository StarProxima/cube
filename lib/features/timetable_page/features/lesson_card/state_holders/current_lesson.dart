import 'package:cube_system/models/lesson/lesson.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentLesson = StateProvider<Lesson?>((ref) {
  return null;
});
