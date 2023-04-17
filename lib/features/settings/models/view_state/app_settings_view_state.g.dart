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
          LessonCardLessonTypePosition.afterBottomLeftBlock,
      lessonCardRecessDisplayCondition: $enumDecodeNullable(
              _$LessonCardRecessDisplayConditionEnumMap,
              json['lessonCardRecessDisplayCondition']) ??
          LessonCardRecessDisplayCondition.always,
    );

Map<String, dynamic> _$$_AppSettingsViewStateToJson(
        _$_AppSettingsViewState instance) =>
    <String, dynamic>{
      'appThemeMode': _$AppThemeModeEnumMap[instance.appThemeMode]!,
      'lessonColorsMode':
          _$AppLessonColorsModeEnumMap[instance.lessonColorsMode]!,
      'lessonCardLessonTypePosition': _$LessonCardLessonTypePositionEnumMap[
          instance.lessonCardLessonTypePosition]!,
      'lessonCardRecessDisplayCondition':
          _$LessonCardRecessDisplayConditionEnumMap[
              instance.lessonCardRecessDisplayCondition]!,
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
  LessonCardLessonTypePosition.afterBottomLeftBlock: 'afterBottomLeftBlock',
  LessonCardLessonTypePosition.afterTopLeftBlock: 'afterTopLeftBlock',
  LessonCardLessonTypePosition.bottomLeft: 'bottomLeft',
  LessonCardLessonTypePosition.topRight: 'topRight',
  LessonCardLessonTypePosition.bottomRight: 'bottomRight',
  LessonCardLessonTypePosition.beforeBottomRightBlock: 'beforeBottomRightBlock',
  LessonCardLessonTypePosition.onIndicator: 'onIndicator',
  LessonCardLessonTypePosition.none: 'none',
};

const _$LessonCardRecessDisplayConditionEnumMap = {
  LessonCardRecessDisplayCondition.always: 'always',
  LessonCardRecessDisplayCondition.onlyRecessBetweenLessons:
      'onlyRecessBetweenLessons',
  LessonCardRecessDisplayCondition.never: 'never',
};
