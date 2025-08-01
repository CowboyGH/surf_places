import 'package:flutter/material.dart';
import 'package:surf_places/assets/images/app_svg_icons.dart';
import 'package:surf_places/uikit/images/svg_picture_widget.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppColorTheme.of(context);

    Future.delayed(Duration(seconds: 2), () {
      // context.go('/onboarding');
    });

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [colorTheme.secondAccentVarient, colorTheme.accentVarient],
            stops: const [0.0, 1.0],
          ),
        ),
        child: SvgPictureWidget(
          AppSvgIcons.icSplashLogo,
          color: colorTheme.neutralWhite,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
