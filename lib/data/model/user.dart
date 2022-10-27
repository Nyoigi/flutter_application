import '../../domain/entity/user_entity.dart';

class User extends UserEntity {
  late int id_user;
  final String name;
  final String surname;
  final String middlename;
  final String adress;
  final String name_account;

  User({
    required this.name,
    required this.surname,
    required this.middlename,
    required this.adress,
    required this.name_account,
  }) : super(
            name: name,
            surname: surname,
            middlename: middlename,
            adress: adress,
            name_account: name_account);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'surname': surname,
      'middlename': middlename,
      'adress': adress,
      'name_account': name_account,
    };
  }

  factory User.toFromMap(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      surname: json['surname'],
      middlename: json['middlename'],
      adress: json['adress'],
      name_account: json['name_account'],
    );
  }
}
