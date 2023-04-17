import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'lesson_timings.freezed.dart';
part 'lesson_timings.g.dart';

@freezed
class LessonTimings with _$LessonTimings {
  @HiveType(typeId: 2)
  factory LessonTimings({
    @HiveField(0) required TimeOfDay start,
    @HiveField(1) required TimeOfDay end,
  }) = _LessonTimings;
}
