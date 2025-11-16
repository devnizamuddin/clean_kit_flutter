import 'package:flutter/material.dart';

class PrimaryAssetImage extends StatelessWidget {
  final String assetPath;
  final double? width;
  final double? height;
  final BoxFit? fit;

  const PrimaryAssetImage({
    super.key,
    required this.assetPath,
    this.width = 64,
    this.height = 64,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      fit: fit,
      width: width,
      height: height,
      image: AssetImage(assetPath),
    );
  }
}
