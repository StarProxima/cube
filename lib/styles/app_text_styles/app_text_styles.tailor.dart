// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'app_text_styles.dart';

// **************************************************************************
// ThemeTailorGenerator
// **************************************************************************

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
    required this.largeTitle,
    required this.label,
    required this.smallLabel,
    required this.chipLabel,
    required this.iconLabel,
  });

  final TextStyle largeTitle;
  final TextStyle label;
  final TextStyle smallLabel;
  final TextStyle chipLabel;
  final TextStyle iconLabel;

  static final AppTextStyles light = AppTextStyles(
    largeTitle: _$AppTextStyles.largeTitle[0],
    label: _$AppTextStyles.label[0],
    smallLabel: _$AppTextStyles.smallLabel[0],
    chipLabel: _$AppTextStyles.chipLabel[0],
    iconLabel: _$AppTextStyles.iconLabel[0],
  );

  static final themes = [
    light,
  ];

  @override
  AppTextStyles copyWith({
    TextStyle? largeTitle,
    TextStyle? label,
    TextStyle? smallLabel,
    TextStyle? chipLabel,
    TextStyle? iconLabel,
  }) {
    return AppTextStyles(
      largeTitle: largeTitle ?? this.largeTitle,
      label: label ?? this.label,
      smallLabel: smallLabel ?? this.smallLabel,
      chipLabel: chipLabel ?? this.chipLabel,
      iconLabel: iconLabel ?? this.iconLabel,
    );
  }

  @override
  AppTextStyles lerp(ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) return this;
    return AppTextStyles(
      largeTitle: TextStyle.lerp(largeTitle, other.largeTitle, t)!,
      label: TextStyle.lerp(label, other.label, t)!,
      smallLabel: TextStyle.lerp(smallLabel, other.smallLabel, t)!,
      chipLabel: TextStyle.lerp(chipLabel, other.chipLabel, t)!,
      iconLabel: TextStyle.lerp(iconLabel, other.iconLabel, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTextStyles &&
            const DeepCollectionEquality()
                .equals(largeTitle, other.largeTitle) &&
            const DeepCollectionEquality().equals(label, other.label) &&
            const DeepCollectionEquality()
                .equals(smallLabel, other.smallLabel) &&
            const DeepCollectionEquality().equals(chipLabel, other.chipLabel) &&
            const DeepCollectionEquality().equals(iconLabel, other.iconLabel));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(largeTitle),
        const DeepCollectionEquality().hash(label),
        const DeepCollectionEquality().hash(smallLabel),
        const DeepCollectionEquality().hash(chipLabel),
        const DeepCollectionEquality().hash(iconLabel));
  }
}
