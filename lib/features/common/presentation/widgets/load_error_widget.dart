import 'package:flutter/material.dart';
import 'package:surf_places/assets/images/app_svg_icons.dart';
import 'package:surf_places/uikit/images/svg_picture_widget.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';
import 'package:surf_places/uikit/themes/text/app_text_theme.dart';

/// Виджет ошибки загрузки данных с макета.
class LoadErrorWidget extends StatelessWidget {
  const LoadErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.of(context);
    final colorTheme = AppColorTheme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPictureWidget(AppSvgIcons.icNetworkException),
          const SizedBox(height: 24),
          Text(
            'Ошибка',
            style: textTheme.subtitle.copyWith(color: colorTheme.inactive),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          Text(
            'Что то пошло не так\nПопробуйте позже.',
            style: textTheme.small.copyWith(color: colorTheme.inactive),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
