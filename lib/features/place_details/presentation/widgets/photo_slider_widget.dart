import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:surf_places/assets/images/app_svg_icons.dart';
import 'package:surf_places/assets/strings/app_strings.dart';
import 'package:surf_places/uikit/images/svg_picture_widget.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';
import 'package:surf_places/uikit/themes/text/app_text_theme.dart';

class PhotoSliderWidget extends StatelessWidget {
  final List<String> images;
  final VoidCallback onBackPressed;
  const PhotoSliderWidget({required this.images, required this.onBackPressed, super.key});

  @override
  Widget build(BuildContext context) {
    final topPositionBackButton = MediaQuery.paddingOf(context).top + 16;
    final textTheme = AppTextTheme.of(context);
    final colorTheme = AppColorTheme.of(context);

    return LayoutBuilder(
      builder: (_, constraints) {
        return SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              images.isNotEmpty
                  ? PageView.builder(
                      itemCount: images.length,
                      itemBuilder: (_, index) {
                        return CachedNetworkImage(
                          imageUrl: images[index],
                          fit: BoxFit.cover,
                          errorWidget: (_, __, ___) => Center(
                            child: Text(
                              AppStrings.serviceUnavailable,
                              style: textTheme.text.copyWith(color: colorTheme.textPrimary),
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        AppStrings.serviceUnavailable,
                        style: textTheme.text.copyWith(color: colorTheme.textPrimary),
                      ),
                    ),
              Positioned(
                left: 16,
                top: topPositionBackButton,
                child: GestureDetector(
                  onTap: onBackPressed,
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: colorTheme.scaffold,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SvgPictureWidget(
                      AppSvgIcons.icArrow,
                      color: colorTheme.textPrimary,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
