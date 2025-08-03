import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:surf_places/assets/images/app_svg_icons.dart';
import 'package:surf_places/assets/strings/app_route_strings.dart';
import 'package:surf_places/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:surf_places/uikit/images/svg_picture_widget.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SplashCubit>().checkOnboardingStatus();
  }

  void _navigateToScreen(String route) {
    if (mounted) {
      context.go(route);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppColorTheme.of(context);
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        state.maybeWhen(
          ready: (hasSeenOnboarding) {
            Future.delayed(const Duration(seconds: 2), () {
              if (hasSeenOnboarding) {
                _navigateToScreen(AppRouteStrings.places);
              } else {
                _navigateToScreen(AppRouteStrings.onboarding);
              }
            });
          },
          error: (failure) {
            debugPrint(failure.message);
            _navigateToScreen(AppRouteStrings.onboarding);
          },
          orElse: () {},
        );
      },
      child: Scaffold(
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
      ),
    );
  }
}
