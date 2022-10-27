import 'package:flutter_application_3/domain/entity/clothes_entity.dart';

class Clothes extends ClothesEntity {
  late int id_clothes;
  final String name_clothes;
  final String name_type;
  final String size_number;
  final int cost;

  Clothes(
      {required this.name_clothes,
      required this.name_type,
      required this.size_number,
      required this.cost})
      : super(
            name_clothes: name_clothes,
            name_type: name_type,
            size_number: size_number,
            cost: cost);

  Map<String, dynamic> toMap() {
    return {
      'name_clothes': name_clothes,
      'name_type': name_type,
      'size_number': size_number,
      'cost': cost
    };
  }

  factory Clothes.toFromMap(Map<String, dynamic> json) {
    return Clothes(
        name_clothes: json['name_clothes'],
        name_type: json['name_type'],
        size_number: json['size_number'],
        cost: json['cost']);
  }
}
