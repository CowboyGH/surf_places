import 'package:flutter/material.dart';
import 'package:surf_places/assets/strings/app_strings.dart';
import 'package:surf_places/features/common/presentation/widgets/app_search_bar.dart';
import 'package:surf_places/features/common/presentation/widgets/service_unavailable_widget.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';
import 'package:surf_places/uikit/themes/text/app_text_theme.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

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
      body: SafeArea(child: Center(child: ServiceUnavailableWidget())),
    );
  }
}
