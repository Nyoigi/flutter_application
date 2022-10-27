abstract class DataBaseRequest {
  static const String tableRoles = 'Roles';
  static const String tableSize = 'Size';
  static const String tableTypeClothes = 'Type clothes';
  static const String tableProvider = 'Provider';
  static const String tableWarehouse = 'Warehouse';
  static const String tableClothes = 'Clothes';
  static const String tableFavorites = 'Favorites';
  static const String tableAccounts = 'Accounts';
  static const String tableUser = 'User';
  static const String tableOrder = 'Order';

  static const List<String> tableList = [
    tableRoles,
    tableSize,
    tableTypeClothes,
    tableProvider,
    tableWarehouse,
    tableClothes,
    tableFavorites,
    tableAccounts,
    tableUser,
    tableOrder,
  ];

  static const List<String> createTableList = [
    _createTableRole,
    _createTableSize,
    _createTableTypeClothes,
    _createTableProvider,
    _createTableWarehouse,
    _createTableClothes,
    _createTableFavorite,
    _createTableAccount,
    _createTableUser,
    _createTableOrder,
  ];

  /// Запрос для создания таблицы Role
  static const String _createTableRole =
      'CREATE TABLE "$tableRoles" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Users
  static const String _createTableAccount =
      'CREATE TABLE "$tableAccounts" ("id"	INTEGER,"login"	TEXT NOT NULL UNIQUE,"password"	TEXT NOT NULL,"id_role"	INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("id"),PRIMARY KEY("id"))';

  static const String _createTableClothes =
      'CREATE TABLE "$tableClothes" ("id"	INTEGER,"name_clothes"	TEXT NOT NULL UNIQUE, "cost"	TEXT NOT NULL,"id_type"	INTEGER, FOREIGN KEY("id_type") REFERENCES "TypeClothes"("id"),PRIMARY KEY("id"), "id_size"	INTEGER,FOREIGN KEY("id_size") REFERENCES "Size"("id"),PRIMARY KEY("id"))';

  static const String _createTableSize =
      'CREATE TABLE "$tableSize" ("id"	INTEGER,"size_number"	TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT)';

  static const String _createTableTypeClothes =
      'CREATE TABLE "$tableTypeClothes" ("id" INTEGER,"name_type" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableUser =
      'CREATE TABLE "$tableUser" ("id"	INTEGER,"name"	TEXT NOT NULL UNIQUE,"surname"	TEXT NOT NULL, "middlename"	TEXT NOT NULL,"adress"	TEXT NOT NULL, "id_account"	INTEGER,FOREIGN KEY("id_account") REFERENCES "Account"("id") ON DELETE CASCADE,PRIMARY KEY("id"))';

  static const String _createTableProvider =
      'CREATE TABLE "$tableProvider" ("id"	INTEGER,"name_provider"	TEXT NOT NULL UNIQUE,"adress"	TEXT NOT NULL, "number_phone"	TEXT NOT NULL, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableFavorite =
      'CREATE TABLE "$tableFavorites" ("id"	INTEGER,"date_favorite"	DATE NOT NULL UNIQUE, "id_clothes"	INTEGER,FOREIGN KEY("id_clothes") REFERENCES "Clothes"("id"),PRIMARY KEY("id"))';

  static const String _createTableWarehouse =
      'CREATE TABLE "$tableWarehouse" ("id"	INTEGER,"quantity"	INTEGER NOT NULL UNIQUE, "adress"	TEXT NOT NULL, "id_provider"	INTEGER,FOREIGN KEY("id_provider") REFERENCES "Provider"("id")ON DELETE CASCADE,PRIMARY KEY("id"), "id_clothes"	INTEGER,FOREIGN KEY("id_clothes") REFERENCES "Clothes"("id") ON DELETE CASCADE,PRIMARY KEY("id"))';

  static const String _createTableOrder =
      'CREATE TABLE "$tableOrder" ("id"	INTEGER,"date_order"	DATA NOT NULL UNIQUE, "amount"	TEXT NOT NULL, "status"	TEXT NOT NULL, "id_user"	INTEGER,FOREIGN KEY("id_user") REFERENCES "User"("id") ON DELETE CASCADE, PRIMARY KEY("id"), "id_clothes"	INTEGER,FOREIGN KEY("id_clothes") REFERENCES "Clothes"("id") ON DELETE CASCADE,PRIMARY KEY("id"))';
  static String deleteTable(String table) => 'Drop table $table';
}
