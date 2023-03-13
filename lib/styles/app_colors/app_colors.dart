import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_colors.tailor.dart';

@Tailor(
  themes: ['light'],
  themeGetter: ThemeGetter.none,
)
class _$AppColors {
  static List<Color> white = [Colors.white];
  static List<Color> card = [Colors.blueGrey[50]!];
  static List<Color> text = [const Color(0xFF2B2B2B)];
  static List<Color> subduedText = [const Color.fromARGB(255, 109, 109, 109)];
}
