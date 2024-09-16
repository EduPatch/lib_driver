import "login_metadata.dart";

abstract class Login {
  LoginMetadata get loginMetadata;
  List<LoginMethod> get loginMethods;
}
