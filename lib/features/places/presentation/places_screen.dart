import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:surf_places/assets/strings/app_route_strings.dart';
import 'package:surf_places/assets/strings/app_strings.dart';
import 'package:surf_places/features/places/presentation/bloc/places_bloc.dart';
import 'package:surf_places/features/places/presentation/widgets/app_search_bar.dart';
import 'package:surf_places/features/places/presentation/widgets/place_card_widget.dart';
import 'package:surf_places/uikit/loading/app_loader.dart';
import 'package:surf_places/uikit/loading/app_loader_sizes.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';
import 'package:surf_places/uikit/themes/text/app_text_theme.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  void _fetchPlaces() => context.read<PlacesBloc>().add(PlacesEvent.fetchPlaces());

  @override
  void initState() {
    super.initState();
    _fetchPlaces();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.of(context);
    final colorTheme = AppColorTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 108,
        title: Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.symmetric(vertical: 16),
              child: Text(
                AppStrings.placesScreenAppBarTitle,
                style: textTheme.subtitle.copyWith(color: colorTheme.textPrimary),
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 6), child: AppSearchBar()),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: RefreshIndicator(
          backgroundColor: colorTheme.surface,
          color: colorTheme.secondaryVariant,
          onRefresh: () async => _fetchPlaces(),
          child: BlocBuilder<PlacesBloc, PlacesState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => Center(child: AppLoader.create(size: AppLoaderSizes.medium)),
                loaded: (places) => ListView.separated(
                  padding: EdgeInsets.only(left: 16, top: 32, right: 16, bottom: 16),
                  itemCount: places.length,
                  itemBuilder: (context, index) {
                    final place = places[index];
                    return PlaceCardWidget(
                      place: place,
                      onCardTap: () => context.push(
                        '${AppRouteStrings.home}/${AppRouteStrings.place}',
                        extra: place,
                      ),
                      onLikeTap: () {},
                      cardType: PlaceCardType.place,
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 16),
                ),
                loadError: (failure) => Center(child: Text(failure.message.toString())),
                orElse: () => SizedBox.shrink(),
              );
            },
          ),
        ),
      ),
    );
  }
}
