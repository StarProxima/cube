// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_text_styles.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
    required this.appBarTitle,
    required this.chipLabel,
    required this.label,
    required this.largeTitle,
    required this.smallLabel,
    required this.smallSubTitle,
    required this.subTitle,
  });

  final TextStyle appBarTitle;
  final TextStyle chipLabel;
  final TextStyle label;
  final TextStyle largeTitle;
  final TextStyle smallLabel;
  final TextStyle smallSubTitle;
  final TextStyle subTitle;

  static final AppTextStyles light = AppTextStyles(
    appBarTitle: _$AppTextStyles.appBarTitle[0],
    chipLabel: _$AppTextStyles.chipLabel[0],
    label: _$AppTextStyles.label[0],
    largeTitle: _$AppTextStyles.largeTitle[0],
    smallLabel: _$AppTextStyles.smallLabel[0],
    smallSubTitle: _$AppTextStyles.smallSubTitle[0],
    subTitle: _$AppTextStyles.subTitle[0],
  );

  static final themes = [
    light,
  ];

  @override
  AppTextStyles copyWith({
    TextStyle? appBarTitle,
    TextStyle? chipLabel,
    TextStyle? label,
    TextStyle? largeTitle,
    TextStyle? smallLabel,
    TextStyle? smallSubTitle,
    TextStyle? subTitle,
  }) {
    return AppTextStyles(
      appBarTitle: appBarTitle ?? this.appBarTitle,
      chipLabel: chipLabel ?? this.chipLabel,
      label: label ?? this.label,
      largeTitle: largeTitle ?? this.largeTitle,
      smallLabel: smallLabel ?? this.smallLabel,
      smallSubTitle: smallSubTitle ?? this.smallSubTitle,
      subTitle: subTitle ?? this.subTitle,
    );
  }

  @override
  AppTextStyles lerp(covariant ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) return this as AppTextStyles;
    return AppTextStyles(
      appBarTitle: TextStyle.lerp(appBarTitle, other.appBarTitle, t)!,
      chipLabel: TextStyle.lerp(chipLabel, other.chipLabel, t)!,
      label: TextStyle.lerp(label, other.label, t)!,
      largeTitle: TextStyle.lerp(largeTitle, other.largeTitle, t)!,
      smallLabel: TextStyle.lerp(smallLabel, other.smallLabel, t)!,
      smallSubTitle: TextStyle.lerp(smallSubTitle, other.smallSubTitle, t)!,
      subTitle: TextStyle.lerp(subTitle, other.subTitle, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTextStyles &&
            const DeepCollectionEquality()
                .equals(appBarTitle, other.appBarTitle) &&
            const DeepCollectionEquality().equals(chipLabel, other.chipLabel) &&
            const DeepCollectionEquality().equals(label, other.label) &&
            const DeepCollectionEquality()
                .equals(largeTitle, other.largeTitle) &&
            const DeepCollectionEquality()
                .equals(smallLabel, other.smallLabel) &&
            const DeepCollectionEquality()
                .equals(smallSubTitle, other.smallSubTitle) &&
            const DeepCollectionEquality().equals(subTitle, other.subTitle));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(appBarTitle),
      const DeepCollectionEquality().hash(chipLabel),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(largeTitle),
      const DeepCollectionEquality().hash(smallLabel),
      const DeepCollectionEquality().hash(smallSubTitle),
      const DeepCollectionEquality().hash(subTitle),
    );
  }
}
