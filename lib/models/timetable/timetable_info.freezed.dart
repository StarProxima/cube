// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimetableInfo {
  int get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  TimetableType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimetableInfoCopyWith<TimetableInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableInfoCopyWith<$Res> {
  factory $TimetableInfoCopyWith(
          TimetableInfo value, $Res Function(TimetableInfo) then) =
      _$TimetableInfoCopyWithImpl<$Res, TimetableInfo>;
  @useResult
  $Res call({int id, String label, TimetableType type});
}

/// @nodoc
class _$TimetableInfoCopyWithImpl<$Res, $Val extends TimetableInfo>
    implements $TimetableInfoCopyWith<$Res> {
  _$TimetableInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TimetableType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimetableInfoCopyWith<$Res>
    implements $TimetableInfoCopyWith<$Res> {
  factory _$$_TimetableInfoCopyWith(
          _$_TimetableInfo value, $Res Function(_$_TimetableInfo) then) =
      __$$_TimetableInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String label, TimetableType type});
}

/// @nodoc
class __$$_TimetableInfoCopyWithImpl<$Res>
    extends _$TimetableInfoCopyWithImpl<$Res, _$_TimetableInfo>
    implements _$$_TimetableInfoCopyWith<$Res> {
  __$$_TimetableInfoCopyWithImpl(
      _$_TimetableInfo _value, $Res Function(_$_TimetableInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? type = null,
  }) {
    return _then(_$_TimetableInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TimetableType,
    ));
  }
}

/// @nodoc

class _$_TimetableInfo implements _TimetableInfo {
  _$_TimetableInfo({required this.id, required this.label, required this.type});

  @override
  final int id;
  @override
  final String label;
  @override
  final TimetableType type;

  @override
  String toString() {
    return 'TimetableInfo(id: $id, label: $label, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimetableInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, label, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimetableInfoCopyWith<_$_TimetableInfo> get copyWith =>
      __$$_TimetableInfoCopyWithImpl<_$_TimetableInfo>(this, _$identity);
}

abstract class _TimetableInfo implements TimetableInfo {
  factory _TimetableInfo(
      {required final int id,
      required final String label,
      required final TimetableType type}) = _$_TimetableInfo;

  @override
  int get id;
  @override
  String get label;
  @override
  TimetableType get type;
  @override
  @JsonKey(ignore: true)
  _$$_TimetableInfoCopyWith<_$_TimetableInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
