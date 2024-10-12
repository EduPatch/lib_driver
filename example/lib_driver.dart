import "package:lib_driver/lib_driver.dart";

class DeezTimetableContext extends TimetableContextBase {
  @override
  getTimetable(DateTime date) {
    return Future.value(Timetable(beginMinutes: 480, lengthMinutes: 540, lessons: []));
  }
}

class DeezDriver extends DriverBase {
  @override
  get driverMetadata => DriverMetadata(
      platformName: "DeezPlatform", supportedFeatures: [ContextType.timetable]);

  @override
  getTimetableContext() {
    return DeezTimetableContext();
  }

  String oauth2key;

  DeezDriver({required this.oauth2key});
}

class NutsLoginMethod extends UsernamePasswordMethod {
  @override
  get methodMetadata => LoginMethodMetadata(
      methodName: "NutsLogins");

  @override
  Future<DriverBase> login(String username, String password) {
    // return a logged in driver
    return Future.value(DeezDriver(oauth2key: "some oath2key"));
  }
}

void main() async {
  final loginMethod = NutsLoginMethod();
  final driver = await loginMethod.login("deez", "nuts");

  // print driver metadata
  print("using driver: ${driver.driverMetadata.platformName}");
  print("driver features:");
  driver.driverMetadata.supportedFeatures
      .forEach((feature) => print("- $feature"));

  print("");

  // here comes the cool part that makes everything more readable and safer:
  var timetableCtx = driver.getTimetableContext();
  if (timetableCtx != null) {
    var tt = await timetableCtx.getTimetable(DateTime.now());
    print("${tt.beginMinutes} ${tt.lengthMinutes} ${tt.lessons}");
  }

  var notifsCtx = driver.getNotificationsContext();
  if (notifsCtx != null) {
    // because notifs is not a supported feature notifsCtx is null and thus dis not runny
    var notifs = await notifsCtx.getNotifications();
    print(notifs);
  }
}
