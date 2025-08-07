import 'package:surf_places/core/data/repositories/base_repository.dart';
import 'package:surf_places/core/domain/entities/result/request_operation.dart';
import 'package:surf_places/core/services/preferences_service.dart';
import 'package:surf_places/features/splash/domain/repositories/i_splash_repository.dart';

/// Реализация [ISplashRepository].
final class SplashRepositoryImpl extends BaseRepository implements ISplashRepository {
  final PreferencesService prefs;

  SplashRepositoryImpl(this.prefs);

  @override
  RequestOperation<bool> hasSeenOnboarding() => makeApiCall(
    remoteCall: () async {
      return prefs.hasSeenOnboarding();
    },
  );
}
