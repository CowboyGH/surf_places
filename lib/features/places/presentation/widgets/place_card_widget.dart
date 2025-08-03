import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:surf_places/assets/images/app_svg_icons.dart';
import 'package:surf_places/assets/strings/app_strings.dart';
import 'package:surf_places/features/common/domain/entities/place_entity.dart';
import 'package:surf_places/features/common/presentation/string_extensions.dart';
import 'package:surf_places/uikit/images/svg_picture_widget.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';
import 'package:surf_places/uikit/themes/text/app_text_theme.dart';

enum PlaceCardType { place, favorite }

class PlaceCardWidget extends StatelessWidget {
  final PlaceEntity place;
  final VoidCallback onCardTap;
  final VoidCallback onLikeTap;
  final PlaceCardType cardType;

  const PlaceCardWidget({
    required this.place,
    required this.onCardTap,
    required this.onLikeTap,
    required this.cardType,
    super.key,
  });

  static const _cardHeight = 188.0;
  static const _imageHeight = 96.0;

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.of(context);
    final colorTheme = AppColorTheme.of(context);

    return SizedBox(
      height: _cardHeight,
      child: Material(
        color: colorTheme.surface,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: _imageHeight,
                      child: place.images.isNotEmpty
                          ? CachedNetworkImage(
                              imageUrl: place.images.first,
                              fit: BoxFit.cover,
                              errorWidget: (_, __, ___) =>
                                  Center(child: Text(AppStrings.serviceUnavailable)),
                            )
                          : Center(child: Text(AppStrings.serviceUnavailable)),
                    ),
                    Positioned(
                      left: 16,
                      top: 16,
                      child: Text(
                        place.type.capitalize(),
                        style: textTheme.smallBold.copyWith(color: colorTheme.neutralWhite),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        place.name,
                        style: textTheme.text.copyWith(color: colorTheme.textSecondary),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        place.description,
                        style: textTheme.small.copyWith(color: colorTheme.textSecondaryVariant),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned.fill(
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(onTap: onCardTap),
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: onLikeTap,
                child: SvgPictureWidget(AppSvgIcons.icFavorites, color: colorTheme.icon),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
