import 'package:cube_system/models/timetable/timetable_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timetable_info.freezed.dart';

@freezed
class TimetableInfo with _$TimetableInfo {
  factory TimetableInfo({
    required int id,
    required String label,
    required TimetableType type,
  }) = _TimetableInfo;
}
