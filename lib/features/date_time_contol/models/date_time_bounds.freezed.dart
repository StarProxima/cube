// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_time_bounds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DateTimeBounds {
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DateTimeBoundsCopyWith<DateTimeBounds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateTimeBoundsCopyWith<$Res> {
  factory $DateTimeBoundsCopyWith(
          DateTimeBounds value, $Res Function(DateTimeBounds) then) =
      _$DateTimeBoundsCopyWithImpl<$Res, DateTimeBounds>;
  @useResult
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class _$DateTimeBoundsCopyWithImpl<$Res, $Val extends DateTimeBounds>
    implements $DateTimeBoundsCopyWith<$Res> {
  _$DateTimeBoundsCopyWithImpl(this._value, this._then);

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
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DateTimeBoundsCopyWith<$Res>
    implements $DateTimeBoundsCopyWith<$Res> {
  factory _$$_DateTimeBoundsCopyWith(
          _$_DateTimeBounds value, $Res Function(_$_DateTimeBounds) then) =
      __$$_DateTimeBoundsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class __$$_DateTimeBoundsCopyWithImpl<$Res>
    extends _$DateTimeBoundsCopyWithImpl<$Res, _$_DateTimeBounds>
    implements _$$_DateTimeBoundsCopyWith<$Res> {
  __$$_DateTimeBoundsCopyWithImpl(
      _$_DateTimeBounds _value, $Res Function(_$_DateTimeBounds) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$_DateTimeBounds(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DateTimeBounds implements _DateTimeBounds {
  _$_DateTimeBounds({required this.start, required this.end});

  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'DateTimeBounds(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateTimeBounds &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateTimeBoundsCopyWith<_$_DateTimeBounds> get copyWith =>
      __$$_DateTimeBoundsCopyWithImpl<_$_DateTimeBounds>(this, _$identity);
}

abstract class _DateTimeBounds implements DateTimeBounds {
  factory _DateTimeBounds(
      {required final DateTime start,
      required final DateTime end}) = _$_DateTimeBounds;

  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  _$$_DateTimeBoundsCopyWith<_$_DateTimeBounds> get copyWith =>
      throw _privateConstructorUsedError;
}
