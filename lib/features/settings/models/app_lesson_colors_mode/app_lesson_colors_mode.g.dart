// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, prefer_expression_function_bodies, unused_import, require_trailing_commas, library_private_types_in_public_api, always_use_package_imports

part of 'app_lesson_colors_mode.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppLessonColorsModeAdapter extends TypeAdapter<AppLessonColorsMode> {
  @override
  final int typeId = 8;

  @override
  AppLessonColorsMode read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AppLessonColorsMode.cube;
      case 1:
        return AppLessonColorsMode.accent;
      default:
        return AppLessonColorsMode.cube;
    }
  }

  @override
  void write(BinaryWriter writer, AppLessonColorsMode obj) {
    switch (obj) {
      case AppLessonColorsMode.cube:
        writer.writeByte(0);
        break;
      case AppLessonColorsMode.accent:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppLessonColorsModeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
