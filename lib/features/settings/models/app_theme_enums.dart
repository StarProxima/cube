import 'package:freezed_annotation/freezed_annotation.dart';

enum AppThemeMode {
  @JsonValue('system')
  system,
  @JsonValue('light')
  light,
  @JsonValue('dark')
  dark;
}

enum AppLessonColorsMode {
  @JsonValue('cube')
  cube,
  @JsonValue('proxima')
  proxima,
}
