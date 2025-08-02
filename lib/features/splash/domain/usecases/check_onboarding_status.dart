import 'package:surf_places/core/domain/entities/result/request_operation.dart';
import 'package:surf_places/features/splash/domain/repositories/i_splash_repository.dart';

/// Проверяет, был ли пройден экран онбординга пользователем.
class CheckOnboardingStatus {
  final ISplashRepository repository;

  CheckOnboardingStatus(this.repository);

  RequestOperation<bool> call() => repository.hasSeenOnboarding();
}
