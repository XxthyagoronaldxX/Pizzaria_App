class UserModel {
  late String _id;
  final String name;
  final String email;
  final String password;

  UserModel({
    String id = "",
    required this.name,
    required this.email,
    required this.password,
  }) {
    _id = id;
  }
}
