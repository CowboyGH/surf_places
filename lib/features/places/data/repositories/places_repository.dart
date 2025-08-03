import 'package:surf_places/api/service/api_client.dart';
import 'package:surf_places/core/data/repositories/base_repository.dart';
import 'package:surf_places/core/domain/entities/result/request_operation.dart';
import 'package:surf_places/features/common/data/converters/place_converter.dart';
import 'package:surf_places/features/common/domain/entities/place_entity.dart';
import 'package:surf_places/features/places/domain/repositories/i_places_repository.dart';

/// Реализация [IPlacesRepository].
final class PlacesRepositoryImpl extends BaseRepository implements IPlacesRepository {
  final ApiClient _apiClient;
  final IPlaceDtoToEntityConverter _placeDtoToEntityConverter;

  PlacesRepositoryImpl({
    required ApiClient apiClient,
    required IPlaceDtoToEntityConverter placeDtoToEntityConverter,
  }) : _apiClient = apiClient,
       _placeDtoToEntityConverter = placeDtoToEntityConverter;

  @override
  RequestOperation<List<PlaceEntity>> getPlaces() {
    return makeApiCall<List<PlaceEntity>>(() async {
      final dtoPlaces = await _apiClient.getPlaces();
      final entityPlaces = <PlaceEntity>[];
      for (final place in dtoPlaces) {
        entityPlaces.add(_placeDtoToEntityConverter.convert(place));
      }
      return entityPlaces;
    });
  }
}
