import 'package:freezed_annotation/freezed_annotation.dart';

enum LessonCardLessonTypePosition {
  @JsonValue('afterBottomLeftBlock')
  afterBottomLeftBlock,
  @JsonValue('afterTopLeftBlock')
  afterTopLeftBlock,
  @JsonValue('bottomLeft')
  bottomLeft,
  @JsonValue('topRight')
  topRight,
  @JsonValue('bottomRight')
  bottomRight,
  @JsonValue('beforeBottomRightBlock')
  beforeBottomRightBlock,
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
  bool get isNone => this == LessonCardLessonTypePosition.none;
}
