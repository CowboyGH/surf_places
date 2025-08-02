import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:surf_places/assets/strings/app_route_strings.dart';
import 'package:surf_places/features/onboarding/presentation/onboarding_screen.dart';
import 'package:surf_places/features/splash/presentation/splash_screen.dart';

/// Маршрутизатор приложения.
final router = GoRouter(
  routes: [
    GoRoute(path: AppRouteStrings.splash, builder: (context, state) => SplashScreen()),
    GoRoute(path: AppRouteStrings.onboarding, builder: (context, state) => OnboardingScreen()),
    GoRoute(
      path: AppRouteStrings.home,
      builder: (context, state) => Scaffold(body: Center(child: Text('Places Screen'))),
    ),
  ],
);
