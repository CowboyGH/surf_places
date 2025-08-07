import 'package:surf_places/core/data/db/app_database.dart';
import 'package:surf_places/features/common/domain/entities/place_entity.dart';
import 'package:surf_places/features/places/data/mappers/place_entity_mapper.dart';
import 'package:surf_places/features/places/data/mappers/place_table_data_mapper.dart';

/// Локальный источник данных о местах.
class PlacesLocalDataSource {
  final AppDatabase db;

  const PlacesLocalDataSource({required this.db});

  Stream<List<PlaceEntity>> watchPlaces() {
    return db
        .select(db.placeTable)
        .watch()
        .map((rows) => rows.map((row) => row.toEntity()).toList());
  }

  Future<void> cachePlaces(List<PlaceEntity> places) async {
    final batch = places.map((e) => e.toCompanion()).toList();
    await db.batch((b) => b.insertAllOnConflictUpdate(db.placeTable, batch));
  }

  Future<List<PlaceEntity>> getCachedPlaces() async {
    final rows = await db.select(db.placeTable).get();
    return rows.map((e) => e.toEntity()).toList();
  }
}
