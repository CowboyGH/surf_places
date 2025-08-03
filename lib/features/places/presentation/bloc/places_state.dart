part of 'places_bloc.dart';

@freezed
class PlacesState with _$PlacesState {
  const factory PlacesState.initial() = _Initial;
  const factory PlacesState.loading() = _PlacesLoading;
  const factory PlacesState.loaded(List<PlaceEntity> places) = _PlacesLoaded;
  const factory PlacesState.loadError(Failure failure) = _PlacesLoadError;
}
