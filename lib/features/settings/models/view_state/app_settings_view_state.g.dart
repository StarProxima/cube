// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_view_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettingsViewState _$$_AppSettingsViewStateFromJson(
  Map<String, dynamic> json,
) =>
    _$_AppSettingsViewState(
      lessonColorsMode: $enumDecodeNullable(
            _$AppLessonColorsModeEnumMap,
            json['lessonColorsMode'],
          ) ??
          AppLessonColorsMode.cube,
      appThemeMode:
          $enumDecodeNullable(_$AppThemeModeEnumMap, json['appThemeMode']) ??
              AppThemeMode.system,
    );

Map<String, dynamic> _$$_AppSettingsViewStateToJson(
  _$_AppSettingsViewState instance,
) =>
    <String, dynamic>{
      'lessonColorsMode':
          _$AppLessonColorsModeEnumMap[instance.lessonColorsMode]!,
      'appThemeMode': _$AppThemeModeEnumMap[instance.appThemeMode]!,
    };

const _$AppLessonColorsModeEnumMap = {
  AppLessonColorsMode.cube: 'cube',
  AppLessonColorsMode.proxima: 'proxima',
};

const _$AppThemeModeEnumMap = {
  AppThemeMode.system: 'system',
  AppThemeMode.light: 'light',
  AppThemeMode.dark: 'dark',
};
