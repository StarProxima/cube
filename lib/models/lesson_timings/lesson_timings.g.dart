// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, prefer_expression_function_bodies, unused_import, require_trailing_commas, library_private_types_in_public_api, always_use_package_imports

part of 'lesson_timings.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LessonTimingsAdapter extends TypeAdapter<_$_LessonTimings> {
  @override
  final int typeId = 2;

  @override
  _$_LessonTimings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_LessonTimings(
      start: fields[0] as TimeOfDay,
      end: fields[1] as TimeOfDay,
    );
  }

  @override
  void write(BinaryWriter writer, _$_LessonTimings obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.start)
      ..writeByte(1)
      ..write(obj.end);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LessonTimingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
