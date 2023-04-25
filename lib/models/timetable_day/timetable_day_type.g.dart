// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, prefer_expression_function_bodies, unused_import, require_trailing_commas, library_private_types_in_public_api, always_use_package_imports

part of 'timetable_day_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimetableDayEventTypeAdapter extends TypeAdapter<TimetableDayEventType> {
  @override
  final int typeId = 6;

  @override
  TimetableDayEventType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TimetableDayEventType.notSelected;
      case 1:
        return TimetableDayEventType.welcome;
      case 2:
        return TimetableDayEventType.lessons;
      case 3:
        return TimetableDayEventType.weekend;
      case 4:
        return TimetableDayEventType.holiday;
      case 5:
        return TimetableDayEventType.loading;
      case 6:
        return TimetableDayEventType.error;
      default:
        return TimetableDayEventType.notSelected;
    }
  }

  @override
  void write(BinaryWriter writer, TimetableDayEventType obj) {
    switch (obj) {
      case TimetableDayEventType.notSelected:
        writer.writeByte(0);
        break;
      case TimetableDayEventType.welcome:
        writer.writeByte(1);
        break;
      case TimetableDayEventType.lessons:
        writer.writeByte(2);
        break;
      case TimetableDayEventType.weekend:
        writer.writeByte(3);
        break;
      case TimetableDayEventType.holiday:
        writer.writeByte(4);
        break;
      case TimetableDayEventType.loading:
        writer.writeByte(5);
        break;
      case TimetableDayEventType.error:
        writer.writeByte(6);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimetableDayEventTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
