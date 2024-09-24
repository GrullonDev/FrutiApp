import 'dart:math';
import 'package:flutter/material.dart';

// Extensión para detectar si el dispositivo es móvil o tablet
extension ResponsiveExt on BuildContext {
  // Obtenemos el ancho y alto de la pantalla
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  // Calculamos la diagonal de la pantalla para determinar si es tablet
  double get screenDiagonal => sqrt(pow(screenWidth, 2) + pow(screenHeight, 2));

  // BlockSize para hacer diseños responsivos
  double get blockSizeHorizontal => screenWidth / 100;
  double get blockSizeVertical => screenHeight / 100;

  // Detectamos si el dispositivo es un móvil
  bool get isMobile => screenDiagonal < 1100.0;

  // Detectamos si el dispositivo es una tablet
  bool get isTablet => screenDiagonal >= 1100.0;

  // Métodos utilitarios para escalado basado en porcentajes
  double getTextSize(double size) => size * blockSizeVertical;
  double getImageSize(double size) => size * blockSizeHorizontal;
  double getHeightPercentage(double percentage) =>
      percentage * blockSizeVertical;
  double getWidthPercentage(double percentage) =>
      percentage * blockSizeHorizontal;
}
