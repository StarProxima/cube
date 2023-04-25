import 'package:cube_system/features/analytics/logger.dart';
import 'package:cube_system/models/app_box_names/app_box_names.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/settings/models/app_lesson_colors_mode/app_lesson_colors_mode.dart';

import 'package:cube_system/features/settings/models/app_theme_mode/app_theme_mode.dart';

import 'package:cube_system/features/settings/models/lesson_card_lesson_type_position/lesson_card_lesson_type_position.dart';

import 'package:cube_system/features/settings/models/lesson_card_recess_display_condition/lesson_card_recess_display_condition.dart';

import 'package:cube_system/features/settings/models/app_settings/app_settings.dart';

import 'package:cube_system/core/state_notifiers/hive_state_notifier.dart';

final appSettingsStateHolder =
    StateNotifierProvider<AppSettingsNotifier, AppSettings>((ref) {
  return AppSettingsNotifier(
    AppSettings(),
    boxName: AppBoxNames.appSettings,
  );
});

class AppSettingsNotifier extends HiveStateNotifier<AppSettings> {
  AppSettingsNotifier(super.state, {required super.boxName});

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

  void editLandingPassed(bool landingPassed) {
    state = state.copyWith(landingPassed: landingPassed);
  }

  @override
  onSetData(AppSettings data) => logger.setInitialSettings;

  @override
  onSaveData(AppSettings data) => logger.changingSettings(data);
}
