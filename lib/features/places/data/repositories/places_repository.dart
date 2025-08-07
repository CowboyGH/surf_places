import 'package:surf_places/core/data/repositories/base_repository.dart';
import 'package:surf_places/core/domain/entities/failure/network/no_network_failure.dart';
import 'package:surf_places/core/domain/entities/result/request_operation.dart';
import 'package:surf_places/features/common/data/converters/place_converter.dart';
import 'package:surf_places/features/common/domain/entities/place_entity.dart';
import 'package:surf_places/features/places/data/sources/places_local_data_source.dart';
import 'package:surf_places/features/places/data/sources/places_remote_data_source.dart';
import 'package:surf_places/features/places/domain/repositories/i_places_repository.dart';

/// Реализация [IPlacesRepository].
final class PlacesRepositoryImpl extends BaseRepository implements IPlacesRepository {
  final PlacesRemoteDataSource _remoteDataSource;
  final PlacesLocalDataSource _localDataSource;
  final IPlaceDtoToEntityConverter _placeDtoToEntityConverter;

  const PlacesRepositoryImpl({
    required PlacesRemoteDataSource remoteDataSource,
    required PlacesLocalDataSource localDataSource,
    required IPlaceDtoToEntityConverter placeDtoToEntityConverter,
  }) : _remoteDataSource = remoteDataSource,
       _localDataSource = localDataSource,
       _placeDtoToEntityConverter = placeDtoToEntityConverter;

  /// Получает список мест из сети попутно сохраняя их в локальную базу данных.
  /// Если нет сети, возвращает кэшированные данные из локальной базы данных.
  @override
  RequestOperation<List<PlaceEntity>> getPlaces() {
    return makeApiCall<List<PlaceEntity>>(
      remoteCall: () async {
        final remotePlaces = await _remoteDataSource.fetchPlaces();
        final entityPlaces = remotePlaces
            .map((e) => _placeDtoToEntityConverter.convert(e))
            .toList();

        await _localDataSource.updateCachedPlaces(entityPlaces);

        return entityPlaces;
      },
      fallback: () async {
        final cachedPlaces = await _localDataSource.getCachedPlaces();
        if (cachedPlaces.isEmpty) throw NoNetworkFailure();
        return cachedPlaces;
      },
    );
  }
}
