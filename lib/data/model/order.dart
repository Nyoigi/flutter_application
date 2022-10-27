import 'package:flutter_application_3/domain/entity/order_entity.dart';

class Order extends OrderEntity {
  late int id_order;
  final DateTime date_order;
  final int amount;
  final String status;
  final int id_user;
  final int id_clothes;

  Order({
    required this.date_order,
    required this.amount,
    required this.status,
    required this.id_user,
    required this.id_clothes,
  }) : super(
            date_order: date_order,
            amount: amount,
            status: status,
            id_user: id_user,
            id_clothes: id_clothes);

  Map<String, dynamic> toMap() {
    return {
      'date_order': date_order,
      'amount': amount,
      'status': status,
      'id_user': id_user,
      'id_clothes': id_clothes,
    };
  }

  factory Order.toFromMap(Map<String, dynamic> json) {
    return Order(
      date_order: json['date_order'],
      amount: json['amount'],
      status: json['status'],
      id_user: json['id_user'],
      id_clothes: json['id_clothes'],
    );
  }
}
