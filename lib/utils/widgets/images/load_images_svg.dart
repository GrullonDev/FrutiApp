import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class LoadSvgAsset extends StatelessWidget {
  const LoadSvgAsset(
    this.path, {
    super.key,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.color,
    this.package,
  });

  final String path;
  final double? width;
  final double? height;
  final BoxFit fit;

  final Color? color;
  final String? package;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/$path.svg',
      width: width,
      height: height,
      placeholderBuilder: (_) => const CircularProgressIndicator(),
      fit: fit,
      package: package,
      colorFilter:
          (color != null) ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
    );
  }
}
