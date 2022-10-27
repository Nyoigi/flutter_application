class WarehouseEntity {
  late int id_warehouse;
  final int quantity;
  final String adress;
  final String name_provider;
  final String name_clothes;

  WarehouseEntity({
    required this.quantity,
    required this.adress,
    required this.name_provider,
    required this.name_clothes,
  });
}
