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
  int get number => throw _privateConstructorUsedError;
  LessonFullTimings get timings => throw _privateConstructorUsedError;
  LessonType get type => throw _privateConstructorUsedError;
  String get typeShortName => throw _privateConstructorUsedError;
  String? get disciplineName => throw _privateConstructorUsedError;
  String? get place => throw _privateConstructorUsedError;
  List<String> get groupNames => throw _privateConstructorUsedError;
  List<String> get teacherNames => throw _privateConstructorUsedError;
  bool get isRemotely => throw _privateConstructorUsedError;
  bool get isElective => throw _privateConstructorUsedError;
  bool get isEvent => throw _privateConstructorUsedError;
  Color get defaultColor => throw _privateConstructorUsedError;
  int get emptyLessonsBefore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res, Lesson>;
  @useResult
  $Res call(
      {int number,
      LessonFullTimings timings,
      LessonType type,
      String typeShortName,
      String? disciplineName,
      String? place,
      List<String> groupNames,
      List<String> teacherNames,
      bool isRemotely,
      bool isElective,
      bool isEvent,
      Color defaultColor,
      int emptyLessonsBefore});

  $LessonFullTimingsCopyWith<$Res> get timings;
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
    Object? number = null,
    Object? timings = null,
    Object? type = null,
    Object? typeShortName = null,
    Object? disciplineName = freezed,
    Object? place = freezed,
    Object? groupNames = null,
    Object? teacherNames = null,
    Object? isRemotely = null,
    Object? isElective = null,
    Object? isEvent = null,
    Object? defaultColor = null,
    Object? emptyLessonsBefore = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      timings: null == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as LessonFullTimings,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LessonType,
      typeShortName: null == typeShortName
          ? _value.typeShortName
          : typeShortName // ignore: cast_nullable_to_non_nullable
              as String,
      disciplineName: freezed == disciplineName
          ? _value.disciplineName
          : disciplineName // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      groupNames: null == groupNames
          ? _value.groupNames
          : groupNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      teacherNames: null == teacherNames
          ? _value.teacherNames
          : teacherNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isRemotely: null == isRemotely
          ? _value.isRemotely
          : isRemotely // ignore: cast_nullable_to_non_nullable
              as bool,
      isElective: null == isElective
          ? _value.isElective
          : isElective // ignore: cast_nullable_to_non_nullable
              as bool,
      isEvent: null == isEvent
          ? _value.isEvent
          : isEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultColor: null == defaultColor
          ? _value.defaultColor
          : defaultColor // ignore: cast_nullable_to_non_nullable
              as Color,
      emptyLessonsBefore: null == emptyLessonsBefore
          ? _value.emptyLessonsBefore
          : emptyLessonsBefore // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LessonFullTimingsCopyWith<$Res> get timings {
    return $LessonFullTimingsCopyWith<$Res>(_value.timings, (value) {
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
      {int number,
      LessonFullTimings timings,
      LessonType type,
      String typeShortName,
      String? disciplineName,
      String? place,
      List<String> groupNames,
      List<String> teacherNames,
      bool isRemotely,
      bool isElective,
      bool isEvent,
      Color defaultColor,
      int emptyLessonsBefore});

  @override
  $LessonFullTimingsCopyWith<$Res> get timings;
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
    Object? number = null,
    Object? timings = null,
    Object? type = null,
    Object? typeShortName = null,
    Object? disciplineName = freezed,
    Object? place = freezed,
    Object? groupNames = null,
    Object? teacherNames = null,
    Object? isRemotely = null,
    Object? isElective = null,
    Object? isEvent = null,
    Object? defaultColor = null,
    Object? emptyLessonsBefore = null,
  }) {
    return _then(_$_Lesson(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      timings: null == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as LessonFullTimings,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LessonType,
      typeShortName: null == typeShortName
          ? _value.typeShortName
          : typeShortName // ignore: cast_nullable_to_non_nullable
              as String,
      disciplineName: freezed == disciplineName
          ? _value.disciplineName
          : disciplineName // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      groupNames: null == groupNames
          ? _value._groupNames
          : groupNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      teacherNames: null == teacherNames
          ? _value._teacherNames
          : teacherNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isRemotely: null == isRemotely
          ? _value.isRemotely
          : isRemotely // ignore: cast_nullable_to_non_nullable
              as bool,
      isElective: null == isElective
          ? _value.isElective
          : isElective // ignore: cast_nullable_to_non_nullable
              as bool,
      isEvent: null == isEvent
          ? _value.isEvent
          : isEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultColor: null == defaultColor
          ? _value.defaultColor
          : defaultColor // ignore: cast_nullable_to_non_nullable
              as Color,
      emptyLessonsBefore: null == emptyLessonsBefore
          ? _value.emptyLessonsBefore
          : emptyLessonsBefore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Lesson implements _Lesson {
  _$_Lesson(
      {required this.number,
      required this.timings,
      required this.type,
      required this.typeShortName,
      required this.disciplineName,
      required this.place,
      required final List<String> groupNames,
      required final List<String> teacherNames,
      required this.isRemotely,
      required this.isElective,
      required this.isEvent,
      required this.defaultColor,
      required this.emptyLessonsBefore})
      : _groupNames = groupNames,
        _teacherNames = teacherNames;

  @override
  final int number;
  @override
  final LessonFullTimings timings;
  @override
  final LessonType type;
  @override
  final String typeShortName;
  @override
  final String? disciplineName;
  @override
  final String? place;
  final List<String> _groupNames;
  @override
  List<String> get groupNames {
    if (_groupNames is EqualUnmodifiableListView) return _groupNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupNames);
  }

  final List<String> _teacherNames;
  @override
  List<String> get teacherNames {
    if (_teacherNames is EqualUnmodifiableListView) return _teacherNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teacherNames);
  }

  @override
  final bool isRemotely;
  @override
  final bool isElective;
  @override
  final bool isEvent;
  @override
  final Color defaultColor;
  @override
  final int emptyLessonsBefore;

  @override
  String toString() {
    return 'Lesson(number: $number, timings: $timings, type: $type, typeShortName: $typeShortName, disciplineName: $disciplineName, place: $place, groupNames: $groupNames, teacherNames: $teacherNames, isRemotely: $isRemotely, isElective: $isElective, isEvent: $isEvent, defaultColor: $defaultColor, emptyLessonsBefore: $emptyLessonsBefore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lesson &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.timings, timings) || other.timings == timings) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeShortName, typeShortName) ||
                other.typeShortName == typeShortName) &&
            (identical(other.disciplineName, disciplineName) ||
                other.disciplineName == disciplineName) &&
            (identical(other.place, place) || other.place == place) &&
            const DeepCollectionEquality()
                .equals(other._groupNames, _groupNames) &&
            const DeepCollectionEquality()
                .equals(other._teacherNames, _teacherNames) &&
            (identical(other.isRemotely, isRemotely) ||
                other.isRemotely == isRemotely) &&
            (identical(other.isElective, isElective) ||
                other.isElective == isElective) &&
            (identical(other.isEvent, isEvent) || other.isEvent == isEvent) &&
            (identical(other.defaultColor, defaultColor) ||
                other.defaultColor == defaultColor) &&
            (identical(other.emptyLessonsBefore, emptyLessonsBefore) ||
                other.emptyLessonsBefore == emptyLessonsBefore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      number,
      timings,
      type,
      typeShortName,
      disciplineName,
      place,
      const DeepCollectionEquality().hash(_groupNames),
      const DeepCollectionEquality().hash(_teacherNames),
      isRemotely,
      isElective,
      isEvent,
      defaultColor,
      emptyLessonsBefore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonCopyWith<_$_Lesson> get copyWith =>
      __$$_LessonCopyWithImpl<_$_Lesson>(this, _$identity);
}

abstract class _Lesson implements Lesson {
  factory _Lesson(
      {required final int number,
      required final LessonFullTimings timings,
      required final LessonType type,
      required final String typeShortName,
      required final String? disciplineName,
      required final String? place,
      required final List<String> groupNames,
      required final List<String> teacherNames,
      required final bool isRemotely,
      required final bool isElective,
      required final bool isEvent,
      required final Color defaultColor,
      required final int emptyLessonsBefore}) = _$_Lesson;

  @override
  int get number;
  @override
  LessonFullTimings get timings;
  @override
  LessonType get type;
  @override
  String get typeShortName;
  @override
  String? get disciplineName;
  @override
  String? get place;
  @override
  List<String> get groupNames;
  @override
  List<String> get teacherNames;
  @override
  bool get isRemotely;
  @override
  bool get isElective;
  @override
  bool get isEvent;
  @override
  Color get defaultColor;
  @override
  int get emptyLessonsBefore;
  @override
  @JsonKey(ignore: true)
  _$$_LessonCopyWith<_$_Lesson> get copyWith =>
      throw _privateConstructorUsedError;
}
