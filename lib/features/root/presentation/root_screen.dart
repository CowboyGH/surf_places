import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:surf_places/assets/images/app_svg_icons.dart';
import 'package:surf_places/assets/strings/app_strings.dart';
import 'package:surf_places/uikit/images/svg_picture_widget.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';

/// Экран с [BottomNavigationBar].
class RootScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const RootScreen({required this.navigationShell, super.key});

  List<BottomNavigationBarItem> get _items => const [
    BottomNavigationBarItem(
      icon: SvgPictureWidget(AppSvgIcons.icList),
      activeIcon: SvgPictureWidget(AppSvgIcons.icListFull),
      label: AppStrings.placesScreenBottomNavPlaces,
    ),
    BottomNavigationBarItem(
      icon: SvgPictureWidget(AppSvgIcons.icMap),
      activeIcon: SvgPictureWidget(AppSvgIcons.icMapFull),
      label: AppStrings.placesScreenBottomNavMap,
    ),
    BottomNavigationBarItem(
      icon: SvgPictureWidget(AppSvgIcons.icFavorites),
      activeIcon: SvgPictureWidget(AppSvgIcons.icFavoritesFull),
      label: AppStrings.placesScreenBottomNavFavorites,
    ),
    BottomNavigationBarItem(
      icon: SvgPictureWidget(AppSvgIcons.icSettings),
      activeIcon: SvgPictureWidget(AppSvgIcons.icSettingsFull),
      label: AppStrings.placesScreenBottomNavSettings,
    ),
  ];

  void _onTap(int index) {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppColorTheme.of(context);
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: colorTheme.divider.withOpacity(0.48), width: 0.3)),
        ),
        child: BottomNavigationBar(
          items: _items,
          currentIndex: navigationShell.currentIndex,
          onTap: _onTap,
        ),
      ),
    );
  }
}
