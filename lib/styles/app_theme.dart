import 'package:cube_system/styles/app_colors/app_colors.dart';
import 'package:cube_system/styles/app_text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeByStyles({
    required AppColors colors,
    required AppTextStyles textStyles,
  }) {
    return ThemeData.light().copyWith(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: colors.primary),
      scaffoldBackgroundColor: colors.background,
      dividerColor: colors.subduedBorder,
      primaryColor: colors.primary,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colors.background,
      ),
      dividerTheme: DividerThemeData(
        color: colors.subduedBorder,
        thickness: 1,
        space: 1,
      ),
      tooltipTheme: TooltipThemeData(
        excludeFromSemantics: true,
        triggerMode: TooltipTriggerMode.tap,
        waitDuration: const Duration(milliseconds: 500),
        verticalOffset: 12,
        textAlign: TextAlign.center,
        textStyle: textStyles.chipLabel,
        decoration: BoxDecoration(
          color: colors.background,
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(
              color: colors.shadow,
              blurRadius: 12,
              offset: const Offset(0, 1),
            )
          ],
        ),
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        surfaceTintColor: colors.background,
        titleTextStyle: textStyles.appBarTitle,
        backgroundColor: colors.background,
        shadowColor: colors.shadow,
      ),
      extensions: [
        colors,
        textStyles,
      ],
    );
  }
}
