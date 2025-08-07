import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_places/core/domain/entities/failure/failure.dart';
import 'package:surf_places/core/domain/entities/result/result.dart';
import 'package:surf_places/features/common/domain/entities/place_entity.dart';
import 'package:surf_places/features/places/domain/repositories/i_places_repository.dart';

part 'places_event.dart';
part 'places_state.dart';
part 'places_bloc.freezed.dart';

class PlacesBloc extends Bloc<PlacesEvent, PlacesState> {
  PlacesBloc(this._placesRepository) : super(_Initial()) {
    on<PlacesEvent>(_onFetchPlaces);
  }

  final IPlacesRepository _placesRepository;

  /// Инициализация события для получения списка мест.
  Future<void> _onFetchPlaces(PlacesEvent event, Emitter<PlacesState> emit) async {
    emit(PlacesState.loading());
    final placesResult = await _placesRepository.getPlaces();
    switch (placesResult) {
      case ResultOk(:final data):
        emit(PlacesState.loaded(data));
      case ResultFailed(:final error):
        emit(PlacesState.loadError(error));
    }
  }
}
