import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:surf_places/assets/images/app_svg_icons.dart';
import 'package:surf_places/assets/strings/app_strings.dart';
import 'package:surf_places/features/common/domain/entities/place_entity.dart';
import 'package:surf_places/features/place_details/presentation/widgets/photo_slider_widget.dart';
import 'package:surf_places/features/place_details/presentation/widgets/place_details_widget.dart';
import 'package:surf_places/uikit/images/svg_picture_widget.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';
import 'package:surf_places/uikit/themes/text/app_text_theme.dart';

class PlaceDetailsScreen extends StatefulWidget {
  final PlaceEntity place;
  const PlaceDetailsScreen({required this.place, super.key});

  @override
  State<PlaceDetailsScreen> createState() => _PlaceDetailsScreenState();
}

class _PlaceDetailsScreenState extends State<PlaceDetailsScreen> {
  late bool _isfavorite;

  @override
  void initState() {
    _isfavorite = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.of(context);
    final colorTheme = AppColorTheme.of(context);

    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 360,
                flexibleSpace: PhotoSliderWidget(
                  images: widget.place.images,
                  onBackPressed: () => context.pop(),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 24),
                    child: PlaceDetailsWidget(place: widget.place),
                  ),
                  Divider(indent: 16, endIndent: 16, height: 0, thickness: 0),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          label: Row(
                            children: [
                              SvgPictureWidget(AppSvgIcons.icShare, color: colorTheme.textPrimary),
                              const SizedBox(width: 8),
                              Text(
                                AppStrings.placeDetailsShareButton,
                                style: textTheme.button.copyWith(color: colorTheme.textPrimary),
                              ),
                            ],
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () => setState(() => _isfavorite = !_isfavorite),
                          label: Row(
                            children: [
                              SvgPictureWidget(
                                _isfavorite ? AppSvgIcons.icFavoritesFull : AppSvgIcons.icFavorites,
                                color: _isfavorite ? colorTheme.error : colorTheme.textPrimary,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                _isfavorite
                                    ? AppStrings.placeDetailsInFavoritesButton
                                    : AppStrings.placeDetailsFavoritesButton,
                                style: textTheme.button.copyWith(color: colorTheme.textPrimary),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SafeArea(child: SizedBox.shrink()),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
