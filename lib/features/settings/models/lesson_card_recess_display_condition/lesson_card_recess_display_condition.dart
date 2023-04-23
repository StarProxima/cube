import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'lesson_card_recess_display_condition.g.dart';

@HiveType(typeId: 11)
enum LessonCardRecessDisplayCondition {
  @HiveField(0)
  @JsonValue('always')
  always,
  @HiveField(1)
  @JsonValue('onlyRecessBetweenLessons')
  onlyRecessBetweenLessons,
  @HiveField(2)
  @JsonValue('never')
  never;

  bool get isAlways => this == LessonCardRecessDisplayCondition.always;
  bool get isOnlyRecessBetweenLessons =>
      this == LessonCardRecessDisplayCondition.onlyRecessBetweenLessons;
  bool get isNever => this == LessonCardRecessDisplayCondition.never;
}
