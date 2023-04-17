import 'dart:ui';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cube_system/models/lesson_timings/lesson_full_timings.dart';
import 'package:cube_system/models/lesson_type/lesson_type.dart';
import 'package:hive/hive.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

@freezed
class Lesson with _$Lesson {
  @HiveType(typeId: 0)
  factory Lesson({
    @HiveField(0) required int number,
    @HiveField(1) required LessonFullTimings timings,
    @HiveField(2) required LessonType type,
    @HiveField(3) required String typeShortName,
    @HiveField(4) required String? disciplineName,
    @HiveField(5) required String? place,
    @HiveField(6) required List<String> groupNames,
    @HiveField(7) required List<String> teacherNames,
    @HiveField(8) required bool isRemotely,
    @HiveField(9) required bool isElective,
    @HiveField(10) required bool isEvent,
    @HiveField(11) required Color defaultColor,
    @HiveField(12) required int emptyLessonsBefore,
  }) = _Lesson;
}
