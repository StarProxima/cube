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
  @HiveField(0)
  int get number => throw _privateConstructorUsedError;
  @HiveField(1)
  LessonFullTimings get timings => throw _privateConstructorUsedError;
  @HiveField(2)
  LessonType get type => throw _privateConstructorUsedError;
  @HiveField(3)
  String get typeShortName => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get disciplineName => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get place => throw _privateConstructorUsedError;
  @HiveField(6)
  List<String> get groupNames => throw _privateConstructorUsedError;
  @HiveField(7)
  List<String> get teacherNames => throw _privateConstructorUsedError;
  @HiveField(8)
  bool get isRemotely => throw _privateConstructorUsedError;
  @HiveField(9)
  bool get isElective => throw _privateConstructorUsedError;
  @HiveField(10)
  bool get isEvent => throw _privateConstructorUsedError;
  @HiveField(11)
  Color get defaultColor => throw _privateConstructorUsedError;
  @HiveField(12)
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
      {@HiveField(0) int number,
      @HiveField(1) LessonFullTimings timings,
      @HiveField(2) LessonType type,
      @HiveField(3) String typeShortName,
      @HiveField(4) String? disciplineName,
      @HiveField(5) String? place,
      @HiveField(6) List<String> groupNames,
      @HiveField(7) List<String> teacherNames,
      @HiveField(8) bool isRemotely,
      @HiveField(9) bool isElective,
      @HiveField(10) bool isEvent,
      @HiveField(11) Color defaultColor,
      @HiveField(12) int emptyLessonsBefore});

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
      {@HiveField(0) int number,
      @HiveField(1) LessonFullTimings timings,
      @HiveField(2) LessonType type,
      @HiveField(3) String typeShortName,
      @HiveField(4) String? disciplineName,
      @HiveField(5) String? place,
      @HiveField(6) List<String> groupNames,
      @HiveField(7) List<String> teacherNames,
      @HiveField(8) bool isRemotely,
      @HiveField(9) bool isElective,
      @HiveField(10) bool isEvent,
      @HiveField(11) Color defaultColor,
      @HiveField(12) int emptyLessonsBefore});

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

@HiveType(typeId: 0)
class _$_Lesson implements _Lesson {
  _$_Lesson(
      {@HiveField(0) required this.number,
      @HiveField(1) required this.timings,
      @HiveField(2) required this.type,
      @HiveField(3) required this.typeShortName,
      @HiveField(4) required this.disciplineName,
      @HiveField(5) required this.place,
      @HiveField(6) required final List<String> groupNames,
      @HiveField(7) required final List<String> teacherNames,
      @HiveField(8) required this.isRemotely,
      @HiveField(9) required this.isElective,
      @HiveField(10) required this.isEvent,
      @HiveField(11) required this.defaultColor,
      @HiveField(12) required this.emptyLessonsBefore})
      : _groupNames = groupNames,
        _teacherNames = teacherNames;

  @override
  @HiveField(0)
  final int number;
  @override
  @HiveField(1)
  final LessonFullTimings timings;
  @override
  @HiveField(2)
  final LessonType type;
  @override
  @HiveField(3)
  final String typeShortName;
  @override
  @HiveField(4)
  final String? disciplineName;
  @override
  @HiveField(5)
  final String? place;
  final List<String> _groupNames;
  @override
  @HiveField(6)
  List<String> get groupNames {
    if (_groupNames is EqualUnmodifiableListView) return _groupNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupNames);
  }

  final List<String> _teacherNames;
  @override
  @HiveField(7)
  List<String> get teacherNames {
    if (_teacherNames is EqualUnmodifiableListView) return _teacherNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teacherNames);
  }

  @override
  @HiveField(8)
  final bool isRemotely;
  @override
  @HiveField(9)
  final bool isElective;
  @override
  @HiveField(10)
  final bool isEvent;
  @override
  @HiveField(11)
  final Color defaultColor;
  @override
  @HiveField(12)
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
      {@HiveField(0) required final int number,
      @HiveField(1) required final LessonFullTimings timings,
      @HiveField(2) required final LessonType type,
      @HiveField(3) required final String typeShortName,
      @HiveField(4) required final String? disciplineName,
      @HiveField(5) required final String? place,
      @HiveField(6) required final List<String> groupNames,
      @HiveField(7) required final List<String> teacherNames,
      @HiveField(8) required final bool isRemotely,
      @HiveField(9) required final bool isElective,
      @HiveField(10) required final bool isEvent,
      @HiveField(11) required final Color defaultColor,
      @HiveField(12) required final int emptyLessonsBefore}) = _$_Lesson;

  @override
  @HiveField(0)
  int get number;
  @override
  @HiveField(1)
  LessonFullTimings get timings;
  @override
  @HiveField(2)
  LessonType get type;
  @override
  @HiveField(3)
  String get typeShortName;
  @override
  @HiveField(4)
  String? get disciplineName;
  @override
  @HiveField(5)
  String? get place;
  @override
  @HiveField(6)
  List<String> get groupNames;
  @override
  @HiveField(7)
  List<String> get teacherNames;
  @override
  @HiveField(8)
  bool get isRemotely;
  @override
  @HiveField(9)
  bool get isElective;
  @override
  @HiveField(10)
  bool get isEvent;
  @override
  @HiveField(11)
  Color get defaultColor;
  @override
  @HiveField(12)
  int get emptyLessonsBefore;
  @override
  @JsonKey(ignore: true)
  _$$_LessonCopyWith<_$_Lesson> get copyWith =>
      throw _privateConstructorUsedError;
}
