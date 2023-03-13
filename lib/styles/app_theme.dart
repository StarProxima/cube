import 'package:cube_system/styles/app_colors/app_colors.dart';
import 'package:cube_system/styles/app_text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeByStyles({
    required AppColors colors,
    required AppTextStyles textStyles,
  }) {
    final theme = ThemeData.light();
    return theme.copyWith(
      dividerColor: colors.border,
      extensions: [
        colors,
        textStyles,
      ],
    );
  }
}
