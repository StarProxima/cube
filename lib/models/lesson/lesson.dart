import 'dart:ui';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cube_system/models/lesson_timings/lesson_date_timings.dart';
import 'package:cube_system/models/lesson_type/lesson_type.dart';
import 'package:hive/hive.dart';

import 'package:cube_system/models/lesson_timings/lesson_timings.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

@freezed
class Lesson with _$Lesson {
  @HiveType(typeId: 0)
  factory Lesson({
    @HiveField(0) required int number,
    @HiveField(1) required LessonTimings timings,
    @HiveField(2) required LessonDateTimings dateTimings,
    @HiveField(3) required LessonType type,
    @HiveField(4) required String typeShortName,
    @HiveField(5) required String? disciplineName,
    @HiveField(6) required String? place,
    @HiveField(7) required List<String> groupNames,
    @HiveField(8) required List<String> teacherNames,
    @HiveField(9) required bool isRemotely,
    @HiveField(10) required bool isElective,
    @HiveField(11) required bool isEvent,
    @HiveField(14, defaultValue: false) required bool isCollision,
    @HiveField(15, defaultValue: false) required bool isCancelled,
    @HiveField(12) required Color defaultColor,
    @HiveField(13) required int emptyLessonsBefore,
  }) = _Lesson;
}
