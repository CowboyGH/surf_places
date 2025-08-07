import 'package:drift/drift.dart';
import 'package:surf_places/core/data/db/app_database.dart';
import 'package:surf_places/features/common/domain/entities/place_entity.dart';

extension PlaceEntityMapper on PlaceEntity {
  PlaceTableCompanion toCompanion() => PlaceTableCompanion(
    name: Value(name),
    description: Value(description),
    lat: Value(lat),
    lon: Value(lon),
    type: Value(type),
    imageUrl: Value(images.isNotEmpty ? images.first : ''),
  );
}
