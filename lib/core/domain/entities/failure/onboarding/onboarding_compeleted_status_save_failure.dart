import 'package:surf_places/core/domain/entities/failure/onboarding/onboarding_failure.dart';

/// Ошибка при сохранении статуса прохождения приветственного экрана
final class OnboardingCompletedStatusSaveFailure extends OnboardingFailure {
  const OnboardingCompletedStatusSaveFailure() : super(message: 'Onboarding status save failure');
}
