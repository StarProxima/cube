import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:cube_system/models/timetable_day/timetable_day_type.dart';
import 'package:hive/hive.dart';

part 'timetable_day_event.freezed.dart';
part 'timetable_day_event.g.dart';

@freezed
class TimetableDayEvent with _$TimetableDayEvent {
  @HiveType(typeId: 5)
  factory TimetableDayEvent({
    @HiveField(0) required TimetableDayEventType type,
    @HiveField(1) String? title,
    @HiveField(2) String? subTitle,
    @HiveField(3) String? description,
  }) = _TimetableDayEvent;
}
