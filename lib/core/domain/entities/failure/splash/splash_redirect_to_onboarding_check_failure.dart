import 'package:surf_places/core/domain/entities/failure/splash/splash_failure.dart';

/// Ошибка при проверке необходимости редиректа на онбординг на начальном экране
final class SplashRedirectToOnboardingCheckFailure extends SplashFailure {
  const SplashRedirectToOnboardingCheckFailure({
    super.message,
    super.parentException,
    super.stackTrace,
  });
}
