import 'package:equatable/equatable.dart';

/// Сущность места.
class PlaceEntity extends Equatable {
  /// Идентификатор.
  final int id;

  /// Название.
  final String name;

  /// Описание.
  final String description;

  /// Ссылки на картинки.
  final List<String> images;

  /// Широта.
  final double lat;

  /// Долгота.
  final double lon;

  /// Тип места.
  final String type;

  const PlaceEntity({
    required this.id,
    required this.name,
    required this.lat,
    required this.lon,
    required this.description,
    required this.type,
    required this.images,
  });

  @override
  List<Object?> get props => [id, name, lat, lon, description, type, images];
}
