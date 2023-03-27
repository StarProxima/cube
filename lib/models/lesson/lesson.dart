import 'dart:ui';

import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:cube_system/models/lesson_timings/lesson_full_timings.dart';

part 'lesson.freezed.dart';

@freezed
class Lesson with _$Lesson {
  factory Lesson({
    required LessonFullNamesInDb lesson,
    required int emptyLessonsBefore,
    required LessonFullTimings timings,
    required Color color,
    required Color fadedColor,
    required bool isEvent,
  }) = _Lesson;
}
