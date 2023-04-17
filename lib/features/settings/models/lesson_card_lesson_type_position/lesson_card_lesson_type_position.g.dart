// GENERATED CODE - DO NOT MODIFY BY HAND

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
        return LessonCardLessonTypePosition.afterBottomLeftBlock;
      case 1:
        return LessonCardLessonTypePosition.afterTopLeftBlock;
      case 2:
        return LessonCardLessonTypePosition.bottomLeft;
      case 3:
        return LessonCardLessonTypePosition.topRight;
      case 4:
        return LessonCardLessonTypePosition.bottomRight;
      case 5:
        return LessonCardLessonTypePosition.beforeBottomRightBlock;
      case 6:
        return LessonCardLessonTypePosition.onIndicator;
      case 7:
        return LessonCardLessonTypePosition.none;
      default:
        return LessonCardLessonTypePosition.afterBottomLeftBlock;
    }
  }

  @override
  void write(BinaryWriter writer, LessonCardLessonTypePosition obj) {
    switch (obj) {
      case LessonCardLessonTypePosition.afterBottomLeftBlock:
        writer.writeByte(0);
        break;
      case LessonCardLessonTypePosition.afterTopLeftBlock:
        writer.writeByte(1);
        break;
      case LessonCardLessonTypePosition.bottomLeft:
        writer.writeByte(2);
        break;
      case LessonCardLessonTypePosition.topRight:
        writer.writeByte(3);
        break;
      case LessonCardLessonTypePosition.bottomRight:
        writer.writeByte(4);
        break;
      case LessonCardLessonTypePosition.beforeBottomRightBlock:
        writer.writeByte(5);
        break;
      case LessonCardLessonTypePosition.onIndicator:
        writer.writeByte(6);
        break;
      case LessonCardLessonTypePosition.none:
        writer.writeByte(7);
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
