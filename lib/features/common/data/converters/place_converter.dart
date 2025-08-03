import 'dart:convert';

import 'package:surf_places/api/data/place_dto.dart';
import 'package:surf_places/features/common/data/converters/place_type_converter.dart';
import 'package:surf_places/features/common/domain/entities/place_entity.dart';

/// Конвертер из [PlaceDto] в [PlaceEntity].
typedef IPlaceDtoToEntityConverter = Converter<PlaceDto, PlaceEntity>;

/// Реализация [IPlaceDtoToEntityConverter].
final class PlaceDtoToEntityConverter extends IPlaceDtoToEntityConverter {
  /// Конвертер для типа места.
  final IPlaceTypeDtoToStringConverter placeTypeConverter;

  const PlaceDtoToEntityConverter({required this.placeTypeConverter});

  @override
  PlaceEntity convert(PlaceDto input) {
    final placeType = placeTypeConverter.convert(input.placeType);
    return PlaceEntity(
      id: input.id,
      name: input.name,
      lat: input.lat,
      lon: input.lon,
      description: input.description,
      type: placeType,
      images: input.images,
    );
  }
}
