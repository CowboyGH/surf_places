import 'package:surf_places/core/domain/entities/result/request_operation.dart';
import 'package:surf_places/features/onboarding/domain/entities/onboarding_page_entity.dart';
import 'package:surf_places/features/onboarding/domain/repositories/i_onboarding_repository.dart';

/// Получает страницы приветственного экрана.
class GetOnboardingPages {
  final IOnboardingRepository repository;

  GetOnboardingPages(this.repository);

  RequestOperation<List<OnboardingPageEntity>> call() => repository.getPages();
}
