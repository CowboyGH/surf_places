import 'package:flutter/material.dart';
import 'package:surf_places/assets/strings/app_strings.dart';
import 'package:surf_places/features/app/favorites/presentation/widgets/empty_favorites_list_widget.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';
import 'package:surf_places/uikit/themes/text/app_text_theme.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.of(context);
    final colorTheme = AppColorTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.favoritesScreenAppBarTitle,
          style: textTheme.subtitle.copyWith(color: colorTheme.textPrimary),
        ),
        centerTitle: true,
      ),
      body: SafeArea(child: Center(child: EmptyFavoritesListWidget())),
    );
  }
}
