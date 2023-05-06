// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_search_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimetableSearchInfo {
  String? get label => throw _privateConstructorUsedError;
  TimetableInfo get info => throw _privateConstructorUsedError;
  TimetableSearchGroupInfo? get groupInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimetableSearchInfoCopyWith<TimetableSearchInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableSearchInfoCopyWith<$Res> {
  factory $TimetableSearchInfoCopyWith(
          TimetableSearchInfo value, $Res Function(TimetableSearchInfo) then) =
      _$TimetableSearchInfoCopyWithImpl<$Res, TimetableSearchInfo>;
  @useResult
  $Res call(
      {String? label, TimetableInfo info, TimetableSearchGroupInfo? groupInfo});

  $TimetableInfoCopyWith<$Res> get info;
  $TimetableSearchGroupInfoCopyWith<$Res>? get groupInfo;
}

/// @nodoc
class _$TimetableSearchInfoCopyWithImpl<$Res, $Val extends TimetableSearchInfo>
    implements $TimetableSearchInfoCopyWith<$Res> {
  _$TimetableSearchInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? info = null,
    Object? groupInfo = freezed,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as TimetableInfo,
      groupInfo: freezed == groupInfo
          ? _value.groupInfo
          : groupInfo // ignore: cast_nullable_to_non_nullable
              as TimetableSearchGroupInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimetableInfoCopyWith<$Res> get info {
    return $TimetableInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimetableSearchGroupInfoCopyWith<$Res>? get groupInfo {
    if (_value.groupInfo == null) {
      return null;
    }

    return $TimetableSearchGroupInfoCopyWith<$Res>(_value.groupInfo!, (value) {
      return _then(_value.copyWith(groupInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TimetableSearchInfoCopyWith<$Res>
    implements $TimetableSearchInfoCopyWith<$Res> {
  factory _$$_TimetableSearchInfoCopyWith(_$_TimetableSearchInfo value,
          $Res Function(_$_TimetableSearchInfo) then) =
      __$$_TimetableSearchInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? label, TimetableInfo info, TimetableSearchGroupInfo? groupInfo});

  @override
  $TimetableInfoCopyWith<$Res> get info;
  @override
  $TimetableSearchGroupInfoCopyWith<$Res>? get groupInfo;
}

/// @nodoc
class __$$_TimetableSearchInfoCopyWithImpl<$Res>
    extends _$TimetableSearchInfoCopyWithImpl<$Res, _$_TimetableSearchInfo>
    implements _$$_TimetableSearchInfoCopyWith<$Res> {
  __$$_TimetableSearchInfoCopyWithImpl(_$_TimetableSearchInfo _value,
      $Res Function(_$_TimetableSearchInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? info = null,
    Object? groupInfo = freezed,
  }) {
    return _then(_$_TimetableSearchInfo(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as TimetableInfo,
      groupInfo: freezed == groupInfo
          ? _value.groupInfo
          : groupInfo // ignore: cast_nullable_to_non_nullable
              as TimetableSearchGroupInfo?,
    ));
  }
}

/// @nodoc

class _$_TimetableSearchInfo implements _TimetableSearchInfo {
  _$_TimetableSearchInfo({this.label, required this.info, this.groupInfo});

  @override
  final String? label;
  @override
  final TimetableInfo info;
  @override
  final TimetableSearchGroupInfo? groupInfo;

  @override
  String toString() {
    return 'TimetableSearchInfo(label: $label, info: $info, groupInfo: $groupInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimetableSearchInfo &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.groupInfo, groupInfo) ||
                other.groupInfo == groupInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, info, groupInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimetableSearchInfoCopyWith<_$_TimetableSearchInfo> get copyWith =>
      __$$_TimetableSearchInfoCopyWithImpl<_$_TimetableSearchInfo>(
          this, _$identity);
}

abstract class _TimetableSearchInfo implements TimetableSearchInfo {
  factory _TimetableSearchInfo(
      {final String? label,
      required final TimetableInfo info,
      final TimetableSearchGroupInfo? groupInfo}) = _$_TimetableSearchInfo;

  @override
  String? get label;
  @override
  TimetableInfo get info;
  @override
  TimetableSearchGroupInfo? get groupInfo;
  @override
  @JsonKey(ignore: true)
  _$$_TimetableSearchInfoCopyWith<_$_TimetableSearchInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
