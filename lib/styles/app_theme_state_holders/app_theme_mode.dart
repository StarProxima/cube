import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/settings/models/app_theme_enums.dart';

final appThemeMode = StateProvider<ThemeMode>((ref) {
  return ThemeMode.light;
});

final appLessonColorsMode = StateProvider<AppLessonColorsMode>((ref) {
  return AppLessonColorsMode.proxima;
});
