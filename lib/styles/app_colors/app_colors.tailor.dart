// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_colors.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.background,
    required this.border,
    required this.destructive,
    required this.hintText,
    required this.primary,
    required this.shadow,
    required this.subduedBorder,
    required this.subduedText,
    required this.text,
    required this.transperent,
    required this.white,
  });

  final Color background;
  final Color border;
  final Color destructive;
  final Color hintText;
  final Color primary;
  final Color shadow;
  final Color subduedBorder;
  final Color subduedText;
  final Color text;
  final Color transperent;
  final Color white;

  static final AppColors light = AppColors(
    background: _$AppColors.background[0],
    border: _$AppColors.border[0],
    destructive: _$AppColors.destructive[0],
    hintText: _$AppColors.hintText[0],
    primary: _$AppColors.primary[0],
    shadow: _$AppColors.shadow[0],
    subduedBorder: _$AppColors.subduedBorder[0],
    subduedText: _$AppColors.subduedText[0],
    text: _$AppColors.text[0],
    transperent: _$AppColors.transperent[0],
    white: _$AppColors.white[0],
  );

  static final themes = [
    light,
  ];

  @override
  AppColors copyWith({
    Color? background,
    Color? border,
    Color? destructive,
    Color? hintText,
    Color? primary,
    Color? shadow,
    Color? subduedBorder,
    Color? subduedText,
    Color? text,
    Color? transperent,
    Color? white,
  }) {
    return AppColors(
      background: background ?? this.background,
      border: border ?? this.border,
      destructive: destructive ?? this.destructive,
      hintText: hintText ?? this.hintText,
      primary: primary ?? this.primary,
      shadow: shadow ?? this.shadow,
      subduedBorder: subduedBorder ?? this.subduedBorder,
      subduedText: subduedText ?? this.subduedText,
      text: text ?? this.text,
      transperent: transperent ?? this.transperent,
      white: white ?? this.white,
    );
  }

  @override
  AppColors lerp(covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this as AppColors;
    return AppColors(
      background: Color.lerp(background, other.background, t)!,
      border: Color.lerp(border, other.border, t)!,
      destructive: Color.lerp(destructive, other.destructive, t)!,
      hintText: Color.lerp(hintText, other.hintText, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      subduedBorder: Color.lerp(subduedBorder, other.subduedBorder, t)!,
      subduedText: Color.lerp(subduedText, other.subduedText, t)!,
      text: Color.lerp(text, other.text, t)!,
      transperent: Color.lerp(transperent, other.transperent, t)!,
      white: Color.lerp(white, other.white, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColors &&
            const DeepCollectionEquality()
                .equals(background, other.background) &&
            const DeepCollectionEquality().equals(border, other.border) &&
            const DeepCollectionEquality()
                .equals(destructive, other.destructive) &&
            const DeepCollectionEquality().equals(hintText, other.hintText) &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality().equals(shadow, other.shadow) &&
            const DeepCollectionEquality()
                .equals(subduedBorder, other.subduedBorder) &&
            const DeepCollectionEquality()
                .equals(subduedText, other.subduedText) &&
            const DeepCollectionEquality().equals(text, other.text) &&
            const DeepCollectionEquality()
                .equals(transperent, other.transperent) &&
            const DeepCollectionEquality().equals(white, other.white));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(border),
      const DeepCollectionEquality().hash(destructive),
      const DeepCollectionEquality().hash(hintText),
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(shadow),
      const DeepCollectionEquality().hash(subduedBorder),
      const DeepCollectionEquality().hash(subduedText),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(transperent),
      const DeepCollectionEquality().hash(white),
    );
  }
}
