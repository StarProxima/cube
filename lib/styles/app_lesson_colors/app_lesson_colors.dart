import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_lesson_colors.tailor.dart';

@Tailor(
  themes: ['cube', 'proxima'],
  themeGetter: ThemeGetter.none,
)
class _$AppLessonColors {
  static List<Color?> lecture = [null, Colors.orange];
  static List<Color?> laboratory = [null, Colors.indigo];
  static List<Color?> practice = [null, const Color.fromARGB(255, 0, 184, 147)];
  static List<Color?> seminar = [null, Colors.lightBlue];
  static List<Color?> additional = [null, Colors.pink];
  static List<Color?> ksrs = [null, Colors.grey[400]!];
  static List<Color?> recess = [Colors.blueGrey[200], Colors.blueGrey];
}
