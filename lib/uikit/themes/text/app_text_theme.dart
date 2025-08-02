import 'package:flutter/material.dart';
import 'package:surf_places/uikit/themes/text/app_text_style.dart';

/// {@template app_text_theme.class}
/// Тема для текстов приложения.
/// {@endtemplate}
class AppTextTheme extends ThemeExtension<AppTextTheme> {
  /// Возвращает тему из контекста.
  static AppTextTheme of(BuildContext context) {
    return Theme.of(context).extension<AppTextTheme>() ?? _throwThemeNotFound(context);
  }

  final TextStyle button;
  final TextStyle largeTitle;
  final TextStyle small;
  final TextStyle smallBold;
  final TextStyle subtitle;
  final TextStyle superSmall;
  final TextStyle text;
  final TextStyle title;

  const AppTextTheme._({
    required this.largeTitle,
    required this.title,
    required this.subtitle,
    required this.text,
    required this.smallBold,
    required this.small,
    required this.superSmall,
    required this.button,
  });

  /// {@macro app_text_theme.class}
  AppTextTheme.base()
    : largeTitle = AppTextStyle.largeTitle.value,
      title = AppTextStyle.title.value,
      subtitle = AppTextStyle.subtitle.value,
      text = AppTextStyle.text.value,
      smallBold = AppTextStyle.smallBold.value,
      small = AppTextStyle.small.value,
      superSmall = AppTextStyle.superSmall.value,
      button = AppTextStyle.button.value;

  /// @nodoc.
  @override
  AppTextTheme copyWith({
    TextStyle? largeTitle,
    TextStyle? title,
    TextStyle? subtitle,
    TextStyle? textMedium,
    TextStyle? text,
    TextStyle? smallBold,
    TextStyle? small,
    TextStyle? superSmallMedium,
    TextStyle? superSmall,
    TextStyle? button,
  }) {
    return AppTextTheme._(
      largeTitle: largeTitle ?? this.largeTitle,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      text: text ?? this.text,
      smallBold: smallBold ?? this.smallBold,
      small: small ?? this.small,
      superSmall: superSmall ?? this.superSmall,
      button: button ?? this.button,
    );
  }

  @override
  ThemeExtension<AppTextTheme> lerp(
    ThemeExtension<AppTextTheme>? other,
    double t,
  ) {
    // Проверяет, что объект other имеет тип AppTextTheme.
    // Если это не так, возвращается текущий экземпляр (this)
    if (other is! AppTextTheme) {
      return this;
    }

    return AppTextTheme._(
      largeTitle: TextStyle.lerp(largeTitle, other.largeTitle, t)!,
      title: TextStyle.lerp(title, other.title, t)!,
      subtitle: TextStyle.lerp(subtitle, other.subtitle, t)!,
      text: TextStyle.lerp(text, other.text, t)!,
      smallBold: TextStyle.lerp(smallBold, other.smallBold, t)!,
      small: TextStyle.lerp(small, other.small, t)!,

      superSmall: TextStyle.lerp(superSmall, other.superSmall, t)!,
      button: TextStyle.lerp(button, other.button, t)!,
    );
  }
}

Never _throwThemeNotFound(BuildContext context) =>
    throw Exception('$AppTextTheme not found in $context');
