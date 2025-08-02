import 'package:surf_places/core/domain/entities/failure/failure.dart';

/// Базовый класс для ошибок приветственного экрана
abstract class OnboardingFailure extends Failure {
  const OnboardingFailure({super.message, super.parentException, super.stackTrace});
}
