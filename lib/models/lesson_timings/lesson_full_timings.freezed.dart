// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_full_timings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LessonFullTimings {
  TimeOfDay get start => throw _privateConstructorUsedError;
  TimeOfDay get end => throw _privateConstructorUsedError;
  DateTime get startDateTime => throw _privateConstructorUsedError;
  DateTime get endDateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonFullTimingsCopyWith<LessonFullTimings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonFullTimingsCopyWith<$Res> {
  factory $LessonFullTimingsCopyWith(
          LessonFullTimings value, $Res Function(LessonFullTimings) then) =
      _$LessonFullTimingsCopyWithImpl<$Res, LessonFullTimings>;
  @useResult
  $Res call(
      {TimeOfDay start,
      TimeOfDay end,
      DateTime startDateTime,
      DateTime endDateTime});
}

/// @nodoc
class _$LessonFullTimingsCopyWithImpl<$Res, $Val extends LessonFullTimings>
    implements $LessonFullTimingsCopyWith<$Res> {
  _$LessonFullTimingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? startDateTime = null,
    Object? endDateTime = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LessonFullTimingsCopyWith<$Res>
    implements $LessonFullTimingsCopyWith<$Res> {
  factory _$$_LessonFullTimingsCopyWith(_$_LessonFullTimings value,
          $Res Function(_$_LessonFullTimings) then) =
      __$$_LessonFullTimingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TimeOfDay start,
      TimeOfDay end,
      DateTime startDateTime,
      DateTime endDateTime});
}

/// @nodoc
class __$$_LessonFullTimingsCopyWithImpl<$Res>
    extends _$LessonFullTimingsCopyWithImpl<$Res, _$_LessonFullTimings>
    implements _$$_LessonFullTimingsCopyWith<$Res> {
  __$$_LessonFullTimingsCopyWithImpl(
      _$_LessonFullTimings _value, $Res Function(_$_LessonFullTimings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? startDateTime = null,
    Object? endDateTime = null,
  }) {
    return _then(_$_LessonFullTimings(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_LessonFullTimings implements _LessonFullTimings {
  _$_LessonFullTimings(
      {required this.start,
      required this.end,
      required this.startDateTime,
      required this.endDateTime});

  @override
  final TimeOfDay start;
  @override
  final TimeOfDay end;
  @override
  final DateTime startDateTime;
  @override
  final DateTime endDateTime;

  @override
  String toString() {
    return 'LessonFullTimings(start: $start, end: $end, startDateTime: $startDateTime, endDateTime: $endDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonFullTimings &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, start, end, startDateTime, endDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonFullTimingsCopyWith<_$_LessonFullTimings> get copyWith =>
      __$$_LessonFullTimingsCopyWithImpl<_$_LessonFullTimings>(
          this, _$identity);
}

abstract class _LessonFullTimings implements LessonFullTimings {
  factory _LessonFullTimings(
      {required final TimeOfDay start,
      required final TimeOfDay end,
      required final DateTime startDateTime,
      required final DateTime endDateTime}) = _$_LessonFullTimings;

  @override
  TimeOfDay get start;
  @override
  TimeOfDay get end;
  @override
  DateTime get startDateTime;
  @override
  DateTime get endDateTime;
  @override
  @JsonKey(ignore: true)
  _$$_LessonFullTimingsCopyWith<_$_LessonFullTimings> get copyWith =>
      throw _privateConstructorUsedError;
}