import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_text_styles.tailor.dart';

@Tailor(
  themes: ['light'],
  themeGetter: ThemeGetter.none,
)
class _$AppTextStyles {
  static const _textColor = Color(0xFF2B2B2B);
  static const _textColorBlue = Color(0xFF47A4F2);

  static List<TextStyle> largeTitle = [
    GoogleFonts.montserrat(
      fontSize: 32,
      fontWeight: FontWeight.w900,
      color: _textColor,
    ),
  ];
}
