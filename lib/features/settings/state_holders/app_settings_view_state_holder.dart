import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/settings/models/view_state/app_settings_view_state.dart';

import 'package:cube_system/features/settings/models/app_lesson_colors_mode/app_lesson_colors_mode.dart';

import 'package:cube_system/features/settings/models/app_theme_mode/app_theme_mode.dart';

import 'package:cube_system/features/settings/models/lesson_card_lesson_type_position/lesson_card_lesson_type_position.dart';

import 'package:cube_system/features/settings/models/lesson_card_recess_display_condition/lesson_card_recess_display_condition.dart';

final appSettingsViewStateHolder = StateNotifierProvider<
    AppSettingsViewStateHolderNotifier, AppSettingsViewState>((ref) {
  return AppSettingsViewStateHolderNotifier(
    AppSettingsViewState(),
  );
});

class AppSettingsViewStateHolderNotifier
    extends StateNotifier<AppSettingsViewState> {
  AppSettingsViewStateHolderNotifier(super.state);

  @override
  get state => super.state;

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
