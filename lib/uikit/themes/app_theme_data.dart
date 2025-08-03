import 'package:flutter/material.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';
import 'package:surf_places/uikit/themes/text/app_text_theme.dart';

abstract class AppThemeData {
  static const _lightColorTheme = AppColorTheme.light();
  static const _darkColorTheme = AppColorTheme.dark();
  static final _textTheme = AppTextTheme.base();

  static final lightTheme = ThemeData(
    extensions: [_lightColorTheme, _textTheme],
    brightness: Brightness.light,
    splashFactory: NoSplash.splashFactory,
    primaryColor: _lightColorTheme.neutralWhite,
    colorScheme: ColorScheme.light(),
    scaffoldBackgroundColor: _lightColorTheme.scaffold,
    appBarTheme: AppBarTheme(
      backgroundColor: _lightColorTheme.scaffold,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: _lightColorTheme.neutralWhite),
      titleTextStyle: _textTheme.subtitle.copyWith(color: _lightColorTheme.neutralWhite),
    ),
    dividerTheme: DividerThemeData(color: _lightColorTheme.divider),
    sliderTheme: SliderThemeData(
      trackHeight: 2,
      activeTrackColor: _lightColorTheme.accent,
      inactiveTrackColor: _lightColorTheme.inactive,
      activeTickMarkColor: Colors.transparent,
      inactiveTickMarkColor: Colors.transparent,
      thumbColor: _lightColorTheme.neutralWhite,
      overlayShape: SliderComponentShape.noOverlay,
      tickMarkShape: SliderTickMarkShape.noTickMark,
      showValueIndicator: ShowValueIndicator.never,
      padding: EdgeInsets.zero,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: _lightColorTheme.scaffold,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      unselectedItemColor: _lightColorTheme.textPrimary,
      selectedItemColor: _lightColorTheme.textPrimary,
      selectedLabelStyle: _textTheme.superSmall,
      unselectedLabelStyle: _textTheme.superSmall,
    ),
  );

  static final darkTheme = ThemeData(
    extensions: [_darkColorTheme, _textTheme],
    brightness: Brightness.dark,
    splashFactory: NoSplash.splashFactory,
    colorScheme: ColorScheme.dark(),
    primaryColor: _darkColorTheme.scaffold,
    scaffoldBackgroundColor: _darkColorTheme.scaffold,
    appBarTheme: AppBarTheme(
      backgroundColor: _darkColorTheme.scaffold,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: _darkColorTheme.neutralWhite),
      titleTextStyle: _textTheme.subtitle.copyWith(color: _darkColorTheme.neutralWhite),
    ),
    dividerTheme: DividerThemeData(color: _darkColorTheme.divider),
    sliderTheme: SliderThemeData(
      trackHeight: 2,
      activeTrackColor: _darkColorTheme.accent,
      inactiveTrackColor: _darkColorTheme.inactive,
      activeTickMarkColor: Colors.transparent,
      inactiveTickMarkColor: Colors.transparent,
      thumbColor: _darkColorTheme.neutralWhite,
      overlayShape: SliderComponentShape.noOverlay,
      tickMarkShape: SliderTickMarkShape.noTickMark,
      showValueIndicator: ShowValueIndicator.never,
      padding: EdgeInsets.zero,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: _darkColorTheme.scaffold,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      unselectedItemColor: _darkColorTheme.textPrimary,
      selectedItemColor: _darkColorTheme.textPrimary,
      selectedLabelStyle: _textTheme.superSmall,
      unselectedLabelStyle: _textTheme.superSmall,
    ),
  );
}
