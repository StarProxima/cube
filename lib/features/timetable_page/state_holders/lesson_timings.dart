import 'package:cube_system/models/lesson_timings/lesson_timings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lessonTimings = StateProvider<Map<int, LessonTimings>>((ref) {
  return {
    0: LessonTimings(
      start: const TimeOfDay(hour: 8, minute: 0),
      end: const TimeOfDay(hour: 20, minute: 0),
    ),
    1: LessonTimings(
      start: const TimeOfDay(hour: 8, minute: 0),
      end: const TimeOfDay(hour: 9, minute: 20),
    ),
    2: LessonTimings(
      start: const TimeOfDay(hour: 9, minute: 30),
      end: const TimeOfDay(hour: 10, minute: 50),
    ),
    3: LessonTimings(
      start: const TimeOfDay(hour: 11, minute: 10),
      end: const TimeOfDay(hour: 12, minute: 30),
    ),
    4: LessonTimings(
      start: const TimeOfDay(hour: 12, minute: 40),
      end: const TimeOfDay(hour: 14, minute: 0),
    ),
    5: LessonTimings(
      start: const TimeOfDay(hour: 14, minute: 10),
      end: const TimeOfDay(hour: 15, minute: 30),
    ),
    6: LessonTimings(
      start: const TimeOfDay(hour: 15, minute: 40),
      end: const TimeOfDay(hour: 17, minute: 0),
    ),
    7: LessonTimings(
      start: const TimeOfDay(hour: 17, minute: 10),
      end: const TimeOfDay(hour: 18, minute: 30),
    ),
  };
});
