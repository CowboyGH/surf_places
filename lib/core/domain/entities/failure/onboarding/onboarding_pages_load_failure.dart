import 'package:surf_places/core/domain/entities/failure/onboarding/onboarding_failure.dart';

/// Ошибка при загрузке страниц приветственного экрана
final class OnboardingPagesLoadFailure extends OnboardingFailure {
  const OnboardingPagesLoadFailure() : super(message: 'Onboarding pages load failure');
}
