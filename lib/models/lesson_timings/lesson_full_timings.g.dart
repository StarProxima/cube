// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, prefer_expression_function_bodies, unused_import, require_trailing_commas, library_private_types_in_public_api, always_use_package_imports

part of 'lesson_full_timings.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LessonFullTimingsAdapter extends TypeAdapter<_$_LessonFullTimings> {
  @override
  final int typeId = 1;

  @override
  _$_LessonFullTimings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_LessonFullTimings(
      start: fields[0] as TimeOfDay,
      end: fields[2] as TimeOfDay,
      startDateTime: fields[3] as DateTime,
      endDateTime: fields[4] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$_LessonFullTimings obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.start)
      ..writeByte(2)
      ..write(obj.end)
      ..writeByte(3)
      ..write(obj.startDateTime)
      ..writeByte(4)
      ..write(obj.endDateTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LessonFullTimingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
