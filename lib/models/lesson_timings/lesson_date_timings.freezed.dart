// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_date_timings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LessonDateTimings {
  @HiveField(0)
  DateTime get startDateTime => throw _privateConstructorUsedError;
  @HiveField(1)
  DateTime get endDateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonDateTimingsCopyWith<LessonDateTimings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonDateTimingsCopyWith<$Res> {
  factory $LessonDateTimingsCopyWith(
          LessonDateTimings value, $Res Function(LessonDateTimings) then) =
      _$LessonDateTimingsCopyWithImpl<$Res, LessonDateTimings>;
  @useResult
  $Res call(
      {@HiveField(0) DateTime startDateTime,
      @HiveField(1) DateTime endDateTime});
}

/// @nodoc
class _$LessonDateTimingsCopyWithImpl<$Res, $Val extends LessonDateTimings>
    implements $LessonDateTimingsCopyWith<$Res> {
  _$LessonDateTimingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDateTime = null,
    Object? endDateTime = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_LessonDateTimingsCopyWith<$Res>
    implements $LessonDateTimingsCopyWith<$Res> {
  factory _$$_LessonDateTimingsCopyWith(_$_LessonDateTimings value,
          $Res Function(_$_LessonDateTimings) then) =
      __$$_LessonDateTimingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) DateTime startDateTime,
      @HiveField(1) DateTime endDateTime});
}

/// @nodoc
class __$$_LessonDateTimingsCopyWithImpl<$Res>
    extends _$LessonDateTimingsCopyWithImpl<$Res, _$_LessonDateTimings>
    implements _$$_LessonDateTimingsCopyWith<$Res> {
  __$$_LessonDateTimingsCopyWithImpl(
      _$_LessonDateTimings _value, $Res Function(_$_LessonDateTimings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDateTime = null,
    Object? endDateTime = null,
  }) {
    return _then(_$_LessonDateTimings(
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

@HiveType(typeId: 1)
class _$_LessonDateTimings implements _LessonDateTimings {
  _$_LessonDateTimings(
      {@HiveField(0) required this.startDateTime,
      @HiveField(1) required this.endDateTime});

  @override
  @HiveField(0)
  final DateTime startDateTime;
  @override
  @HiveField(1)
  final DateTime endDateTime;

  @override
  String toString() {
    return 'LessonDateTimings(startDateTime: $startDateTime, endDateTime: $endDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonDateTimings &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDateTime, endDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonDateTimingsCopyWith<_$_LessonDateTimings> get copyWith =>
      __$$_LessonDateTimingsCopyWithImpl<_$_LessonDateTimings>(
          this, _$identity);
}

abstract class _LessonDateTimings implements LessonDateTimings {
  factory _LessonDateTimings(
          {@HiveField(0) required final DateTime startDateTime,
          @HiveField(1) required final DateTime endDateTime}) =
      _$_LessonDateTimings;

  @override
  @HiveField(0)
  DateTime get startDateTime;
  @override
  @HiveField(1)
  DateTime get endDateTime;
  @override
  @JsonKey(ignore: true)
  _$$_LessonDateTimingsCopyWith<_$_LessonDateTimings> get copyWith =>
      throw _privateConstructorUsedError;
}
