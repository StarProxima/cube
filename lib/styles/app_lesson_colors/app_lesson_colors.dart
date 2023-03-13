import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_lesson_colors.tailor.dart';

@Tailor(
  themes: ['light'],
  themeGetter: ThemeGetter.none,
)
class _$AppLessonColors {
  static List<Color> lecture = [Colors.amber];
  static List<Color> laboratory = [Colors.teal];
  static List<Color> practice = [Colors.blueGrey];
  static List<Color> seminar = [Colors.lightBlue];
  static List<Color> ksrs = [Colors.grey[400]!];
  static List<Color> additional = [Colors.pink];
}
