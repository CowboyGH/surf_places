import 'dart:convert';
import 'package:surf_places/api/data/place_type_dto.dart';

/// Конвертер из [PlaceTypeDto] в [String].
typedef IPlaceTypeDtoToStringConverter = Converter<PlaceTypeDto, String>;

/// Реализация [IPlaceTypeDtoToStringConverter].
final class PlaceTypeDtoToStringConverter extends IPlaceTypeDtoToStringConverter {
  const PlaceTypeDtoToStringConverter();

  @override
  String convert(PlaceTypeDto input) {
    return switch (input) {
      PlaceTypeDto.other => 'особое место',
      PlaceTypeDto.park => 'парк',
      PlaceTypeDto.monument => 'памятник',
      PlaceTypeDto.cafe => 'кафе',
      PlaceTypeDto.theatre => 'театр',
      PlaceTypeDto.museum => 'музей',
      PlaceTypeDto.temple => 'храм',
      PlaceTypeDto.hotel => 'отель',
      PlaceTypeDto.restaurant => 'ресторан',
      PlaceTypeDto.shopping => 'магазин',
    };
  }
}
