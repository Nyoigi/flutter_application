class OrderEntity {
  late int id_order;
  final DateTime date_order;
  final int amount;
  final String status;
  final int id_user;
  final int id_clothes;

  OrderEntity({
    required this.date_order,
    required this.amount,
    required this.status,
    required this.id_user,
    required this.id_clothes,
  });
}
