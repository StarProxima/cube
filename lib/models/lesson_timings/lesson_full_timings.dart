import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'lesson_full_timings.freezed.dart';
part 'lesson_full_timings.g.dart';

@freezed
class LessonFullTimings with _$LessonFullTimings {
  @HiveType(typeId: 1)
  factory LessonFullTimings({
    @HiveField(0) required TimeOfDay start,
    @HiveField(2) required TimeOfDay end,
    @HiveField(3) required DateTime startDateTime,
    @HiveField(4) required DateTime endDateTime,
  }) = _LessonFullTimings;
}
