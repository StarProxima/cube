// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'app_text_styles.dart';

// **************************************************************************
// ThemeTailorGenerator
// **************************************************************************

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
    required this.appBarTitle,
    required this.largeTitle,
    required this.subTitle,
    required this.label,
    required this.smallLabel,
    required this.chipLabel,
  });

  final TextStyle appBarTitle;
  final TextStyle largeTitle;
  final TextStyle subTitle;
  final TextStyle label;
  final TextStyle smallLabel;
  final TextStyle chipLabel;

  static final AppTextStyles light = AppTextStyles(
    appBarTitle: _$AppTextStyles.appBarTitle[0],
    largeTitle: _$AppTextStyles.largeTitle[0],
    subTitle: _$AppTextStyles.subTitle[0],
    label: _$AppTextStyles.label[0],
    smallLabel: _$AppTextStyles.smallLabel[0],
    chipLabel: _$AppTextStyles.chipLabel[0],
  );

  static final themes = [
    light,
  ];

  @override
  AppTextStyles copyWith({
    TextStyle? appBarTitle,
    TextStyle? largeTitle,
    TextStyle? subTitle,
    TextStyle? label,
    TextStyle? smallLabel,
    TextStyle? chipLabel,
  }) {
    return AppTextStyles(
      appBarTitle: appBarTitle ?? this.appBarTitle,
      largeTitle: largeTitle ?? this.largeTitle,
      subTitle: subTitle ?? this.subTitle,
      label: label ?? this.label,
      smallLabel: smallLabel ?? this.smallLabel,
      chipLabel: chipLabel ?? this.chipLabel,
    );
  }

  @override
  AppTextStyles lerp(ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) return this;
    return AppTextStyles(
      appBarTitle: TextStyle.lerp(appBarTitle, other.appBarTitle, t)!,
      largeTitle: TextStyle.lerp(largeTitle, other.largeTitle, t)!,
      subTitle: TextStyle.lerp(subTitle, other.subTitle, t)!,
      label: TextStyle.lerp(label, other.label, t)!,
      smallLabel: TextStyle.lerp(smallLabel, other.smallLabel, t)!,
      chipLabel: TextStyle.lerp(chipLabel, other.chipLabel, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTextStyles &&
            const DeepCollectionEquality()
                .equals(appBarTitle, other.appBarTitle) &&
            const DeepCollectionEquality()
                .equals(largeTitle, other.largeTitle) &&
            const DeepCollectionEquality().equals(subTitle, other.subTitle) &&
            const DeepCollectionEquality().equals(label, other.label) &&
            const DeepCollectionEquality()
                .equals(smallLabel, other.smallLabel) &&
            const DeepCollectionEquality().equals(chipLabel, other.chipLabel));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(appBarTitle),
        const DeepCollectionEquality().hash(largeTitle),
        const DeepCollectionEquality().hash(subTitle),
        const DeepCollectionEquality().hash(label),
        const DeepCollectionEquality().hash(smallLabel),
        const DeepCollectionEquality().hash(chipLabel));
  }
}
