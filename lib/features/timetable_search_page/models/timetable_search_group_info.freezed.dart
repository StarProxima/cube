// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_search_group_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimetableSearchGroupInfo {
  int get course => throw _privateConstructorUsedError;
  String get faculty => throw _privateConstructorUsedError;
  String? get direction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimetableSearchGroupInfoCopyWith<TimetableSearchGroupInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableSearchGroupInfoCopyWith<$Res> {
  factory $TimetableSearchGroupInfoCopyWith(TimetableSearchGroupInfo value,
          $Res Function(TimetableSearchGroupInfo) then) =
      _$TimetableSearchGroupInfoCopyWithImpl<$Res, TimetableSearchGroupInfo>;
  @useResult
  $Res call({int course, String faculty, String? direction});
}

/// @nodoc
class _$TimetableSearchGroupInfoCopyWithImpl<$Res,
        $Val extends TimetableSearchGroupInfo>
    implements $TimetableSearchGroupInfoCopyWith<$Res> {
  _$TimetableSearchGroupInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
    Object? faculty = null,
    Object? direction = freezed,
  }) {
    return _then(_value.copyWith(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as int,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimetableSearchGroupInfoCopyWith<$Res>
    implements $TimetableSearchGroupInfoCopyWith<$Res> {
  factory _$$_TimetableSearchGroupInfoCopyWith(
          _$_TimetableSearchGroupInfo value,
          $Res Function(_$_TimetableSearchGroupInfo) then) =
      __$$_TimetableSearchGroupInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int course, String faculty, String? direction});
}

/// @nodoc
class __$$_TimetableSearchGroupInfoCopyWithImpl<$Res>
    extends _$TimetableSearchGroupInfoCopyWithImpl<$Res,
        _$_TimetableSearchGroupInfo>
    implements _$$_TimetableSearchGroupInfoCopyWith<$Res> {
  __$$_TimetableSearchGroupInfoCopyWithImpl(_$_TimetableSearchGroupInfo _value,
      $Res Function(_$_TimetableSearchGroupInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
    Object? faculty = null,
    Object? direction = freezed,
  }) {
    return _then(_$_TimetableSearchGroupInfo(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as int,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TimetableSearchGroupInfo implements _TimetableSearchGroupInfo {
  _$_TimetableSearchGroupInfo(
      {required this.course, required this.faculty, this.direction});

  @override
  final int course;
  @override
  final String faculty;
  @override
  final String? direction;

  @override
  String toString() {
    return 'TimetableSearchGroupInfo(course: $course, faculty: $faculty, direction: $direction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimetableSearchGroupInfo &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.faculty, faculty) || other.faculty == faculty) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course, faculty, direction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimetableSearchGroupInfoCopyWith<_$_TimetableSearchGroupInfo>
      get copyWith => __$$_TimetableSearchGroupInfoCopyWithImpl<
          _$_TimetableSearchGroupInfo>(this, _$identity);
}

abstract class _TimetableSearchGroupInfo implements TimetableSearchGroupInfo {
  factory _TimetableSearchGroupInfo(
      {required final int course,
      required final String faculty,
      final String? direction}) = _$_TimetableSearchGroupInfo;

  @override
  int get course;
  @override
  String get faculty;
  @override
  String? get direction;
  @override
  @JsonKey(ignore: true)
  _$$_TimetableSearchGroupInfoCopyWith<_$_TimetableSearchGroupInfo>
      get copyWith => throw _privateConstructorUsedError;
}
