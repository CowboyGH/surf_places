// ignore_for_file: member-ordering

import 'package:flutter/material.dart';

/// {@template app_colors.class}
/// Цвета приложения
/// {@endtemplate}
abstract class AppColors {
  /// Цвета из макета
  static const colorWhite = Color(0xFFFFFFFF);
  static const colorBackground = Color(0xFFF5F5F5);
  static const colorSecondary = Color(0xFF3B3E5B);
  static const colorSecondary2 = Color(0xFF7C7E92);
  static const colorInactiveBlack = Color.fromRGBO(124, 126, 146, 0.56);
  static const colorPicker = Color(0xFF8CC152);

  static const colorWhiteGreen = Color(0xFF4CAF50);
  static const colorWhiteGreen2 = Color(0xff68B74E); // сплэш экран градиент
  static const colorWhiteYellow = Color(0xFFFBC02D);
  static const colorWhiteYellow2 = Color(0xffB8CC45); // сплэш экран градиент
  static const colorWhiteError = Color(0xFFEF4343);
  static const colorWhiteMain = Color(0xFF252849);

  static const colorBlackGreen = Color(0xFF6ADA6F);
  static const colorBlackGreen2 = Color(0xff6CB84D); // сплэш экран градиент
  static const colorBlackYellow = Color(0xFFFFE769);
  static const colorBlackYellow2 = Color(0xffBBCD45); // сплэш экран градиент
  static const colorBlackError = Color(0xFFCF2A2A);
  static const colorBlackDark = Color(0xFF1A1A20);
  static const colorBlackMain = Color(0xFF21222C);
}
