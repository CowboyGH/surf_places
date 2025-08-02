import 'package:surf_places/core/domain/entities/failure/failure.dart';

/// Базовый класс для ошибок начального экрана
abstract class SplashFailure extends Failure {
  const SplashFailure({super.message, super.parentException, super.stackTrace});
}
