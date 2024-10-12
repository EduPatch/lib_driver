// import "package:lib_driver/lib_driver.dart";
//
// class DeezTimetableContext extends TimetableContext {
//   @override
//   getTimetable() {
//     return Future.value(Timetable(beginMinutes: 480, lengthMinutes: 540, lessons: []));
//   }
// }
//
// class DeezDriver extends DriverBase {
//   @override
//   get driverMetadata => DriverMetadata(
//       driverName: "DeezPlatform", supportedFeatures: [ContextType.timetable]);
//
//   @override
//   getTimetableContext() {
//     return DeezTimetableContext();
//   }
//
//   String oauth2key;
//
//   DeezDriver({required this.oauth2key});
// }
//
// class NutsLoginMethod extends LoginMethodBase {
//   @override
//   get methodMetadata => LoginMethodMetadata(
//       methodName: "NutsLogins",
//       methodType: LoginMethodType.usernameAndPassword);
//
//   @override
//   Future<DriverBase> login() {
//     // return a logged in driver
//     return Future.value(DeezDriver(oauth2key: "some oath2key"));
//   }
// }
//
// void main() async {
//   final loginMethod = NutsLoginMethod();
//   final driver = await loginMethod.login();
//
//   // print driver metadata
//   print("using driver: ${driver.driverMetadata.driverName}");
//   print("driver features:");
//   driver.driverMetadata.supportedFeatures
//       .forEach((feature) => print("- $feature"));
//
//   print("");
//
//   // here comes the cool part that makes everything more readable and safer:
//   var timetableCtx = driver.getTimetableContext();
//   if (timetableCtx != null) {
//     var tt = await timetableCtx.getTimetable();
//     print("${tt.beginMinutes} ${tt.lengthMinutes} ${tt.lessons}");
//   }
//
//   var notifsCtx = driver.getNotificationsContext();
//   if (notifsCtx != null) {
//     // because notifs is not a supported feature notifsCtx is null and thus dis not runny
//     var notifs = await notifsCtx.getNotifications();
//     print(notifs);
//   }
// }
