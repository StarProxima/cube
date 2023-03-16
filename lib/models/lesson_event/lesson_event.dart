import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:cube_system/models/lesson_event/lesson_event_type.dart';

part 'lesson_event.freezed.dart';

@freezed
class LessonEvent with _$LessonEvent {
  factory LessonEvent({
    required LessonEventType type,
    String? title,
    String? subTitle,
    String? description,
  }) = _LessonEvent;
}
