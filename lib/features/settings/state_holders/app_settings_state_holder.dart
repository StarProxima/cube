import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/settings/models/app_lesson_colors_mode/app_lesson_colors_mode.dart';

import 'package:cube_system/features/settings/models/app_theme_mode/app_theme_mode.dart';

import 'package:cube_system/features/settings/models/lesson_card_lesson_type_position/lesson_card_lesson_type_position.dart';

import 'package:cube_system/features/settings/models/lesson_card_recess_display_condition/lesson_card_recess_display_condition.dart';

import 'package:cube_system/features/settings/models/app_settings/app_settings_view_state.dart';
import 'package:hive/hive.dart';

final appSettingsStateHolder =
    StateNotifierProvider<AppSettingsNotifier, AppSettings>((ref) {
  return AppSettingsNotifier(
    AppSettings(),
  );
});

class AppSettingsNotifier extends StateNotifier<AppSettings> {
  AppSettingsNotifier(super.state);

  @override
  get state => super.state;

  @override
  bool updateShouldNotify(old, current) {
    final b = super.updateShouldNotify(old, current);

    if (b) {
      Future(() async {
        final box = await Hive.openBox('appSettings');

        await box.put('appSettings', current);
      });
    }
    return b;
  }

  void editAppThemeMode(AppThemeMode appThemeMode) {
    state = state.copyWith(appThemeMode: appThemeMode);
  }

  void editLessonColorsMode(AppLessonColorsMode lessonColorsMode) {
    state = state.copyWith(lessonColorsMode: lessonColorsMode);
  }

  void editLessonCardLessonTypePosition(
    LessonCardLessonTypePosition lessonCardLessonTypePosition,
  ) {
    state = state.copyWith(
      lessonCardLessonTypePosition: lessonCardLessonTypePosition,
    );
  }

  void editLessonCardRecessDisplayCondition(
    LessonCardRecessDisplayCondition lessonCardRecessDisplayCondition,
  ) {
    state = state.copyWith(
      lessonCardRecessDisplayCondition: lessonCardRecessDisplayCondition,
    );
  }
}
