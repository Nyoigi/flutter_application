import 'package:flutter_application_3/domain/entity/favorites_entity.dart';

class Favorites extends FavoritesEntity {
  late int id_favorite;
  final DateTime date_favorite;
  final String name_clothes;

  Favorites({
    required this.date_favorite,
    required this.name_clothes,
  }) : super(date_favorite: date_favorite, name_clothes: name_clothes);

  Map<String, dynamic> toMap() {
    return {
      'date_favorite': date_favorite,
      'name_clothes': name_clothes,
    };
  }

  factory Favorites.toFromMap(Map<String, dynamic> json) {
    return Favorites(
        date_favorite: json['date_favorite'],
        name_clothes: json['name_clothes']);
  }
}
