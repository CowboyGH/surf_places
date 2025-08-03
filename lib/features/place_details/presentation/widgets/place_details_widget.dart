import 'package:flutter/material.dart';
import 'package:surf_places/features/common/domain/entities/place_entity.dart';
import 'package:surf_places/features/common/presentation/string_extensions.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';
import 'package:surf_places/uikit/themes/text/app_text_theme.dart';

class PlaceDetailsWidget extends StatelessWidget {
  final PlaceEntity place;

  const PlaceDetailsWidget({required this.place, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.of(context);
    final colorTheme = AppColorTheme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(place.name, style: textTheme.title.copyWith(color: colorTheme.textPrimary)),
        const SizedBox(height: 2),
        Row(
          children: [
            Text(
              place.type.capitalize(),
              style: textTheme.smallBold.copyWith(color: colorTheme.secondaryVariant),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(width: 16),
            Text(
              'закрыто до 09:00',
              style: textTheme.small.copyWith(color: colorTheme.secondaryVariant),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        const SizedBox(height: 24),
        Text(place.description, style: textTheme.small.copyWith(color: colorTheme.textPrimary)),
      ],
    );
  }
}
