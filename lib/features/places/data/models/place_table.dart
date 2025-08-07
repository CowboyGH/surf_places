import 'package:drift/drift.dart';

/// Таблица для хранения информации о местах.
class PlaceTable extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  TextColumn? get imageUrl => text().named('image_url').nullable()();
  RealColumn get lat => real()();
  RealColumn get lon => real().named('lng')();
  TextColumn get type => text()();

  @override
  Set<Column> get primaryKey => {id};

  @override
  String? get tableName => 'places';
}
