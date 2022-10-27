import 'package:flutter/material.dart';
import 'package:flutter_application_3/domain/entity/provider_entity.dart';

import '../../domain/entity/account_entity.dart';

class Provider extends ProviderEntity {
  late int id_provider;
  final String name_provider;
  final String adress;
  final String number_phone;

  Provider({
    required this.name_provider,
    required this.adress,
    required this.number_phone,
  }) : super(
          name_provider: name_provider,
          adress: adress,
          number_phone: number_phone,
        );

  Map<String, dynamic> toMap() {
    return {
      'name_provider': name_provider,
      'adress': adress,
      'number_phone': number_phone,
    };
  }

  factory Provider.toFromMap(Map<String, dynamic> json) {
    return Provider(
      name_provider: json['name_provider'],
      adress: json['adress'],
      number_phone: json['number_phone'],
    );
  }
}
