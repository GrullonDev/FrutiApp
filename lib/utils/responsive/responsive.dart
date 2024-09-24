import 'dart:math';
import 'package:flutter/material.dart';

class Responsive {
  final BuildContext context;
  late MediaQueryData _mediaQueryData;
  late double screenWidth;
  late double screenHeight;
  late double blockSizeHorizontal;
  late double blockSizeVertical;

  Responsive(this.context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }

  // Detecta el dispositivo predeterminado como "normal phone"
  bool get isNormalPhone => screenWidth >= 360.0 && screenWidth <= 600.0;

  // Detección de otros dispositivos
  bool get isTablet {
    final diagonal =
        sqrt(screenWidth * screenWidth + screenHeight * screenHeight);
    return diagonal > 1100.0 && diagonal < 1600.0;
  }

  bool get isSmallPhone => screenWidth < 360.0;

  bool get isLargePhone => screenWidth > 600.0 && screenWidth < 1100.0;

  bool get isFoldable => screenWidth > 600.0 && screenWidth < 800.0;

  bool get isDesktop => screenWidth >= 1100.0;

  // Métodos utilitarios
  double getTextSize(double size) => size * blockSizeVertical;
  double getImageSize(double size) => size * blockSizeHorizontal;
  double getHeight(double percentage) => percentage * blockSizeVertical;
  double getWidth(double percentage) => percentage * blockSizeHorizontal;
}

// Extensión de BuildContext para acceder a `Responsive` directamente desde el contexto
extension ResponsiveExtension on BuildContext {
  Responsive get responsive => Responsive(this);

  bool get isTablet => responsive.isTablet;
  bool get isSmallPhone => responsive.isSmallPhone;
  bool get isNormalPhone => responsive.isNormalPhone;
  bool get isLargePhone => responsive.isLargePhone;
  bool get isFoldable => responsive.isFoldable;
  bool get isDesktop => responsive.isDesktop;
}
