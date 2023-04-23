import 'dart:ui';

import 'package:cube_system/models/lesson/lesson.dart';
import 'package:cube_system/models/lesson_type/lesson_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/styles/app_lesson_colors/app_lesson_colors.dart';
import 'package:cube_system/features/settings/state_holders/app_settings_state_holder.dart';

import 'package:cube_system/features/settings/models/app_lesson_colors_mode/app_lesson_colors_mode.dart';

final appLessonColors = Provider((ref) {
  final mode = ref.watch(
    appSettingsStateHolder.select((value) => value.lessonColorsMode),
  );

  switch (mode) {
    case AppLessonColorsMode.cube:
      return AppLessonColors.cube;
    case AppLessonColorsMode.proxima:
      return AppLessonColors.proxima;
  }
});

Color? _getAppLessonColor(AppLessonColors colors, LessonType type) {
  switch (type) {
    case LessonType.lecture:
      return colors.lecture;
    case LessonType.laboratory:
      return colors.laboratory;
    case LessonType.practice:
      return colors.practice;
    case LessonType.seminar:
      return colors.seminar;
    case LessonType.additional:
      return colors.additional;
    case LessonType.ksrs:
      return colors.ksrs;
    case LessonType.recess:
      return colors.recess;
  }
}

final appLessonColorByLesson = Provider.family<Color, Lesson>((ref, lesson) {
  final colors = ref.watch(appLessonColors);
  final type = lesson.type;

  final color = _getAppLessonColor(colors, type) ?? lesson.defaultColor;

  return color;
});
