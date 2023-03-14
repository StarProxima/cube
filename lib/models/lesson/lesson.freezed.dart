// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Lesson {
  LessonFullNamesInDb get lesson => throw _privateConstructorUsedError;
  LessonTimings get timings => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  Color get fadedColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res, Lesson>;
  @useResult
  $Res call(
      {LessonFullNamesInDb lesson,
      LessonTimings timings,
      Color color,
      Color fadedColor});

  $LessonTimingsCopyWith<$Res> get timings;
}

/// @nodoc
class _$LessonCopyWithImpl<$Res, $Val extends Lesson>
    implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lesson = null,
    Object? timings = null,
    Object? color = null,
    Object? fadedColor = null,
  }) {
    return _then(_value.copyWith(
      lesson: null == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as LessonFullNamesInDb,
      timings: null == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as LessonTimings,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      fadedColor: null == fadedColor
          ? _value.fadedColor
          : fadedColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LessonTimingsCopyWith<$Res> get timings {
    return $LessonTimingsCopyWith<$Res>(_value.timings, (value) {
      return _then(_value.copyWith(timings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LessonCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$$_LessonCopyWith(_$_Lesson value, $Res Function(_$_Lesson) then) =
      __$$_LessonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LessonFullNamesInDb lesson,
      LessonTimings timings,
      Color color,
      Color fadedColor});

  @override
  $LessonTimingsCopyWith<$Res> get timings;
}

/// @nodoc
class __$$_LessonCopyWithImpl<$Res>
    extends _$LessonCopyWithImpl<$Res, _$_Lesson>
    implements _$$_LessonCopyWith<$Res> {
  __$$_LessonCopyWithImpl(_$_Lesson _value, $Res Function(_$_Lesson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lesson = null,
    Object? timings = null,
    Object? color = null,
    Object? fadedColor = null,
  }) {
    return _then(_$_Lesson(
      lesson: null == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as LessonFullNamesInDb,
      timings: null == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as LessonTimings,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      fadedColor: null == fadedColor
          ? _value.fadedColor
          : fadedColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_Lesson implements _Lesson {
  _$_Lesson(
      {required this.lesson,
      required this.timings,
      required this.color,
      required this.fadedColor});

  @override
  final LessonFullNamesInDb lesson;
  @override
  final LessonTimings timings;
  @override
  final Color color;
  @override
  final Color fadedColor;

  @override
  String toString() {
    return 'Lesson(lesson: $lesson, timings: $timings, color: $color, fadedColor: $fadedColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lesson &&
            (identical(other.lesson, lesson) || other.lesson == lesson) &&
            (identical(other.timings, timings) || other.timings == timings) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.fadedColor, fadedColor) ||
                other.fadedColor == fadedColor));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, lesson, timings, color, fadedColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonCopyWith<_$_Lesson> get copyWith =>
      __$$_LessonCopyWithImpl<_$_Lesson>(this, _$identity);
}

abstract class _Lesson implements Lesson {
  factory _Lesson(
      {required final LessonFullNamesInDb lesson,
      required final LessonTimings timings,
      required final Color color,
      required final Color fadedColor}) = _$_Lesson;

  @override
  LessonFullNamesInDb get lesson;
  @override
  LessonTimings get timings;
  @override
  Color get color;
  @override
  Color get fadedColor;
  @override
  @JsonKey(ignore: true)
  _$$_LessonCopyWith<_$_Lesson> get copyWith =>
      throw _privateConstructorUsedError;
}
