import 'package:go_router/go_router.dart';
import 'package:surf_places/features/splash/splash_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashScreen(),
    ),
  ],
);
