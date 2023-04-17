import 'package:cube_system/models/timetable/timetable_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'timetable_info.freezed.dart';

@freezed
class TimetableInfo with _$TimetableInfo {
  @HiveType(typeId: 4)
  factory TimetableInfo({
    @HiveField(0) required int id,
    @HiveField(1) required String label,
    @HiveField(2) required TimetableType type,
  }) = _TimetableInfo;
}
