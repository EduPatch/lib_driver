import "package:lib_driver/login/login.dart";
import "package:lib_driver/login/login_metadata.dart";

class SickoLogin extends Login {
  @override
  get loginMetadata =>
      LoginMetadata(loginName: "Sickomode going round deez nuts");

  @override
  get loginMethods => [
        LoginMethod(
            id: "sick",
            name: "SOICK",
            type: LoginMethodType.usernameAndPassword,
            login: (inputs) {
              print(inputs);
            })
      ];
}

void main() {
  final login = SickoLogin();

  final method = login.loginMethods[0];

  method.login(["user", "pass"]);
}
