import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:cube_system/models/lesson_timings/lesson_full_timings.dart';

import 'package:cube_system/models/lesson_type/lesson_type.dart';

part 'lesson.freezed.dart';

@freezed
class Lesson with _$Lesson {
  factory Lesson({
    required int number,
    required LessonFullTimings timings,
    required LessonType type,
    required String typeShortName,
    required String? disciplineName,
    required String? place,
    required List<String> groupNames,
    required List<String> teacherNames,
    required bool isRemotely,
    required bool isElective,
    required bool isEvent,
    required Color defaultColor,
    required int emptyLessonsBefore,
  }) = _Lesson;
}
