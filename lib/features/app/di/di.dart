import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:surf_places/api/service/api_client.dart';
import 'package:surf_places/core/data/db/app_database.dart';
import 'package:surf_places/core/services/preferences_service.dart';
import 'package:surf_places/features/common/data/converters/place_converter.dart';
import 'package:surf_places/features/common/data/converters/place_type_converter.dart';
import 'package:surf_places/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:surf_places/features/onboarding/domain/repositories/i_onboarding_repository.dart';
import 'package:surf_places/features/onboarding/domain/usecases/get_onboarding_pages.dart';
import 'package:surf_places/features/onboarding/domain/usecases/set_onboarding_seen.dart';
import 'package:surf_places/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:surf_places/features/places/data/repositories/places_repository.dart';
import 'package:surf_places/features/places/data/sources/places_local_data_source.dart';
import 'package:surf_places/features/places/data/sources/places_remote_data_source.dart';
import 'package:surf_places/features/places/domain/repositories/i_places_repository.dart';
import 'package:surf_places/features/places/presentation/bloc/places_bloc.dart';
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

  // Database
  final db = AppDatabase();

  // ApiClient
  const connectTimeout = Duration(seconds: 10);
  const receiveTimeout = Duration(seconds: 20);
  const sendTimeout = Duration(seconds: 10);

  final dio = Dio();
  dio.options
    ..baseUrl = 'http://109.73.206.134:8888/api/'
    ..connectTimeout = connectTimeout
    ..receiveTimeout = receiveTimeout
    ..sendTimeout = sendTimeout;

  final apiClient = ApiClient(dio);
  di.registerLazySingleton(() => apiClient);

  // Data Layer
  di.registerLazySingleton<ISplashRepository>(() => SplashRepositoryImpl(preferencesServise));
  di.registerLazySingleton<IOnboardingRepository>(
    () => OnboardingRepositoryImpl(preferencesServise),
  );
  di.registerLazySingleton<IPlacesRepository>(
    () => PlacesRepositoryImpl(
      remoteDataSource: PlacesRemoteDataSource(apiClient: apiClient),
      localDataSource: PlacesLocalDataSource(db: db),
      placeDtoToEntityConverter: PlaceDtoToEntityConverter(
        placeTypeConverter: PlaceTypeDtoToStringConverter(),
      ),
    ),
  );

  // Domain Layer
  di.registerLazySingleton(() => CheckOnboardingStatus(di<ISplashRepository>()));
  di.registerLazySingleton(() => GetOnboardingPages(di<IOnboardingRepository>()));
  di.registerLazySingleton(() => SetOnboardingSeen(di<IOnboardingRepository>()));

  // Presentation
  di.registerFactory(() => SplashCubit(di<CheckOnboardingStatus>()));
  di.registerFactory(() => OnboardingCubit(di<GetOnboardingPages>(), di<SetOnboardingSeen>()));
  di.registerFactory(() => PlacesBloc(di<IPlacesRepository>()));
}
