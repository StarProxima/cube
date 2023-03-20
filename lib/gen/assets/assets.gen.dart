/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsBrooklynGen {
  const $AssetsBrooklynGen();

  /// File path: assets/brooklyn/asking-question-3.svg
  SvgGenImage get askingQuestion3 =>
      const SvgGenImage('assets/brooklyn/asking-question-3.svg');

  /// File path: assets/brooklyn/being-productive-3.svg
  SvgGenImage get beingProductive3 =>
      const SvgGenImage('assets/brooklyn/being-productive-3.svg');

  /// File path: assets/brooklyn/find-a-way-3.svg
  SvgGenImage get findAWay3 =>
      const SvgGenImage('assets/brooklyn/find-a-way-3.svg');

  /// File path: assets/brooklyn/no-connection-4.svg
  SvgGenImage get noConnection4 =>
      const SvgGenImage('assets/brooklyn/no-connection-4.svg');

  /// File path: assets/brooklyn/page-not-found-1.svg
  SvgGenImage get pageNotFound1 =>
      const SvgGenImage('assets/brooklyn/page-not-found-1.svg');

  /// File path: assets/brooklyn/rest-3.svg
  SvgGenImage get rest3 => const SvgGenImage('assets/brooklyn/rest-3.svg');

  /// File path: assets/brooklyn/smart-people-2.svg
  SvgGenImage get smartPeople2 =>
      const SvgGenImage('assets/brooklyn/smart-people-2.svg');

  /// File path: assets/brooklyn/something-went-wrong-2.svg
  SvgGenImage get somethingWentWrong2 =>
      const SvgGenImage('assets/brooklyn/something-went-wrong-2.svg');

  /// File path: assets/brooklyn/welcome-3.svg
  SvgGenImage get welcome3 =>
      const SvgGenImage('assets/brooklyn/welcome-3.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        askingQuestion3,
        beingProductive3,
        findAWay3,
        noConnection4,
        pageNotFound1,
        rest3,
        smartPeople2,
        somethingWentWrong2,
        welcome3
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/cube_logo.svg
  SvgGenImage get cubeLogo => const SvgGenImage('assets/icons/cube_logo.svg');

  /// List of all assets
  List<SvgGenImage> get values => [cubeLogo];
}

class Assets {
  Assets._();

  static const $AssetsBrooklynGen brooklyn = $AssetsBrooklynGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated Clip? clipBehavior,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
