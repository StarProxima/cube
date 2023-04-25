// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, prefer_expression_function_bodies, unused_import, require_trailing_commas, library_private_types_in_public_api, always_use_package_imports

part of 'lesson_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LessonTypeAdapter extends TypeAdapter<LessonType> {
  @override
  final int typeId = 3;

  @override
  LessonType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return LessonType.lecture;
      case 1:
        return LessonType.laboratory;
      case 2:
        return LessonType.practice;
      case 3:
        return LessonType.seminar;
      case 4:
        return LessonType.additional;
      case 5:
        return LessonType.ksrs;
      case 6:
        return LessonType.recess;
      default:
        return LessonType.lecture;
    }
  }

  @override
  void write(BinaryWriter writer, LessonType obj) {
    switch (obj) {
      case LessonType.lecture:
        writer.writeByte(0);
        break;
      case LessonType.laboratory:
        writer.writeByte(1);
        break;
      case LessonType.practice:
        writer.writeByte(2);
        break;
      case LessonType.seminar:
        writer.writeByte(3);
        break;
      case LessonType.additional:
        writer.writeByte(4);
        break;
      case LessonType.ksrs:
        writer.writeByte(5);
        break;
      case LessonType.recess:
        writer.writeByte(6);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LessonTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
