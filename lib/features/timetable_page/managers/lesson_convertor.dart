import 'dart:ui';

import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:cube_system/models/lesson_timings/lesson_full_timings.dart';
import 'package:cube_system/styles/app_lesson_colors/app_lesson_colors.dart';
import 'package:cube_system/styles/app_theme_state_holders/app_lesson_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/models/lesson/lesson.dart';

import 'package:cube_system/models/lesson_timings/lesson_timings.dart';
import 'package:cube_system/features/timetable_page/state_holders/lesson_timings.dart';

final lessonConvertor = Provider<LessonConvertor>((ref) {
  return LessonConvertor(
    lessonTimings: ref.watch(lessonTimings.notifier),
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

    final date = lesson.date;

    final timings = lessonTimings.state[number]!;

    final fullTiminigs = LessonFullTimings(
      start: timings.start,
      end: timings.end,
      startDateTime: date.add(
        Duration(hours: timings.start.hour, minutes: timings.start.minute),
      ),
      endDateTime: date.add(
        Duration(hours: timings.end.hour, minutes: timings.end.minute),
      ),
    );

    final newLesson = Lesson(
      lesson: lesson,
      timings: fullTiminigs,
      color: color,
      fadedColor: color.withOpacity(0.6),
      isEvent: isEvent,
    );

    return newLesson;
  }
}
