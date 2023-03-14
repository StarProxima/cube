import 'dart:ui';

import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:cube_system/styles/app_lesson_colors/app_lesson_colors.dart';
import 'package:cube_system/styles/app_theme_state_holders/app_lesson_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/models/lesson/lesson.dart';

import 'package:cube_system/models/lesson_timings/lesson_timings.dart';
import 'package:cube_system/features/timetable_page/state_holders/pairs_timings.dart';

final lessonConvertor = Provider<LessonConvertor>((ref) {
  return LessonConvertor(
    lessonTimings: ref.watch(pairsTimings.notifier),
    lessonColors: ref.watch(appLessonColors.notifier),
  );
});

class LessonConvertor {
  final StateController<Map<int, LessonTimings>> lessonTimings;
  final StateController<AppLessonColors> lessonColors;

  LessonConvertor({
    required this.lessonTimings,
    required this.lessonColors,
  });

  Lesson lessonByLessonFullNamesInDb({
    required LessonFullNamesInDb lesson,
  }) {
    final number = lesson.number;

    final timings = lessonTimings.state[number]!;

    Color? color;

    final colors = lessonColors.state;

    bool isEvent = false;

    switch (lesson.type.shortName) {
      case 'ЛК':
        color = colors.lecture;
        break;
      case 'ЛР':
        color = colors.laboratory;
        break;
      case 'ПР':
        color = colors.practice;
        break;
      case 'СМ':
        color = colors.seminar;
        break;
      case 'КСРС':
        color = colors.ksrs;
        isEvent = true;
        break;
      case 'ДП':
        color = colors.additional;
        break;
    }

    color ??= Color(
      int.parse(lesson.type.color.substring(1, 7), radix: 16) + 0xFF000000,
    );

    final newLesson = Lesson(
      lesson: lesson,
      timings: timings,
      color: color,
      fadedColor: color.withOpacity(0.5),
      isEvent: isEvent,
    );

    return newLesson;
  }
}
