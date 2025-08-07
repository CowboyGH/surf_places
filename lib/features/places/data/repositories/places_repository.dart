import 'package:surf_places/core/data/repositories/base_repository.dart';
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

  @override
  RequestOperation<List<PlaceEntity>> getPlaces() {
    return makeApiCall<List<PlaceEntity>>(() async {
      final remotePlaces = await _remoteDataSource.fetchPlaces();

      final entityPlaces = <PlaceEntity>[];
      for (final place in remotePlaces) {
        entityPlaces.add(_placeDtoToEntityConverter.convert(place));
      }
      await _localDataSource.cachePlaces(entityPlaces);
      return entityPlaces;
    });
  }
}
