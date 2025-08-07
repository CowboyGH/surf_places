part of 'places_bloc.dart';

@freezed
class PlacesEvent with _$PlacesEvent {
  /// Событие для получения списка мест.
  const factory PlacesEvent.fetchPlaces() = _FetchPlaces;
}
