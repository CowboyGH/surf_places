import 'package:surf_places/core/data/db/app_database.dart';
import 'package:surf_places/features/common/domain/entities/place_entity.dart';

extension PlaceTableDataMapper on PlaceTableData {
  PlaceEntity toEntity() => PlaceEntity(
    id: id,
    name: name,
    lat: lat,
    lon: lon,
    description: description,
    type: type,
    images: imageUrl != null ? [imageUrl!] : [],
  );
}
