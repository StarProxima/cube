import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'lesson_card_lesson_type_position.g.dart';

@HiveType(typeId: 10)
enum LessonCardLessonTypePosition {
  @HiveField(0)
  @JsonValue('onIndicator')
  onIndicator,
  @HiveField(1)
  @JsonValue('bottomRight')
  bottomRight,
  @HiveField(2)
  @JsonValue('afterBottomLeftBlock')
  afterBottomLeftBlock,
  @HiveField(3)
  @JsonValue('beforeBottomRightBlock')
  beforeBottomRightBlock,
  @HiveField(4)
  @JsonValue('none')
  none;

  bool get isAfterBottomLeftBlock =>
      this == LessonCardLessonTypePosition.afterBottomLeftBlock;

  bool get isBottomRight => this == LessonCardLessonTypePosition.bottomRight;
  bool get isBeforeBottomRightBlock =>
      this == LessonCardLessonTypePosition.beforeBottomRightBlock;
  bool get isOnIndicator => this == LessonCardLessonTypePosition.onIndicator;
  bool get isNone => this == LessonCardLessonTypePosition.none;
}
