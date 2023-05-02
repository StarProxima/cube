// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, prefer_expression_function_bodies, unused_import, require_trailing_commas, library_private_types_in_public_api, always_use_package_imports

part of 'app_settings.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppSettingsAdapter extends TypeAdapter<_$_AppSettings> {
  @override
  final int typeId = 7;

  @override
  _$_AppSettings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_AppSettings(
      appThemeMode: fields[0] as AppThemeMode,
      lessonColorsMode: fields[1] as AppLessonColorsMode,
      lessonCardLessonTypePosition: fields[2] as LessonCardLessonTypePosition,
      lessonCardRecessDisplayCondition:
          fields[3] as LessonCardRecessDisplayCondition,
      landingPassed: fields[4] == null ? false : fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$_AppSettings obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.appThemeMode)
      ..writeByte(1)
      ..write(obj.lessonColorsMode)
      ..writeByte(2)
      ..write(obj.lessonCardLessonTypePosition)
      ..writeByte(3)
      ..write(obj.lessonCardRecessDisplayCondition)
      ..writeByte(4)
      ..write(obj.landingPassed);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppSettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettings _$$_AppSettingsFromJson(Map<String, dynamic> json) =>
    _$_AppSettings(
      appThemeMode:
          $enumDecodeNullable(_$AppThemeModeEnumMap, json['appThemeMode']) ??
              AppThemeMode.system,
      lessonColorsMode: $enumDecodeNullable(
              _$AppLessonColorsModeEnumMap, json['lessonColorsMode']) ??
          AppLessonColorsMode.cube,
      lessonCardLessonTypePosition: $enumDecodeNullable(
              _$LessonCardLessonTypePositionEnumMap,
              json['lessonCardLessonTypePosition']) ??
          LessonCardLessonTypePosition.bottomRight,
      lessonCardRecessDisplayCondition: $enumDecodeNullable(
              _$LessonCardRecessDisplayConditionEnumMap,
              json['lessonCardRecessDisplayCondition']) ??
          LessonCardRecessDisplayCondition.always,
      landingPassed: json['landingPassed'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AppSettingsToJson(_$_AppSettings instance) =>
    <String, dynamic>{
      'appThemeMode': _$AppThemeModeEnumMap[instance.appThemeMode]!,
      'lessonColorsMode':
          _$AppLessonColorsModeEnumMap[instance.lessonColorsMode]!,
      'lessonCardLessonTypePosition': _$LessonCardLessonTypePositionEnumMap[
          instance.lessonCardLessonTypePosition]!,
      'lessonCardRecessDisplayCondition':
          _$LessonCardRecessDisplayConditionEnumMap[
              instance.lessonCardRecessDisplayCondition]!,
      'landingPassed': instance.landingPassed,
    };

const _$AppThemeModeEnumMap = {
  AppThemeMode.system: 'system',
  AppThemeMode.light: 'light',
  AppThemeMode.dark: 'dark',
};

const _$AppLessonColorsModeEnumMap = {
  AppLessonColorsMode.cube: 'cube',
  AppLessonColorsMode.accent: 'accent',
};

const _$LessonCardLessonTypePositionEnumMap = {
  LessonCardLessonTypePosition.onIndicator: 'onIndicator',
  LessonCardLessonTypePosition.bottomRight: 'bottomRight',
  LessonCardLessonTypePosition.afterBottomLeftBlock: 'afterBottomLeftBlock',
  LessonCardLessonTypePosition.beforeBottomRightBlock: 'beforeBottomRightBlock',
  LessonCardLessonTypePosition.none: 'none',
};

const _$LessonCardRecessDisplayConditionEnumMap = {
  LessonCardRecessDisplayCondition.always: 'always',
  LessonCardRecessDisplayCondition.onlyRecessBetweenLessons:
      'onlyRecessBetweenLessons',
  LessonCardRecessDisplayCondition.never: 'never',
};
