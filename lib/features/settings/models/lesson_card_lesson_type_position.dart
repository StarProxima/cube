import 'package:freezed_annotation/freezed_annotation.dart';

enum LessonCardLessonTypePosition {
  @JsonValue('afterTeacher')
  afterTeacher,
  @JsonValue('bottomLeft')
  bottomLeft,
  @JsonValue('topRight')
  topRight,
  @JsonValue('none')
  none,
}
