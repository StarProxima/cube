// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, prefer_expression_function_bodies, unused_import, require_trailing_commas, library_private_types_in_public_api, always_use_package_imports

part of 'lesson_date_timings.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LessonDateTimingsAdapter extends TypeAdapter<_$_LessonDateTimings> {
  @override
  final int typeId = 1;

  @override
  _$_LessonDateTimings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_LessonDateTimings(
      startDateTime: fields[0] as DateTime,
      endDateTime: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$_LessonDateTimings obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.startDateTime)
      ..writeByte(1)
      ..write(obj.endDateTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LessonDateTimingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
