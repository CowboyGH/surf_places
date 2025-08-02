import 'package:surf_places/core/domain/entities/result/request_operation.dart';

/// Интерфейс репозитория начального экрана.
abstract interface class ISplashRepository {
  /// Получить статус прохождения приветственного экрана.
  RequestOperation<bool> hasSeenOnboarding();
}
