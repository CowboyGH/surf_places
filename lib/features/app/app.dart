import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_places/core/router/router.dart';
import 'package:surf_places/core/services/preferences_service.dart';
import 'package:surf_places/features/app/di/di.dart';
import 'package:surf_places/features/common/cubit/network_cubit.dart';
import 'package:surf_places/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:surf_places/features/places/presentation/bloc/places_bloc.dart';
import 'package:surf_places/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:surf_places/uikit/themes/app_theme_data.dart';

final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(
  di<PreferencesService>().getAppearance() == 'light' ? ThemeMode.light : ThemeMode.dark,
);

/// Виджет приложения.
class SurfPlacesApp extends StatelessWidget {
  const SurfPlacesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeNotifier,
      builder: (_, themeMode, ___) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => di<NetworkCubit>()),
            BlocProvider(create: (_) => di<SplashCubit>()),
            BlocProvider(create: (_) => di<OnboardingCubit>()),
            BlocProvider(create: (_) => di<PlacesBloc>()),
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: router,
            theme: AppThemeData.lightTheme,
            darkTheme: AppThemeData.darkTheme,
            themeMode: themeMode,
          ),
        );
      },
    );
  }
}
