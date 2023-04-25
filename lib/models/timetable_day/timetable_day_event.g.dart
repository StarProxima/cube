// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, prefer_expression_function_bodies, unused_import, require_trailing_commas, library_private_types_in_public_api, always_use_package_imports

part of 'timetable_day_event.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimetableDayEventAdapter extends TypeAdapter<_$_TimetableDayEvent> {
  @override
  final int typeId = 12;

  @override
  _$_TimetableDayEvent read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_TimetableDayEvent(
      type: fields[0] as TimetableDayEventType,
      title: fields[1] as String?,
      subTitle: fields[2] as String?,
      description: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_TimetableDayEvent obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.subTitle)
      ..writeByte(3)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimetableDayEventAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
