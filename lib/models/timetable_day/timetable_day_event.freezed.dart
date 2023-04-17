// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_day_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimetableDayEvent {
  @HiveField(0)
  TimetableDayEventType get type => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get subTitle => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimetableDayEventCopyWith<TimetableDayEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableDayEventCopyWith<$Res> {
  factory $TimetableDayEventCopyWith(
          TimetableDayEvent value, $Res Function(TimetableDayEvent) then) =
      _$TimetableDayEventCopyWithImpl<$Res, TimetableDayEvent>;
  @useResult
  $Res call(
      {@HiveField(0) TimetableDayEventType type,
      @HiveField(1) String? title,
      @HiveField(2) String? subTitle,
      @HiveField(3) String? description});
}

/// @nodoc
class _$TimetableDayEventCopyWithImpl<$Res, $Val extends TimetableDayEvent>
    implements $TimetableDayEventCopyWith<$Res> {
  _$TimetableDayEventCopyWithImpl(this._value, this._then);

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
              as TimetableDayEventType,
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
abstract class _$$_TimetableDayEventCopyWith<$Res>
    implements $TimetableDayEventCopyWith<$Res> {
  factory _$$_TimetableDayEventCopyWith(_$_TimetableDayEvent value,
          $Res Function(_$_TimetableDayEvent) then) =
      __$$_TimetableDayEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) TimetableDayEventType type,
      @HiveField(1) String? title,
      @HiveField(2) String? subTitle,
      @HiveField(3) String? description});
}

/// @nodoc
class __$$_TimetableDayEventCopyWithImpl<$Res>
    extends _$TimetableDayEventCopyWithImpl<$Res, _$_TimetableDayEvent>
    implements _$$_TimetableDayEventCopyWith<$Res> {
  __$$_TimetableDayEventCopyWithImpl(
      _$_TimetableDayEvent _value, $Res Function(_$_TimetableDayEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_TimetableDayEvent(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TimetableDayEventType,
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

@HiveType(typeId: 5)
class _$_TimetableDayEvent implements _TimetableDayEvent {
  _$_TimetableDayEvent(
      {@HiveField(0) required this.type,
      @HiveField(1) this.title,
      @HiveField(2) this.subTitle,
      @HiveField(3) this.description});

  @override
  @HiveField(0)
  final TimetableDayEventType type;
  @override
  @HiveField(1)
  final String? title;
  @override
  @HiveField(2)
  final String? subTitle;
  @override
  @HiveField(3)
  final String? description;

  @override
  String toString() {
    return 'TimetableDayEvent(type: $type, title: $title, subTitle: $subTitle, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimetableDayEvent &&
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
  _$$_TimetableDayEventCopyWith<_$_TimetableDayEvent> get copyWith =>
      __$$_TimetableDayEventCopyWithImpl<_$_TimetableDayEvent>(
          this, _$identity);
}

abstract class _TimetableDayEvent implements TimetableDayEvent {
  factory _TimetableDayEvent(
      {@HiveField(0) required final TimetableDayEventType type,
      @HiveField(1) final String? title,
      @HiveField(2) final String? subTitle,
      @HiveField(3) final String? description}) = _$_TimetableDayEvent;

  @override
  @HiveField(0)
  TimetableDayEventType get type;
  @override
  @HiveField(1)
  String? get title;
  @override
  @HiveField(2)
  String? get subTitle;
  @override
  @HiveField(3)
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_TimetableDayEventCopyWith<_$_TimetableDayEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
