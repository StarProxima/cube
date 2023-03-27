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
    required this.transperent,
    required this.white,
    required this.card,
    required this.text,
    required this.hintText,
    required this.subduedText,
    required this.border,
    required this.subduedBorder,
    required this.shadow,
  });

  final Color primary;
  final Color transperent;
  final Color white;
  final Color card;
  final Color text;
  final Color hintText;
  final Color subduedText;
  final Color border;
  final Color subduedBorder;
  final Color shadow;

  static final AppColors light = AppColors(
    primary: _$AppColors.primary[0],
    transperent: _$AppColors.transperent[0],
    white: _$AppColors.white[0],
    card: _$AppColors.card[0],
    text: _$AppColors.text[0],
    hintText: _$AppColors.hintText[0],
    subduedText: _$AppColors.subduedText[0],
    border: _$AppColors.border[0],
    subduedBorder: _$AppColors.subduedBorder[0],
    shadow: _$AppColors.shadow[0],
  );

  static final themes = [
    light,
  ];

  @override
  AppColors copyWith({
    Color? primary,
    Color? transperent,
    Color? white,
    Color? card,
    Color? text,
    Color? hintText,
    Color? subduedText,
    Color? border,
    Color? subduedBorder,
    Color? shadow,
  }) {
    return AppColors(
      primary: primary ?? this.primary,
      transperent: transperent ?? this.transperent,
      white: white ?? this.white,
      card: card ?? this.card,
      text: text ?? this.text,
      hintText: hintText ?? this.hintText,
      subduedText: subduedText ?? this.subduedText,
      border: border ?? this.border,
      subduedBorder: subduedBorder ?? this.subduedBorder,
      shadow: shadow ?? this.shadow,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      primary: Color.lerp(primary, other.primary, t)!,
      transperent: Color.lerp(transperent, other.transperent, t)!,
      white: Color.lerp(white, other.white, t)!,
      card: Color.lerp(card, other.card, t)!,
      text: Color.lerp(text, other.text, t)!,
      hintText: Color.lerp(hintText, other.hintText, t)!,
      subduedText: Color.lerp(subduedText, other.subduedText, t)!,
      border: Color.lerp(border, other.border, t)!,
      subduedBorder: Color.lerp(subduedBorder, other.subduedBorder, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColors &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality()
                .equals(transperent, other.transperent) &&
            const DeepCollectionEquality().equals(white, other.white) &&
            const DeepCollectionEquality().equals(card, other.card) &&
            const DeepCollectionEquality().equals(text, other.text) &&
            const DeepCollectionEquality().equals(hintText, other.hintText) &&
            const DeepCollectionEquality()
                .equals(subduedText, other.subduedText) &&
            const DeepCollectionEquality().equals(border, other.border) &&
            const DeepCollectionEquality()
                .equals(subduedBorder, other.subduedBorder) &&
            const DeepCollectionEquality().equals(shadow, other.shadow));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(primary),
        const DeepCollectionEquality().hash(transperent),
        const DeepCollectionEquality().hash(white),
        const DeepCollectionEquality().hash(card),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(hintText),
        const DeepCollectionEquality().hash(subduedText),
        const DeepCollectionEquality().hash(border),
        const DeepCollectionEquality().hash(subduedBorder),
        const DeepCollectionEquality().hash(shadow));
  }
}
