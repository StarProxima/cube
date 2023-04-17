// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_view_state.dart';

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
    );
  }

  @override
  void write(BinaryWriter writer, _$_AppSettings obj) {
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
      other is AppSettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
