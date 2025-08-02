import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:surf_places/core/services/preferences_service.dart';
import 'package:surf_places/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:surf_places/features/onboarding/domain/repositories/i_onboarding_repository.dart';
import 'package:surf_places/features/onboarding/domain/usecases/get_onboarding_pages.dart';
import 'package:surf_places/features/onboarding/domain/usecases/set_onboarding_seen.dart';
import 'package:surf_places/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:surf_places/features/splash/data/repositories/splash_repository_impl.dart';
import 'package:surf_places/features/splash/domain/repositories/i_splash_repository.dart';
import 'package:surf_places/features/splash/domain/usecases/check_onboarding_status.dart';
import 'package:surf_places/features/splash/presentation/cubit/splash_cubit.dart';

/// Глобальный экземпляр сервис-локатора GetIt для управления зависимостями.
final di = GetIt.instance;

/// Инициализирует зависимости приложения с помощью GetIt.
/// Включает регистрацию слоёв data, domain, presentation.
Future<void> initDi() async {
  // SharedPreferences
  final prefs = await SharedPreferences.getInstance();
  final preferencesServise = PreferencesService(prefs);
  di.registerLazySingleton(() => preferencesServise);

  // Data Layer
  di.registerLazySingleton<ISplashRepository>(() => SplashRepositoryImpl(preferencesServise));
  di.registerLazySingleton<IOnboardingRepository>(
    () => OnboardingRepositoryImpl(preferencesServise),
  );

  // Domain Layer
  di.registerLazySingleton(() => CheckOnboardingStatus(di<ISplashRepository>()));
  di.registerLazySingleton(() => GetOnboardingPages(di<IOnboardingRepository>()));
  di.registerLazySingleton(() => SetOnboardingSeen(di<IOnboardingRepository>()));

  // Presentation
  di.registerFactory(() => SplashCubit(di<CheckOnboardingStatus>()));
  di.registerFactory(() => OnboardingCubit(di<GetOnboardingPages>(), di<SetOnboardingSeen>()));
}
