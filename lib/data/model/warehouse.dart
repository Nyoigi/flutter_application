import 'package:flutter_application_3/domain/entity/clothes_entity.dart';

import '../../domain/entity/warehouse_entity.dart';

class Warehouse extends WarehouseEntity {
  late int id_warehouse;
  final int quantity;
  final String adress;
  final String name_provider;
  final String name_clothes;

  Warehouse({
    required this.quantity,
    required this.adress,
    required this.name_provider,
    required this.name_clothes,
  }) : super(
            quantity: quantity,
            adress: adress,
            name_provider: name_provider,
            name_clothes: name_clothes);

  Map<String, dynamic> toMap() {
    return {
      'quantity': quantity,
      'adress': adress,
      'name_provider': name_provider,
      'name_clothes': name_clothes,
    };
  }

  factory Warehouse.toFromMap(Map<String, dynamic> json) {
    return Warehouse(
        quantity: json['quantity'],
        adress: json['adress'],
        name_provider: json['name_provider'],
        name_clothes: json['name_clothes']);
  }
}
