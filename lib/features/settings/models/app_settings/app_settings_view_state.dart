import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:cube_system/features/settings/models/app_theme_mode/app_theme_mode.dart';

import 'package:cube_system/features/settings/models/app_lesson_colors_mode/app_lesson_colors_mode.dart';

import 'package:cube_system/features/settings/models/lesson_card_lesson_type_position/lesson_card_lesson_type_position.dart';

import 'package:cube_system/features/settings/models/lesson_card_recess_display_condition/lesson_card_recess_display_condition.dart';
import 'package:hive/hive.dart';

part 'app_settings_view_state.freezed.dart';
part 'app_settings_view_state.g.dart';

@freezed
class AppSettings with _$AppSettings {
  @HiveType(typeId: 7)
  factory AppSettings({
    @HiveField(0)
    @Default(AppThemeMode.system)
        AppThemeMode appThemeMode,
    @HiveField(1)
    @Default(AppLessonColorsMode.cube)
        AppLessonColorsMode lessonColorsMode,
    @HiveField(2)
    @Default(LessonCardLessonTypePosition.bottomRight)
        LessonCardLessonTypePosition lessonCardLessonTypePosition,
    @HiveField(3)
    @Default(LessonCardRecessDisplayCondition.always)
        LessonCardRecessDisplayCondition lessonCardRecessDisplayCondition,
  }) = _AppSettings;
}
