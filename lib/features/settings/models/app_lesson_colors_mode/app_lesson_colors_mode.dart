import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'app_lesson_colors_mode.g.dart';

@HiveType(typeId: 8)
enum AppLessonColorsMode {
  @HiveField(0)
  @JsonValue('cube')
  cube,
  @HiveField(1)
  @JsonValue('accent')
  accent;

  bool get isCube => this == AppLessonColorsMode.cube;
  bool get isAccent => this == AppLessonColorsMode.accent;
}
