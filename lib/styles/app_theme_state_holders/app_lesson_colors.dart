import 'package:cube_system/styles/app_lesson_colors/app_lesson_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/settings/models/app_theme_enums.dart';
import 'package:cube_system/styles/app_theme_state_holders/app_theme_mode.dart';

final appLessonColors = StateProvider<AppLessonColors>((ref) {
  final mode = ref.watch(appLessonColorsMode);

  switch (mode) {
    case AppLessonColorsMode.cube:
      return AppLessonColors.cube;
    case AppLessonColorsMode.proxima:
      return AppLessonColors.custom;
  }
});
