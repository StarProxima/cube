// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LessonEvent {
  LessonEventType get type => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get subTitle => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonEventCopyWith<LessonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonEventCopyWith<$Res> {
  factory $LessonEventCopyWith(
          LessonEvent value, $Res Function(LessonEvent) then) =
      _$LessonEventCopyWithImpl<$Res, LessonEvent>;
  @useResult
  $Res call(
      {LessonEventType type,
      String? title,
      String? subTitle,
      String? description});
}

/// @nodoc
class _$LessonEventCopyWithImpl<$Res, $Val extends LessonEvent>
    implements $LessonEventCopyWith<$Res> {
  _$LessonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LessonEventType,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subTitle: freezed == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LessonEventCopyWith<$Res>
    implements $LessonEventCopyWith<$Res> {
  factory _$$_LessonEventCopyWith(
          _$_LessonEvent value, $Res Function(_$_LessonEvent) then) =
      __$$_LessonEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LessonEventType type,
      String? title,
      String? subTitle,
      String? description});
}

/// @nodoc
class __$$_LessonEventCopyWithImpl<$Res>
    extends _$LessonEventCopyWithImpl<$Res, _$_LessonEvent>
    implements _$$_LessonEventCopyWith<$Res> {
  __$$_LessonEventCopyWithImpl(
      _$_LessonEvent _value, $Res Function(_$_LessonEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_LessonEvent(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LessonEventType,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subTitle: freezed == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LessonEvent implements _LessonEvent {
  _$_LessonEvent(
      {required this.type, this.title, this.subTitle, this.description});

  @override
  final LessonEventType type;
  @override
  final String? title;
  @override
  final String? subTitle;
  @override
  final String? description;

  @override
  String toString() {
    return 'LessonEvent(type: $type, title: $title, subTitle: $subTitle, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonEvent &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, title, subTitle, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonEventCopyWith<_$_LessonEvent> get copyWith =>
      __$$_LessonEventCopyWithImpl<_$_LessonEvent>(this, _$identity);
}

abstract class _LessonEvent implements LessonEvent {
  factory _LessonEvent(
      {required final LessonEventType type,
      final String? title,
      final String? subTitle,
      final String? description}) = _$_LessonEvent;

  @override
  LessonEventType get type;
  @override
  String? get title;
  @override
  String? get subTitle;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_LessonEventCopyWith<_$_LessonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
