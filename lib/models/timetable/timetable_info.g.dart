// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimetableInfoAdapter extends TypeAdapter<_$_TimetableInfo> {
  @override
  final int typeId = 4;

  @override
  _$_TimetableInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_TimetableInfo(
      id: fields[0] as int,
      label: fields[1] as String,
      type: fields[2] as TimetableType,
    );
  }

  @override
  void write(BinaryWriter writer, _$_TimetableInfo obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.label)
      ..writeByte(2)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimetableInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
