part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _Initial;
  const factory OnboardingState.loading() = _Loading;
  const factory OnboardingState.loaded(List<OnboardingPageEntity> pages) = _Loaded;
  const factory OnboardingState.completing() = _Completing;
  const factory OnboardingState.completed() = _Completed;
  const factory OnboardingState.error(Failure failure) = _Error;
}
