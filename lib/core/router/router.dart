import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:surf_places/assets/strings/app_route_strings.dart';
import 'package:surf_places/features/app/favorites/presentation/favorites_screen.dart';
import 'package:surf_places/features/common/domain/entities/place_entity.dart';
import 'package:surf_places/features/onboarding/presentation/onboarding_screen.dart';
import 'package:surf_places/features/place_details/presentation/place_details_screen.dart';
import 'package:surf_places/features/places/presentation/places_screen.dart';
import 'package:surf_places/features/root/presentation/root_screen.dart';
import 'package:surf_places/features/settings/presentation/settings_screen.dart';
import 'package:surf_places/features/splash/presentation/splash_screen.dart';

/// Глобальный ключ для корневого навигатора.
final _rootNavigatorKey = GlobalKey<NavigatorState>();

/// Маршрутизатор приложения.
final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    // Стек маршрутов для нижней навигационной панели.
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => RootScreen(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRouteStrings.places,
              builder: (context, state) => PlacesScreen(),
              routes: [
                GoRoute(
                  path: AppRouteStrings.place,
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (context, state) {
                    final place = state.extra as PlaceEntity;
                    return PlaceDetailsScreen(place: place);
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRouteStrings.map,
              builder: (context, state) => Scaffold(body: Center(child: Text('Map'))),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRouteStrings.favorites,
              builder: (context, state) => FavoritesScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(path: AppRouteStrings.settings, builder: (context, state) => SettingsScreen()),
          ],
        ),
      ],
    ),
    // Остальные маршруты.
    GoRoute(path: AppRouteStrings.splash, builder: (context, state) => SplashScreen()),
    GoRoute(path: AppRouteStrings.onboarding, builder: (context, state) => OnboardingScreen()),
  ],
);
