/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $LibGen {
  const $LibGen();

  $LibAssetsGen get assets => const $LibAssetsGen();
}

class $LibAssetsGen {
  const $LibAssetsGen();

  $LibAssetsAudiosGen get audios => const $LibAssetsAudiosGen();
  $LibAssetsImagesGen get images => const $LibAssetsImagesGen();
}

class $LibAssetsAudiosGen {
  const $LibAssetsAudiosGen();

  /// File path: lib/assets/audios/garasound_watermark.mp3
  String get garasoundWatermark => 'lib/assets/audios/garasound_watermark.mp3';
}

class $LibAssetsImagesGen {
  const $LibAssetsImagesGen();

  /// File path: lib/assets/images/backward.png
  AssetGenImage get backward =>
      const AssetGenImage('lib/assets/images/backward.png');

  /// File path: lib/assets/images/blank_person.png
  AssetGenImage get blankPerson =>
      const AssetGenImage('lib/assets/images/blank_person.png');

  /// File path: lib/assets/images/empty_profile_pic.png
  AssetGenImage get emptyProfilePic =>
      const AssetGenImage('lib/assets/images/empty_profile_pic.png');

  /// File path: lib/assets/images/empty_state.png
  AssetGenImage get emptyState =>
      const AssetGenImage('lib/assets/images/empty_state.png');

  /// File path: lib/assets/images/fast_forward.png
  AssetGenImage get fastForward =>
      const AssetGenImage('lib/assets/images/fast_forward.png');

  /// File path: lib/assets/images/garasound_logo.png
  AssetGenImage get garasoundLogo =>
      const AssetGenImage('lib/assets/images/garasound_logo.png');

  /// File path: lib/assets/images/history_profile.png
  AssetGenImage get historyProfile =>
      const AssetGenImage('lib/assets/images/history_profile.png');

  /// File path: lib/assets/images/ic_notification.png
  AssetGenImage get icNotification =>
      const AssetGenImage('lib/assets/images/ic_notification.png');

  /// File path: lib/assets/images/ic_right_align.png
  AssetGenImage get icRightAlign =>
      const AssetGenImage('lib/assets/images/ic_right_align.png');

  /// File path: lib/assets/images/logout_profile.png
  AssetGenImage get logoutProfile =>
      const AssetGenImage('lib/assets/images/logout_profile.png');

  /// File path: lib/assets/images/music_format_background.png
  AssetGenImage get musicFormatBackground =>
      const AssetGenImage('lib/assets/images/music_format_background.png');

  /// File path: lib/assets/images/music_icon.png
  AssetGenImage get musicIcon =>
      const AssetGenImage('lib/assets/images/music_icon.png');

  /// File path: lib/assets/images/music_icon_large.png
  AssetGenImage get musicIconLarge =>
      const AssetGenImage('lib/assets/images/music_icon_large.png');

  /// File path: lib/assets/images/success_bayar_dialog_background.png
  AssetGenImage get successBayarDialogBackground => const AssetGenImage(
      'lib/assets/images/success_bayar_dialog_background.png');

  /// File path: lib/assets/images/success_check.png
  AssetGenImage get successCheck =>
      const AssetGenImage('lib/assets/images/success_check.png');

  /// File path: lib/assets/images/ubah_user.png
  AssetGenImage get ubahUser =>
      const AssetGenImage('lib/assets/images/ubah_user.png');
}

class Assets {
  Assets._();

  static const $LibGen lib = $LibGen();
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

  String get path => _assetName;

  String get keyName => _assetName;
}
