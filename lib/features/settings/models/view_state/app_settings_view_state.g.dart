// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_view_state.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppSettingsViewStateAdapter extends TypeAdapter<_$_AppSettingsViewState> {
  @override
  final int typeId = 7;

  @override
  _$_AppSettingsViewState read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_AppSettingsViewState(
      appThemeMode: fields[0] as AppThemeMode,
      lessonColorsMode: fields[1] as AppLessonColorsMode,
      lessonCardLessonTypePosition: fields[2] as LessonCardLessonTypePosition,
      lessonCardRecessDisplayCondition:
          fields[3] as LessonCardRecessDisplayCondition,
    );
  }

  @override
  void write(BinaryWriter writer, _$_AppSettingsViewState obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.appThemeMode)
      ..writeByte(1)
      ..write(obj.lessonColorsMode)
      ..writeByte(2)
      ..write(obj.lessonCardLessonTypePosition)
      ..writeByte(3)
      ..write(obj.lessonCardRecessDisplayCondition);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppSettingsViewStateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
