import 'package:flutter/material.dart';
import 'package:surf_places/core/router/router.dart';
import 'package:surf_places/uikit/themes/app_theme_data.dart';

class SurfPlaces extends StatelessWidget {
  const SurfPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: AppThemeData.lightTheme,
      darkTheme: AppThemeData.darkTheme,
    );
  }
}
