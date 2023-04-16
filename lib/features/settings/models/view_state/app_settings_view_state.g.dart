// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_view_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettingsViewState _$$_AppSettingsViewStateFromJson(
        Map<String, dynamic> json) =>
    _$_AppSettingsViewState(
      appThemeMode:
          $enumDecodeNullable(_$AppThemeModeEnumMap, json['appThemeMode']) ??
              AppThemeMode.system,
      lessonColorsMode: $enumDecodeNullable(
              _$AppLessonColorsModeEnumMap, json['lessonColorsMode']) ??
          AppLessonColorsMode.cube,
      lessonCardLessonTypePosition: $enumDecodeNullable(
              _$LessonCardLessonTypePositionEnumMap,
              json['lessonCardLessonTypePosition']) ??
          LessonCardLessonTypePosition.afterTeacher,
    );

Map<String, dynamic> _$$_AppSettingsViewStateToJson(
        _$_AppSettingsViewState instance) =>
    <String, dynamic>{
      'appThemeMode': _$AppThemeModeEnumMap[instance.appThemeMode]!,
      'lessonColorsMode':
          _$AppLessonColorsModeEnumMap[instance.lessonColorsMode]!,
      'lessonCardLessonTypePosition': _$LessonCardLessonTypePositionEnumMap[
          instance.lessonCardLessonTypePosition]!,
    };

const _$AppThemeModeEnumMap = {
  AppThemeMode.system: 'system',
  AppThemeMode.light: 'light',
  AppThemeMode.dark: 'dark',
};

const _$AppLessonColorsModeEnumMap = {
  AppLessonColorsMode.cube: 'cube',
  AppLessonColorsMode.proxima: 'proxima',
};

const _$LessonCardLessonTypePositionEnumMap = {
  LessonCardLessonTypePosition.afterTeacher: 'afterTeacher',
  LessonCardLessonTypePosition.bottomLeft: 'bottomLeft',
  LessonCardLessonTypePosition.topRight: 'topRight',
  LessonCardLessonTypePosition.none: 'none',
};
