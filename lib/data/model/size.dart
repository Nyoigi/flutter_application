import 'package:flutter_application_3/domain/entity/size_entity.dart';

class Size extends SizeEntity {
  late int id_size;
  final String size_number;

  Size({required this.size_number}) : super(size_number: size_number);

  Map<String, dynamic> toMap() {
    return {
      'size_number': size_number,
    };
  }

  factory Size.toFromMap(Map<String, dynamic> json) {
    return Size(size_number: json['size_number']);
  }
}
