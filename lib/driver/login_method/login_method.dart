import "../driver.dart";

abstract class _LoginMethodBase {
  LoginMethodMetadata get methodMetadata;
}

abstract class UsernamePasswordMethod extends _LoginMethodBase {
  Future<DriverBase> login(String username, String password);
}

class LoginMethodMetadata {
  String methodName;

  LoginMethodMetadata({required this.methodName});
}
