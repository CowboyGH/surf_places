import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:surf_places/assets/images/app_svg_icons.dart';
import 'package:surf_places/assets/strings/app_route_strings.dart';
import 'package:surf_places/assets/strings/app_strings.dart';
import 'package:surf_places/core/services/preferences_service.dart';
import 'package:surf_places/features/app/app.dart';
import 'package:surf_places/features/app/di/di.dart';
import 'package:surf_places/uikit/images/svg_picture_widget.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';
import 'package:surf_places/uikit/themes/text/app_text_theme.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isDark = false;
  void saveAppearance(String appearance) {
    di<PreferencesService>().setAppearance(appearance);
    themeNotifier.value = appearance == 'light' ? ThemeMode.light : ThemeMode.dark;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.of(context);
    final colorTheme = AppColorTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.settingsScreenAppBarTitle,
          style: textTheme.subtitle.copyWith(color: colorTheme.textPrimary),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Темная тема', style: textTheme.text.copyWith(color: colorTheme.textPrimary)),
                CupertinoSwitch(
                  value: _isDark,
                  onChanged: (value) {
                    setState(() {
                      _isDark = value;
                      _isDark == true ? saveAppearance('dark') : saveAppearance('light');
                    });
                  },
                ),
              ],
            ),
            Divider(thickness: 0),
            Padding(
              padding: EdgeInsetsGeometry.only(right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Смотреть туториал',
                    style: textTheme.text.copyWith(color: colorTheme.textPrimary),
                  ),
                  GestureDetector(
                    onTap: () => context.go(AppRouteStrings.onboarding),
                    child: SvgPictureWidget(
                      AppSvgIcons.icInfo,
                      color: colorTheme.accent,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 0),
          ],
        ),
      ),
    );
  }
}
