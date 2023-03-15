// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'app_colors.dart';

// **************************************************************************
// ThemeTailorGenerator
// **************************************************************************

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.white,
    required this.card,
    required this.text,
    required this.subduedText,
    required this.border,
    required this.shadow,
  });

  final Color white;
  final Color card;
  final Color text;
  final Color subduedText;
  final Color border;
  final Color shadow;

  static final AppColors light = AppColors(
    white: _$AppColors.white[0],
    card: _$AppColors.card[0],
    text: _$AppColors.text[0],
    subduedText: _$AppColors.subduedText[0],
    border: _$AppColors.border[0],
    shadow: _$AppColors.shadow[0],
  );

  static final themes = [
    light,
  ];

  @override
  AppColors copyWith({
    Color? white,
    Color? card,
    Color? text,
    Color? subduedText,
    Color? border,
    Color? shadow,
  }) {
    return AppColors(
      white: white ?? this.white,
      card: card ?? this.card,
      text: text ?? this.text,
      subduedText: subduedText ?? this.subduedText,
      border: border ?? this.border,
      shadow: shadow ?? this.shadow,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      white: Color.lerp(white, other.white, t)!,
      card: Color.lerp(card, other.card, t)!,
      text: Color.lerp(text, other.text, t)!,
      subduedText: Color.lerp(subduedText, other.subduedText, t)!,
      border: Color.lerp(border, other.border, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColors &&
            const DeepCollectionEquality().equals(white, other.white) &&
            const DeepCollectionEquality().equals(card, other.card) &&
            const DeepCollectionEquality().equals(text, other.text) &&
            const DeepCollectionEquality()
                .equals(subduedText, other.subduedText) &&
            const DeepCollectionEquality().equals(border, other.border) &&
            const DeepCollectionEquality().equals(shadow, other.shadow));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(white),
        const DeepCollectionEquality().hash(card),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(subduedText),
        const DeepCollectionEquality().hash(border),
        const DeepCollectionEquality().hash(shadow));
  }
}
