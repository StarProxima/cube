// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'app_colors.dart';

// **************************************************************************
// ThemeTailorGenerator
// **************************************************************************

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.primary,
    required this.background,
    required this.destructive,
    required this.text,
    required this.hintText,
    required this.subduedText,
    required this.border,
    required this.subduedBorder,
    required this.shadow,
    required this.white,
    required this.transperent,
  });

  final Color primary;
  final Color background;
  final Color destructive;
  final Color text;
  final Color hintText;
  final Color subduedText;
  final Color border;
  final Color subduedBorder;
  final Color shadow;
  final Color white;
  final Color transperent;

  static final AppColors light = AppColors(
    primary: _$AppColors.primary[0],
    background: _$AppColors.background[0],
    destructive: _$AppColors.destructive[0],
    text: _$AppColors.text[0],
    hintText: _$AppColors.hintText[0],
    subduedText: _$AppColors.subduedText[0],
    border: _$AppColors.border[0],
    subduedBorder: _$AppColors.subduedBorder[0],
    shadow: _$AppColors.shadow[0],
    white: _$AppColors.white[0],
    transperent: _$AppColors.transperent[0],
  );

  static final themes = [
    light,
  ];

  @override
  AppColors copyWith({
    Color? primary,
    Color? background,
    Color? destructive,
    Color? text,
    Color? hintText,
    Color? subduedText,
    Color? border,
    Color? subduedBorder,
    Color? shadow,
    Color? white,
    Color? transperent,
  }) {
    return AppColors(
      primary: primary ?? this.primary,
      background: background ?? this.background,
      destructive: destructive ?? this.destructive,
      text: text ?? this.text,
      hintText: hintText ?? this.hintText,
      subduedText: subduedText ?? this.subduedText,
      border: border ?? this.border,
      subduedBorder: subduedBorder ?? this.subduedBorder,
      shadow: shadow ?? this.shadow,
      white: white ?? this.white,
      transperent: transperent ?? this.transperent,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      primary: Color.lerp(primary, other.primary, t)!,
      background: Color.lerp(background, other.background, t)!,
      destructive: Color.lerp(destructive, other.destructive, t)!,
      text: Color.lerp(text, other.text, t)!,
      hintText: Color.lerp(hintText, other.hintText, t)!,
      subduedText: Color.lerp(subduedText, other.subduedText, t)!,
      border: Color.lerp(border, other.border, t)!,
      subduedBorder: Color.lerp(subduedBorder, other.subduedBorder, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      white: Color.lerp(white, other.white, t)!,
      transperent: Color.lerp(transperent, other.transperent, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColors &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality()
                .equals(background, other.background) &&
            const DeepCollectionEquality()
                .equals(destructive, other.destructive) &&
            const DeepCollectionEquality().equals(text, other.text) &&
            const DeepCollectionEquality().equals(hintText, other.hintText) &&
            const DeepCollectionEquality()
                .equals(subduedText, other.subduedText) &&
            const DeepCollectionEquality().equals(border, other.border) &&
            const DeepCollectionEquality()
                .equals(subduedBorder, other.subduedBorder) &&
            const DeepCollectionEquality().equals(shadow, other.shadow) &&
            const DeepCollectionEquality().equals(white, other.white) &&
            const DeepCollectionEquality()
                .equals(transperent, other.transperent));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(primary),
        const DeepCollectionEquality().hash(background),
        const DeepCollectionEquality().hash(destructive),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(hintText),
        const DeepCollectionEquality().hash(subduedText),
        const DeepCollectionEquality().hash(border),
        const DeepCollectionEquality().hash(subduedBorder),
        const DeepCollectionEquality().hash(shadow),
        const DeepCollectionEquality().hash(white),
        const DeepCollectionEquality().hash(transperent));
  }
}
