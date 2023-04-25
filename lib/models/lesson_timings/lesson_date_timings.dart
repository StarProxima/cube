import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'lesson_date_timings.freezed.dart';
part 'lesson_date_timings.g.dart';

@freezed
class LessonDateTimings with _$LessonDateTimings {
  @HiveType(typeId: 1)
  factory LessonDateTimings({
    @HiveField(0) required DateTime startDateTime,
    @HiveField(1) required DateTime endDateTime,
  }) = _LessonDateTimings;
}
