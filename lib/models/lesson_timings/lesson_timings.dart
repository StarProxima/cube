import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_timings.freezed.dart';

@freezed
class LessonTimings with _$LessonTimings {
  factory LessonTimings({
    required TimeOfDay start,
    required TimeOfDay end,
  }) = _LessonTimings;
}
