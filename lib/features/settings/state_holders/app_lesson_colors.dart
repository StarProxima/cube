import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/styles/app_lesson_colors/app_lesson_colors.dart';
import 'package:cube_system/features/settings/models/app_theme_enums.dart';
import 'package:cube_system/features/settings/state_holders/app_settings_view_state_holder.dart';

final appLessonColors = Provider((ref) {
  final mode = ref.watch(
    appSettingsViewStateHolder.select((value) => value.lessonColorsMode),
  );

  switch (mode) {
    case AppLessonColorsMode.cube:
      return AppLessonColors.cube;
    case AppLessonColorsMode.proxima:
      return AppLessonColors.proxima;
  }
});
