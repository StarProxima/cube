// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_lesson_colors.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class AppLessonColors extends ThemeExtension<AppLessonColors> {
  const AppLessonColors({
    this.additional,
    this.ksrs,
    this.laboratory,
    this.lecture,
    this.practice,
    this.recess,
    this.seminar,
  });

  final Color? additional;
  final Color? ksrs;
  final Color? laboratory;
  final Color? lecture;
  final Color? practice;
  final Color? recess;
  final Color? seminar;

  static final AppLessonColors cube = AppLessonColors(
    additional: _$AppLessonColors.additional[0],
    ksrs: _$AppLessonColors.ksrs[0],
    laboratory: _$AppLessonColors.laboratory[0],
    lecture: _$AppLessonColors.lecture[0],
    practice: _$AppLessonColors.practice[0],
    recess: _$AppLessonColors.recess[0],
    seminar: _$AppLessonColors.seminar[0],
  );

  static final AppLessonColors proxima = AppLessonColors(
    additional: _$AppLessonColors.additional[1],
    ksrs: _$AppLessonColors.ksrs[1],
    laboratory: _$AppLessonColors.laboratory[1],
    lecture: _$AppLessonColors.lecture[1],
    practice: _$AppLessonColors.practice[1],
    recess: _$AppLessonColors.recess[1],
    seminar: _$AppLessonColors.seminar[1],
  );

  static final themes = [
    cube,
    proxima,
  ];

  @override
  AppLessonColors copyWith({
    Color? additional,
    Color? ksrs,
    Color? laboratory,
    Color? lecture,
    Color? practice,
    Color? recess,
    Color? seminar,
  }) {
    return AppLessonColors(
      additional: additional ?? this.additional,
      ksrs: ksrs ?? this.ksrs,
      laboratory: laboratory ?? this.laboratory,
      lecture: lecture ?? this.lecture,
      practice: practice ?? this.practice,
      recess: recess ?? this.recess,
      seminar: seminar ?? this.seminar,
    );
  }

  @override
  AppLessonColors lerp(
      covariant ThemeExtension<AppLessonColors>? other, double t) {
    if (other is! AppLessonColors) return this as AppLessonColors;
    return AppLessonColors(
      additional: Color.lerp(additional, other.additional, t),
      ksrs: Color.lerp(ksrs, other.ksrs, t),
      laboratory: Color.lerp(laboratory, other.laboratory, t),
      lecture: Color.lerp(lecture, other.lecture, t),
      practice: Color.lerp(practice, other.practice, t),
      recess: Color.lerp(recess, other.recess, t),
      seminar: Color.lerp(seminar, other.seminar, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppLessonColors &&
            const DeepCollectionEquality()
                .equals(additional, other.additional) &&
            const DeepCollectionEquality().equals(ksrs, other.ksrs) &&
            const DeepCollectionEquality()
                .equals(laboratory, other.laboratory) &&
            const DeepCollectionEquality().equals(lecture, other.lecture) &&
            const DeepCollectionEquality().equals(practice, other.practice) &&
            const DeepCollectionEquality().equals(recess, other.recess) &&
            const DeepCollectionEquality().equals(seminar, other.seminar));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(additional),
      const DeepCollectionEquality().hash(ksrs),
      const DeepCollectionEquality().hash(laboratory),
      const DeepCollectionEquality().hash(lecture),
      const DeepCollectionEquality().hash(practice),
      const DeepCollectionEquality().hash(recess),
      const DeepCollectionEquality().hash(seminar),
    );
  }
}
