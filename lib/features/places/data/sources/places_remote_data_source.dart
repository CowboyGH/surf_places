import 'package:surf_places/api/data/place_dto.dart';
import 'package:surf_places/api/service/api_client.dart';

/// Удаленный источник данных о местах.
class PlacesRemoteDataSource {
  final ApiClient apiClient;

  const PlacesRemoteDataSource({required this.apiClient});

  /// Получает список мест из внешнего [ApiClient].
  Future<List<PlaceDto>> fetchPlaces() => apiClient.getPlaces();
}
