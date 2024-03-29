// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, prefer_expression_function_bodies, unused_import, require_trailing_commas, library_private_types_in_public_api, always_use_package_imports

part of 'lesson_card_lesson_type_position.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LessonCardLessonTypePositionAdapter
    extends TypeAdapter<LessonCardLessonTypePosition> {
  @override
  final int typeId = 10;

  @override
  LessonCardLessonTypePosition read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return LessonCardLessonTypePosition.onIndicator;
      case 1:
        return LessonCardLessonTypePosition.bottomRight;
      case 2:
        return LessonCardLessonTypePosition.afterBottomLeftBlock;
      case 3:
        return LessonCardLessonTypePosition.beforeBottomRightBlock;
      case 4:
        return LessonCardLessonTypePosition.none;
      default:
        return LessonCardLessonTypePosition.onIndicator;
    }
  }

  @override
  void write(BinaryWriter writer, LessonCardLessonTypePosition obj) {
    switch (obj) {
      case LessonCardLessonTypePosition.onIndicator:
        writer.writeByte(0);
        break;
      case LessonCardLessonTypePosition.bottomRight:
        writer.writeByte(1);
        break;
      case LessonCardLessonTypePosition.afterBottomLeftBlock:
        writer.writeByte(2);
        break;
      case LessonCardLessonTypePosition.beforeBottomRightBlock:
        writer.writeByte(3);
        break;
      case LessonCardLessonTypePosition.none:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LessonCardLessonTypePositionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
