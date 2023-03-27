import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:cube_system/models/timetable_day/timetable_day_type.dart';

part 'timetable_day_event.freezed.dart';

@freezed
class TimetableDayEvent with _$TimetableDayEvent {
  factory TimetableDayEvent({
    required TimetableDayEventType type,
    String? title,
    String? subTitle,
    String? description,
  }) = _TimetableDayEvent;
}
