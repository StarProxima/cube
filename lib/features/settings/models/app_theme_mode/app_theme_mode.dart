import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'app_theme_mode.g.dart';

@HiveType(typeId: 9)
enum AppThemeMode {
  @HiveField(0)
  @JsonValue('system')
  system,
  @JsonValue('light')
  @HiveField(1)
  light,
  @JsonValue('dark')
  @HiveField(2)
  dark;
}
