class UserEntity {
  late int id_user;
  final String name;
  final String surname;
  final String middlename;
  final String adress;
  final String name_account;

  UserEntity({
    required this.name,
    required this.surname,
    required this.middlename,
    required this.adress,
    required this.name_account,
  });
}
