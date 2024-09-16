import "../driver/driver.dart";

enum LoginMethodType { usernameAndPassword, emailAndPassword }

class LoginMethod {
  String id;
  String name;
  LoginMethodType type;
  void Function(List<String>) login;

  LoginMethod(
      {required this.id,
      required this.name,
      required this.type,
      required this.login});
}

class LoginMetadata {
  String loginName;

  LoginMetadata({required this.loginName});
}
