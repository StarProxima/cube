import 'package:cube_system/models/lesson/lesson.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// TODO: Объеденить current, next, last в один stateHolder
// TODO: Возможно, стоит хранить не Lesson, a LessonDateTimings и LessonTimings

final currentLessonStateHolder = StateProvider<Lesson?>((ref) {
  return null;
});
