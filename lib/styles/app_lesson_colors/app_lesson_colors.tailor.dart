// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'app_lesson_colors.dart';

// **************************************************************************
// ThemeTailorGenerator
// **************************************************************************

class AppLessonColors extends ThemeExtension<AppLessonColors> {
  const AppLessonColors({
    required this.lecture,
    required this.laboratory,
    required this.practice,
    required this.seminar,
    required this.additional,
    required this.ksrs,
    required this.recess,
  });

  final Color? lecture;
  final Color? laboratory;
  final Color? practice;
  final Color? seminar;
  final Color? additional;
  final Color? ksrs;
  final Color? recess;

  static final AppLessonColors cube = AppLessonColors(
    lecture: _$AppLessonColors.lecture[0],
    laboratory: _$AppLessonColors.laboratory[0],
    practice: _$AppLessonColors.practice[0],
    seminar: _$AppLessonColors.seminar[0],
    additional: _$AppLessonColors.additional[0],
    ksrs: _$AppLessonColors.ksrs[0],
    recess: _$AppLessonColors.recess[0],
  );

  static final AppLessonColors proxima = AppLessonColors(
    lecture: _$AppLessonColors.lecture[1],
    laboratory: _$AppLessonColors.laboratory[1],
    practice: _$AppLessonColors.practice[1],
    seminar: _$AppLessonColors.seminar[1],
    additional: _$AppLessonColors.additional[1],
    ksrs: _$AppLessonColors.ksrs[1],
    recess: _$AppLessonColors.recess[1],
  );

  static final themes = [
    cube,
    proxima,
  ];

  @override
  AppLessonColors copyWith({
    Color? lecture,
    Color? laboratory,
    Color? practice,
    Color? seminar,
    Color? additional,
    Color? ksrs,
    Color? recess,
  }) {
    return AppLessonColors(
      lecture: lecture ?? this.lecture,
      laboratory: laboratory ?? this.laboratory,
      practice: practice ?? this.practice,
      seminar: seminar ?? this.seminar,
      additional: additional ?? this.additional,
      ksrs: ksrs ?? this.ksrs,
      recess: recess ?? this.recess,
    );
  }

  @override
  AppLessonColors lerp(ThemeExtension<AppLessonColors>? other, double t) {
    if (other is! AppLessonColors) return this;
    return AppLessonColors(
      lecture: Color.lerp(lecture, other.lecture, t),
      laboratory: Color.lerp(laboratory, other.laboratory, t),
      practice: Color.lerp(practice, other.practice, t),
      seminar: Color.lerp(seminar, other.seminar, t),
      additional: Color.lerp(additional, other.additional, t),
      ksrs: Color.lerp(ksrs, other.ksrs, t),
      recess: Color.lerp(recess, other.recess, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppLessonColors &&
            const DeepCollectionEquality().equals(lecture, other.lecture) &&
            const DeepCollectionEquality()
                .equals(laboratory, other.laboratory) &&
            const DeepCollectionEquality().equals(practice, other.practice) &&
            const DeepCollectionEquality().equals(seminar, other.seminar) &&
            const DeepCollectionEquality()
                .equals(additional, other.additional) &&
            const DeepCollectionEquality().equals(ksrs, other.ksrs) &&
            const DeepCollectionEquality().equals(recess, other.recess));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(lecture),
        const DeepCollectionEquality().hash(laboratory),
        const DeepCollectionEquality().hash(practice),
        const DeepCollectionEquality().hash(seminar),
        const DeepCollectionEquality().hash(additional),
        const DeepCollectionEquality().hash(ksrs),
        const DeepCollectionEquality().hash(recess));
  }
}
