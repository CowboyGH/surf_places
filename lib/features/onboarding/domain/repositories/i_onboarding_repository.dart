import 'package:surf_places/core/domain/entities/result/request_operation.dart';
import 'package:surf_places/features/onboarding/domain/entities/onboarding_page_entity.dart';

/// Интерфейс репозитория приветственного экрана.
abstract interface class IOnboardingRepository {
  /// Получить данные страниц приветсвенного экрана.
  RequestOperation<List<OnboardingPageEntity>> getPages();

  /// Установить факт прохождения приветственного экрана.
  RequestOperation<void> setSeen();
}
