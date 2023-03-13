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
    required this.ksrs,
    required this.additional,
  });

  final Color? lecture;
  final Color? laboratory;
  final Color? practice;
  final Color? seminar;
  final Color? ksrs;
  final Color? additional;

  static final AppLessonColors cube = AppLessonColors(
    lecture: _$AppLessonColors.lecture[0],
    laboratory: _$AppLessonColors.laboratory[0],
    practice: _$AppLessonColors.practice[0],
    seminar: _$AppLessonColors.seminar[0],
    ksrs: _$AppLessonColors.ksrs[0],
    additional: _$AppLessonColors.additional[0],
  );

  static final AppLessonColors custom = AppLessonColors(
    lecture: _$AppLessonColors.lecture[1],
    laboratory: _$AppLessonColors.laboratory[1],
    practice: _$AppLessonColors.practice[1],
    seminar: _$AppLessonColors.seminar[1],
    ksrs: _$AppLessonColors.ksrs[1],
    additional: _$AppLessonColors.additional[1],
  );

  static final themes = [
    cube,
    custom,
  ];

  @override
  AppLessonColors copyWith({
    Color? lecture,
    Color? laboratory,
    Color? practice,
    Color? seminar,
    Color? ksrs,
    Color? additional,
  }) {
    return AppLessonColors(
      lecture: lecture ?? this.lecture,
      laboratory: laboratory ?? this.laboratory,
      practice: practice ?? this.practice,
      seminar: seminar ?? this.seminar,
      ksrs: ksrs ?? this.ksrs,
      additional: additional ?? this.additional,
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
      ksrs: Color.lerp(ksrs, other.ksrs, t),
      additional: Color.lerp(additional, other.additional, t),
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
            const DeepCollectionEquality().equals(ksrs, other.ksrs) &&
            const DeepCollectionEquality()
                .equals(additional, other.additional));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(lecture),
        const DeepCollectionEquality().hash(laboratory),
        const DeepCollectionEquality().hash(practice),
        const DeepCollectionEquality().hash(seminar),
        const DeepCollectionEquality().hash(ksrs),
        const DeepCollectionEquality().hash(additional));
  }
}
