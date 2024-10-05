import "../driver.dart";

enum LoginMethodType { usernameAndPassword }

abstract class LoginMethodBase {
  LoginMethodMetadata get methodMetadata;

  Future<DriverBase> login();
}

class LoginMethodMetadata {
  String methodName;
  LoginMethodType methodType;

  LoginMethodMetadata({required this.methodName, required this.methodType});
}
