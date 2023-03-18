import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_lesson_colors.tailor.dart';

@Tailor(
  themes: ['cube', 'custom'],
  themeGetter: ThemeGetter.none,
)
class _$AppLessonColors {
  static List<Color?> lecture = [null, Colors.orange];
  static List<Color?> laboratory = [null, Colors.indigo];
  static List<Color?> practice = [null, Colors.blueGrey];
  static List<Color?> seminar = [null, Colors.lightBlue];
  static List<Color?> ksrs = [null, Colors.grey[400]!];
  static List<Color?> additional = [null, Colors.pink];
}
