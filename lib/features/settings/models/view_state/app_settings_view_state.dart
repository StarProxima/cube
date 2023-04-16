import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:cube_system/features/settings/models/app_theme_mode.dart';

import 'package:cube_system/features/settings/models/app_lesson_colors_mode.dart';

import 'package:cube_system/features/settings/models/lesson_card_lesson_type_position.dart';

part 'app_settings_view_state.freezed.dart';
part 'app_settings_view_state.g.dart';

@freezed
class AppSettingsViewState with _$AppSettingsViewState {
  factory AppSettingsViewState({
    @Default(AppThemeMode.system)
        AppThemeMode appThemeMode,
    @Default(AppLessonColorsMode.cube)
        AppLessonColorsMode lessonColorsMode,
    @Default(LessonCardLessonTypePosition.afterTeacher)
        LessonCardLessonTypePosition lessonCardLessonTypePosition,
  }) = _AppSettingsViewState;

  factory AppSettingsViewState.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsViewStateFromJson(json);
}
