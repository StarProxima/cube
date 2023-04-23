import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'lesson_card_lesson_type_position.g.dart';

@HiveType(typeId: 10)
enum LessonCardLessonTypePosition {
  @HiveField(0)
  @JsonValue('afterBottomLeftBlock')
  afterBottomLeftBlock,
  @HiveField(1)
  @JsonValue('afterTopLeftBlock')
  afterTopLeftBlock,
  @HiveField(2)
  @JsonValue('bottomLeft')
  bottomLeft,
  @HiveField(3)
  @JsonValue('topRight')
  topRight,
  @HiveField(4)
  @JsonValue('bottomRight')
  bottomRight,
  @HiveField(5)
  @JsonValue('beforeBottomRightBlock')
  beforeBottomRightBlock,
  @HiveField(6)
  @JsonValue('onIndicator')
  onIndicator,
  @HiveField(7)
  @JsonValue('none')
  none;

  bool get isAfterBottomLeftBlock =>
      this == LessonCardLessonTypePosition.afterBottomLeftBlock;
  bool get isAfterTopLeftBlock =>
      this == LessonCardLessonTypePosition.afterTopLeftBlock;
  bool get isBottomLeft => this == LessonCardLessonTypePosition.bottomLeft;
  bool get isTopRight => this == LessonCardLessonTypePosition.topRight;
  bool get isBottomRight => this == LessonCardLessonTypePosition.bottomRight;
  bool get isBeforeBottomRightBlock =>
      this == LessonCardLessonTypePosition.beforeBottomRightBlock;
  bool get isOnIndicator => this == LessonCardLessonTypePosition.onIndicator;
  bool get isNone => this == LessonCardLessonTypePosition.none;
}
