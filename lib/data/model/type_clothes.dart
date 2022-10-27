import 'package:flutter_application_3/domain/entity/type_clothes_entity.dart';

class TypeClothes extends TypeClothesEntity {
  late int id_type;
  final String name_type;

  TypeClothes({required this.name_type}) : super(name_type: name_type);

  Map<String, dynamic> toMap() {
    return {
      'name_type': name_type,
    };
  }

  factory TypeClothes.toFromMap(Map<String, dynamic> json) {
    return TypeClothes(name_type: json['name_type']);
  }
}
