import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_places/assets/strings/app_strings.dart';
import 'package:surf_places/features/common/cubit/network_cubit.dart';
import 'package:surf_places/features/common/presentation/widgets/app_search_bar.dart';
import 'package:surf_places/features/common/presentation/widgets/load_error_widget.dart';
import 'package:surf_places/features/common/presentation/widgets/service_unavailable_widget.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';
import 'package:surf_places/uikit/themes/text/app_text_theme.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
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
                AppStrings.mapScreenAppBarTitle,
                style: textTheme.subtitle.copyWith(color: colorTheme.textPrimary),
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 6), child: AppSearchBar()),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<NetworkCubit, ConnectivityResult>(
            builder: (context, state) {
              if (state == ConnectivityResult.none) {
                return LoadErrorWidget();
              } else {
                return ServiceUnavailableWidget();
              }
            },
          ),
        ),
      ),
    );
  }
}
