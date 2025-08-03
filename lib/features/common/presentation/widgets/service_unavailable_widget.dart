import 'package:flutter/material.dart';
import 'package:surf_places/assets/images/app_svg_icons.dart';
import 'package:surf_places/assets/strings/app_strings.dart';
import 'package:surf_places/uikit/images/svg_picture_widget.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';
import 'package:surf_places/uikit/themes/text/app_text_theme.dart';

class ServiceUnavailableWidget extends StatelessWidget {
  const ServiceUnavailableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.of(context);
    final colorTheme = AppColorTheme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPictureWidget(AppSvgIcons.icClear, height: 64, color: colorTheme.textInactive),
        const SizedBox(height: 24),
        Text(
          AppStrings.serviceUnavailable,
          style: textTheme.subtitle.copyWith(color: colorTheme.textInactive),
        ),
      ],
    );
  }
}
