import 'package:flutter/material.dart';
import 'package:fruti_app/utils/responsive/responsive.dart';
import 'package:fruti_app/utils/widgets/images/load_images_svg.dart';

class SimpleMathOperation extends StatelessWidget {
  const SimpleMathOperation({
    required this.firstImage,
    required this.secondImage,
    required this.operation,
    super.key,
  });

  final String firstImage;
  final String secondImage;
  final String operation;

  @override
  Widget build(BuildContext context) {
    final double imageHeight = context.isTablet
        ? context.getHeightPercentage(12)
        : context.getHeightPercentage(11);

    final double imageWidth = context.isTablet
        ? context.getWidthPercentage(4)
        : context.getWidthPercentage(2);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: List.generate(
            3,
            (index) => Padding(
              padding: EdgeInsets.all(context.getWidthPercentage(0.5)),
              child: LoadSvgAsset(
                firstImage,
                fit: BoxFit.contain,
                height: imageHeight,
                width: imageWidth,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12.0),
        LoadSvgAsset(
          operation,
          fit: BoxFit.contain,
          height: imageHeight,
          width: imageWidth,
        ),
        const SizedBox(width: 11.0),
        Column(
          children: List.generate(
            2,
            (index) => Padding(
              padding: EdgeInsets.all(context.getWidthPercentage(0.5)),
              child: LoadSvgAsset(
                secondImage,
                fit: BoxFit.contain,
                height: imageHeight,
                width: imageWidth,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
