import 'package:cube_system/styles/app_colors/app_colors.dart';
import 'package:cube_system/styles/app_text_styles/app_text_styles.dart';
import 'package:cube_system/styles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/ui/timetable_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = AppColors.light;
    final appTextStyles = AppTextStyles.light;

    return ProviderScope(
      child: MaterialApp(
        title: 'Cube',
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ru'),
          Locale('en'),
        ],
        themeMode: ThemeMode.light,
        theme: AppTheme.themeByStyles(
          colors: appColors,
          textStyles: appTextStyles,
        ),
        home: const TimetablePage(),
      ),
    );
  }
}
