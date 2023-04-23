// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_timings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LessonTimings {
  @HiveField(0)
  TimeOfDay get start => throw _privateConstructorUsedError;
  @HiveField(1)
  TimeOfDay get end => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonTimingsCopyWith<LessonTimings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonTimingsCopyWith<$Res> {
  factory $LessonTimingsCopyWith(
          LessonTimings value, $Res Function(LessonTimings) then) =
      _$LessonTimingsCopyWithImpl<$Res, LessonTimings>;
  @useResult
  $Res call({@HiveField(0) TimeOfDay start, @HiveField(1) TimeOfDay end});
}

/// @nodoc
class _$LessonTimingsCopyWithImpl<$Res, $Val extends LessonTimings>
    implements $LessonTimingsCopyWith<$Res> {
  _$LessonTimingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LessonTimingsCopyWith<$Res>
    implements $LessonTimingsCopyWith<$Res> {
  factory _$$_LessonTimingsCopyWith(
          _$_LessonTimings value, $Res Function(_$_LessonTimings) then) =
      __$$_LessonTimingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) TimeOfDay start, @HiveField(1) TimeOfDay end});
}

/// @nodoc
class __$$_LessonTimingsCopyWithImpl<$Res>
    extends _$LessonTimingsCopyWithImpl<$Res, _$_LessonTimings>
    implements _$$_LessonTimingsCopyWith<$Res> {
  __$$_LessonTimingsCopyWithImpl(
      _$_LessonTimings _value, $Res Function(_$_LessonTimings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$_LessonTimings(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 2)
class _$_LessonTimings implements _LessonTimings {
  _$_LessonTimings(
      {@HiveField(0) required this.start, @HiveField(1) required this.end});

  @override
  @HiveField(0)
  final TimeOfDay start;
  @override
  @HiveField(1)
  final TimeOfDay end;

  @override
  String toString() {
    return 'LessonTimings(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonTimings &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonTimingsCopyWith<_$_LessonTimings> get copyWith =>
      __$$_LessonTimingsCopyWithImpl<_$_LessonTimings>(this, _$identity);
}

abstract class _LessonTimings implements LessonTimings {
  factory _LessonTimings(
      {@HiveField(0) required final TimeOfDay start,
      @HiveField(1) required final TimeOfDay end}) = _$_LessonTimings;

  @override
  @HiveField(0)
  TimeOfDay get start;
  @override
  @HiveField(1)
  TimeOfDay get end;
  @override
  @JsonKey(ignore: true)
  _$$_LessonTimingsCopyWith<_$_LessonTimings> get copyWith =>
      throw _privateConstructorUsedError;
}
