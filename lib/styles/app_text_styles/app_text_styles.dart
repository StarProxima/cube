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

  static List<TextStyle> appBarTitle = [
    GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: _textColor,
    ),
  ];

  static List<TextStyle> largeTitle = [
    GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: _textColor,
    ),
  ];

  static List<TextStyle> subTitle = [
    GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: _textColor,
    ),
  ];

  static List<TextStyle> smallSubTitle = [
    GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: _textColor,
    ),
  ];

  static List<TextStyle> label = [
    GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: _textColor,
    ),
  ];

  static List<TextStyle> smallLabel = [
    GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: _textColor,
    ),
  ];

  static List<TextStyle> chipLabel = [
    GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      height: 1,
      color: _textColor,
    ),
  ];
}
