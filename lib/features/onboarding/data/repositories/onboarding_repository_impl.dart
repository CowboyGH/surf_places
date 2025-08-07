import 'package:surf_places/assets/images/app_svg_icons.dart';
import 'package:surf_places/assets/strings/app_strings.dart';
import 'package:surf_places/core/data/repositories/base_repository.dart';
import 'package:surf_places/core/domain/entities/result/request_operation.dart';
import 'package:surf_places/core/services/preferences_service.dart';
import 'package:surf_places/features/onboarding/domain/entities/onboarding_page_entity.dart';
import 'package:surf_places/features/onboarding/domain/repositories/i_onboarding_repository.dart';

/// Реализация [IOnboardingRepository].
final class OnboardingRepositoryImpl extends BaseRepository implements IOnboardingRepository {
  final PreferencesService prefs;

  OnboardingRepositoryImpl(this.prefs);

  @override
  RequestOperation<List<OnboardingPageEntity>> getPages() => makeApiCall(
    remoteCall: () async {
      return [
        const OnboardingPageEntity(
          title: AppStrings.onboardingPage1Title,
          description: AppStrings.onboardingPage1Description,
          icon: AppSvgIcons.onboardingPage1,
        ),
        const OnboardingPageEntity(
          title: AppStrings.onboardingPage2Title,
          description: AppStrings.onboardingPage2Description,
          icon: AppSvgIcons.onboardingPage2,
        ),
        const OnboardingPageEntity(
          title: AppStrings.onboardingPage3Title,
          description: AppStrings.onboardingPage3Description,
          icon: AppSvgIcons.onboardingPage3,
        ),
      ];
    },
  );

  @override
  RequestOperation<void> setSeen() => makeApiCall(
    remoteCall: () async {
      await prefs.setOnboardingSeen();
    },
  );
}
