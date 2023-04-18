// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppSettings {
  @HiveField(0)
  AppThemeMode get appThemeMode => throw _privateConstructorUsedError;
  @HiveField(1)
  AppLessonColorsMode get lessonColorsMode =>
      throw _privateConstructorUsedError;
  @HiveField(2)
  LessonCardLessonTypePosition get lessonCardLessonTypePosition =>
      throw _privateConstructorUsedError;
  @HiveField(3)
  LessonCardRecessDisplayCondition get lessonCardRecessDisplayCondition =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppSettingsCopyWith<AppSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsCopyWith<$Res> {
  factory $AppSettingsCopyWith(
          AppSettings value, $Res Function(AppSettings) then) =
      _$AppSettingsCopyWithImpl<$Res, AppSettings>;
  @useResult
  $Res call(
      {@HiveField(0)
          AppThemeMode appThemeMode,
      @HiveField(1)
          AppLessonColorsMode lessonColorsMode,
      @HiveField(2)
          LessonCardLessonTypePosition lessonCardLessonTypePosition,
      @HiveField(3)
          LessonCardRecessDisplayCondition lessonCardRecessDisplayCondition});
}

/// @nodoc
class _$AppSettingsCopyWithImpl<$Res, $Val extends AppSettings>
    implements $AppSettingsCopyWith<$Res> {
  _$AppSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appThemeMode = null,
    Object? lessonColorsMode = null,
    Object? lessonCardLessonTypePosition = null,
    Object? lessonCardRecessDisplayCondition = null,
  }) {
    return _then(_value.copyWith(
      appThemeMode: null == appThemeMode
          ? _value.appThemeMode
          : appThemeMode // ignore: cast_nullable_to_non_nullable
              as AppThemeMode,
      lessonColorsMode: null == lessonColorsMode
          ? _value.lessonColorsMode
          : lessonColorsMode // ignore: cast_nullable_to_non_nullable
              as AppLessonColorsMode,
      lessonCardLessonTypePosition: null == lessonCardLessonTypePosition
          ? _value.lessonCardLessonTypePosition
          : lessonCardLessonTypePosition // ignore: cast_nullable_to_non_nullable
              as LessonCardLessonTypePosition,
      lessonCardRecessDisplayCondition: null == lessonCardRecessDisplayCondition
          ? _value.lessonCardRecessDisplayCondition
          : lessonCardRecessDisplayCondition // ignore: cast_nullable_to_non_nullable
              as LessonCardRecessDisplayCondition,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppSettingsCopyWith<$Res>
    implements $AppSettingsCopyWith<$Res> {
  factory _$$_AppSettingsCopyWith(
          _$_AppSettings value, $Res Function(_$_AppSettings) then) =
      __$$_AppSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0)
          AppThemeMode appThemeMode,
      @HiveField(1)
          AppLessonColorsMode lessonColorsMode,
      @HiveField(2)
          LessonCardLessonTypePosition lessonCardLessonTypePosition,
      @HiveField(3)
          LessonCardRecessDisplayCondition lessonCardRecessDisplayCondition});
}

/// @nodoc
class __$$_AppSettingsCopyWithImpl<$Res>
    extends _$AppSettingsCopyWithImpl<$Res, _$_AppSettings>
    implements _$$_AppSettingsCopyWith<$Res> {
  __$$_AppSettingsCopyWithImpl(
      _$_AppSettings _value, $Res Function(_$_AppSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appThemeMode = null,
    Object? lessonColorsMode = null,
    Object? lessonCardLessonTypePosition = null,
    Object? lessonCardRecessDisplayCondition = null,
  }) {
    return _then(_$_AppSettings(
      appThemeMode: null == appThemeMode
          ? _value.appThemeMode
          : appThemeMode // ignore: cast_nullable_to_non_nullable
              as AppThemeMode,
      lessonColorsMode: null == lessonColorsMode
          ? _value.lessonColorsMode
          : lessonColorsMode // ignore: cast_nullable_to_non_nullable
              as AppLessonColorsMode,
      lessonCardLessonTypePosition: null == lessonCardLessonTypePosition
          ? _value.lessonCardLessonTypePosition
          : lessonCardLessonTypePosition // ignore: cast_nullable_to_non_nullable
              as LessonCardLessonTypePosition,
      lessonCardRecessDisplayCondition: null == lessonCardRecessDisplayCondition
          ? _value.lessonCardRecessDisplayCondition
          : lessonCardRecessDisplayCondition // ignore: cast_nullable_to_non_nullable
              as LessonCardRecessDisplayCondition,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 7)
class _$_AppSettings implements _AppSettings {
  _$_AppSettings(
      {@HiveField(0) this.appThemeMode = AppThemeMode.system,
      @HiveField(1) this.lessonColorsMode = AppLessonColorsMode.cube,
      @HiveField(2) this.lessonCardLessonTypePosition =
          LessonCardLessonTypePosition.afterBottomLeftBlock,
      @HiveField(3) this.lessonCardRecessDisplayCondition =
          LessonCardRecessDisplayCondition.always});

  @override
  @JsonKey()
  @HiveField(0)
  final AppThemeMode appThemeMode;
  @override
  @JsonKey()
  @HiveField(1)
  final AppLessonColorsMode lessonColorsMode;
  @override
  @JsonKey()
  @HiveField(2)
  final LessonCardLessonTypePosition lessonCardLessonTypePosition;
  @override
  @JsonKey()
  @HiveField(3)
  final LessonCardRecessDisplayCondition lessonCardRecessDisplayCondition;

  @override
  String toString() {
    return 'AppSettings(appThemeMode: $appThemeMode, lessonColorsMode: $lessonColorsMode, lessonCardLessonTypePosition: $lessonCardLessonTypePosition, lessonCardRecessDisplayCondition: $lessonCardRecessDisplayCondition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSettings &&
            (identical(other.appThemeMode, appThemeMode) ||
                other.appThemeMode == appThemeMode) &&
            (identical(other.lessonColorsMode, lessonColorsMode) ||
                other.lessonColorsMode == lessonColorsMode) &&
            (identical(other.lessonCardLessonTypePosition,
                    lessonCardLessonTypePosition) ||
                other.lessonCardLessonTypePosition ==
                    lessonCardLessonTypePosition) &&
            (identical(other.lessonCardRecessDisplayCondition,
                    lessonCardRecessDisplayCondition) ||
                other.lessonCardRecessDisplayCondition ==
                    lessonCardRecessDisplayCondition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appThemeMode, lessonColorsMode,
      lessonCardLessonTypePosition, lessonCardRecessDisplayCondition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppSettingsCopyWith<_$_AppSettings> get copyWith =>
      __$$_AppSettingsCopyWithImpl<_$_AppSettings>(this, _$identity);
}

abstract class _AppSettings implements AppSettings {
  factory _AppSettings(
      {@HiveField(0)
          final AppThemeMode appThemeMode,
      @HiveField(1)
          final AppLessonColorsMode lessonColorsMode,
      @HiveField(2)
          final LessonCardLessonTypePosition lessonCardLessonTypePosition,
      @HiveField(3)
          final LessonCardRecessDisplayCondition
              lessonCardRecessDisplayCondition}) = _$_AppSettings;

  @override
  @HiveField(0)
  AppThemeMode get appThemeMode;
  @override
  @HiveField(1)
  AppLessonColorsMode get lessonColorsMode;
  @override
  @HiveField(2)
  LessonCardLessonTypePosition get lessonCardLessonTypePosition;
  @override
  @HiveField(3)
  LessonCardRecessDisplayCondition get lessonCardRecessDisplayCondition;
  @override
  @JsonKey(ignore: true)
  _$$_AppSettingsCopyWith<_$_AppSettings> get copyWith =>
      throw _privateConstructorUsedError;
}