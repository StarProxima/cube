import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_colors.tailor.dart';

@Tailor(
  themes: ['light'],
  themeGetter: ThemeGetter.none,
)
class _$AppColors {
  static List<Color> primary = [const Color(0xFF38a1ff)];
  static List<Color> transperent = [const Color(0x00000000)];
  static List<Color> white = [Colors.white];
  static List<Color> card = [Colors.blueGrey[50]!];
  static List<Color> text = [const Color(0xFF2B2B2B)];
  static List<Color> hintText = [const Color.fromARGB(255, 161, 161, 161)];
  static List<Color> subduedText = [const Color.fromARGB(255, 109, 109, 109)];
  static List<Color> border = [const Color.fromARGB(255, 191, 192, 197)];
  static List<Color> subduedBorder = [const Color(0xFFDEE2F5)];
  static List<Color> shadow = [const Color.fromARGB(50, 131, 136, 162)];
}
