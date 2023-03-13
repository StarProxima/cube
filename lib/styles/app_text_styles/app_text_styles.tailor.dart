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
  });

  final TextStyle largeTitle;

  static final AppTextStyles light = AppTextStyles(
    largeTitle: _$AppTextStyles.largeTitle[0],
  );

  static final themes = [
    light,
  ];

  @override
  AppTextStyles copyWith({
    TextStyle? largeTitle,
  }) {
    return AppTextStyles(
      largeTitle: largeTitle ?? this.largeTitle,
    );
  }

  @override
  AppTextStyles lerp(ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) return this;
    return AppTextStyles(
      largeTitle: TextStyle.lerp(largeTitle, other.largeTitle, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTextStyles &&
            const DeepCollectionEquality()
                .equals(largeTitle, other.largeTitle));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(largeTitle));
  }
}
