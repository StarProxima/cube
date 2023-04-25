// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, prefer_expression_function_bodies, unused_import, require_trailing_commas, library_private_types_in_public_api, always_use_package_imports

part of 'lesson_card_recess_display_condition.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LessonCardRecessDisplayConditionAdapter
    extends TypeAdapter<LessonCardRecessDisplayCondition> {
  @override
  final int typeId = 11;

  @override
  LessonCardRecessDisplayCondition read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return LessonCardRecessDisplayCondition.always;
      case 1:
        return LessonCardRecessDisplayCondition.onlyRecessBetweenLessons;
      case 2:
        return LessonCardRecessDisplayCondition.never;
      default:
        return LessonCardRecessDisplayCondition.always;
    }
  }

  @override
  void write(BinaryWriter writer, LessonCardRecessDisplayCondition obj) {
    switch (obj) {
      case LessonCardRecessDisplayCondition.always:
        writer.writeByte(0);
        break;
      case LessonCardRecessDisplayCondition.onlyRecessBetweenLessons:
        writer.writeByte(1);
        break;
      case LessonCardRecessDisplayCondition.never:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LessonCardRecessDisplayConditionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
