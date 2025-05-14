/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $EnvGen {
  const $EnvGen();

  /// File path: .env/.dev
  String get aDev => '.env/.dev';

  /// File path: .env/.prod
  String get aProd => '.env/.prod';

  /// File path: .env/.staging
  String get aStaging => '.env/.staging';

  /// List of all assets
  List<String> get values => [aDev, aProd, aStaging];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/ARIALN.TTF
  String get arialn => 'assets/fonts/ARIALN.TTF';

  /// File path: assets/fonts/ARIALNB.TTF
  String get arialnb => 'assets/fonts/ARIALNB.TTF';

  /// File path: assets/fonts/ARIALNBI.TTF
  String get arialnbi => 'assets/fonts/ARIALNBI.TTF';

  /// File path: assets/fonts/ARIALNI.TTF
  String get arialni => 'assets/fonts/ARIALNI.TTF';

  /// File path: assets/fonts/arial.ttf
  String get arial => 'assets/fonts/arial.ttf';

  /// File path: assets/fonts/arialbd.ttf
  String get arialbd => 'assets/fonts/arialbd.ttf';

  /// File path: assets/fonts/arialbi.ttf
  String get arialbi => 'assets/fonts/arialbi.ttf';

  /// File path: assets/fonts/ariali.ttf
  String get ariali => 'assets/fonts/ariali.ttf';

  /// File path: assets/fonts/ariblk.ttf
  String get ariblk => 'assets/fonts/ariblk.ttf';

  /// List of all assets
  List<String> get values => [
    arialn,
    arialnb,
    arialnbi,
    arialni,
    arial,
    arialbd,
    arialbi,
    ariali,
    ariblk,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.png');

  /// File path: assets/images/background_2.png
  AssetGenImage get background2 =>
      const AssetGenImage('assets/images/background_2.png');

  /// List of all assets
  List<AssetGenImage> get values => [background, background2];
}

class Assets {
  const Assets._();

  static const $EnvGen env = $EnvGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
