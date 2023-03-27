import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_full_timings.freezed.dart';

@freezed
class LessonFullTimings with _$LessonFullTimings {
  factory LessonFullTimings({
    required TimeOfDay start,
    required TimeOfDay end,
    required DateTime startDateTime,
    required DateTime endDateTime,
  }) = _LessonFullTimings;
}
