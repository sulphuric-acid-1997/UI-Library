import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class AssetDisplay extends StatelessWidget {
  final String src;
  final AssetType type;
  final double? width;
  final double? height;
  final BoxFit? fit;
  const AssetDisplay(
      {Key? key,
      required this.src,
      required this.type,
      this.width,
      this.height,
      this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (type == AssetType.networkImage) {
      return Image.network(
        src,
        width: width,
        height: height,
      );
    }
    if (type == AssetType.asset) {
      return Image.asset(
        src,
        width: width,
        height: height,
        fit: fit,
      );
    }
    if (type == AssetType.SVG) {
      return SvgPicture.asset(
        src,
        width: width,
        height: height,
        fit: fit ?? BoxFit.fill,
      );
    }
    if (type == AssetType.lottienetwork) {
      return Lottie.asset(src, width: width, height: height, fit: fit);
    }
    if (type == AssetType.lottieasset) {
      return Lottie.network(src, width: width, height: height, fit: fit);
    }
    return const Text('something went wrong');
  }
}

enum AssetType { asset, networkImage, SVG, lottienetwork, lottieasset }
