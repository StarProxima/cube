// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimetableTypeAdapter extends TypeAdapter<TimetableType> {
  @override
  final int typeId = 5;

  @override
  TimetableType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TimetableType.group;
      case 1:
        return TimetableType.teacher;
      case 2:
        return TimetableType.place;
      default:
        return TimetableType.group;
    }
  }

  @override
  void write(BinaryWriter writer, TimetableType obj) {
    switch (obj) {
      case TimetableType.group:
        writer.writeByte(0);
        break;
      case TimetableType.teacher:
        writer.writeByte(1);
        break;
      case TimetableType.place:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimetableTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
