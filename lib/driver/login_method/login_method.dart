import "../driver.dart";

abstract class LoginMethodBase {
  LoginMethodMetadata get methodMetadata;
}

abstract class UsernamePasswordMethod extends LoginMethodBase {
  Future<DriverBase> login(String username, String password);
}

class LoginMethodMetadata {
  String methodName;

  LoginMethodMetadata({required this.methodName});
}
