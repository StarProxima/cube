import 'package:freezed_annotation/freezed_annotation.dart';

enum LessonCardRecessDisplayCondition {
  @JsonValue('always')
  always,
  @JsonValue('onlyRecessBetweenLessons')
  onlyRecessBetweenLessons,
  @JsonValue('never')
  never;

  bool get isAlways => this == LessonCardRecessDisplayCondition.always;
  bool get isOnlyRecessBetweenLessons =>
      this == LessonCardRecessDisplayCondition.onlyRecessBetweenLessons;
  bool get isNever => this == LessonCardRecessDisplayCondition.never;
}
