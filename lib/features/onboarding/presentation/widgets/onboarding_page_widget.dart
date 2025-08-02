import 'package:flutter/material.dart';
import 'package:surf_places/features/onboarding/domain/entities/onboarding_page_entity.dart';
import 'package:surf_places/uikit/images/svg_picture_widget.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';
import 'package:surf_places/uikit/themes/text/app_text_theme.dart';

class OnboardingPageWidget extends StatelessWidget {
  final OnboardingPageEntity onboardingPage;
  const OnboardingPageWidget({required this.onboardingPage, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.of(context);
    final colorTheme = AppColorTheme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPictureWidget(
          onboardingPage.icon,
          color: colorTheme.textPrimary,
        ),
        const SizedBox(height: 40),
        Text(
          onboardingPage.title,
          style: textTheme.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          onboardingPage.description,
          style: textTheme.small.copyWith(color: colorTheme.secondaryVariant),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
