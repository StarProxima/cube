// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, prefer_expression_function_bodies, unused_import, require_trailing_commas, library_private_types_in_public_api, always_use_package_imports

part of 'lesson.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LessonAdapter extends TypeAdapter<_$_Lesson> {
  @override
  final int typeId = 0;

  @override
  _$_Lesson read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Lesson(
      number: fields[0] as int,
      timings: fields[1] as LessonFullTimings,
      type: fields[2] as LessonType,
      typeShortName: fields[3] as String,
      disciplineName: fields[4] as String?,
      place: fields[5] as String?,
      groupNames: (fields[6] as List).cast<String>(),
      teacherNames: (fields[7] as List).cast<String>(),
      isRemotely: fields[8] as bool,
      isElective: fields[9] as bool,
      isEvent: fields[10] as bool,
      defaultColor: fields[11] as Color,
      emptyLessonsBefore: fields[12] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Lesson obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.number)
      ..writeByte(1)
      ..write(obj.timings)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.typeShortName)
      ..writeByte(4)
      ..write(obj.disciplineName)
      ..writeByte(5)
      ..write(obj.place)
      ..writeByte(8)
      ..write(obj.isRemotely)
      ..writeByte(9)
      ..write(obj.isElective)
      ..writeByte(10)
      ..write(obj.isEvent)
      ..writeByte(11)
      ..write(obj.defaultColor)
      ..writeByte(12)
      ..write(obj.emptyLessonsBefore)
      ..writeByte(6)
      ..write(obj.groupNames)
      ..writeByte(7)
      ..write(obj.teacherNames);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LessonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
