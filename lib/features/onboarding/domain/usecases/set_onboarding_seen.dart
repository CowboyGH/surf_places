import 'package:surf_places/core/domain/entities/result/request_operation.dart';
import 'package:surf_places/features/onboarding/domain/repositories/i_onboarding_repository.dart';

/// Фиксирует прохождение приветственного экрана.
class SetOnboardingSeen {
  final IOnboardingRepository repository;

  SetOnboardingSeen(this.repository);

  RequestOperation<void> call() => repository.setSeen();
}
