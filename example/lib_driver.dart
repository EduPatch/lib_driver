import "package:lib_driver/lib_driver.dart";
import "package:lib_driver/timetable.dart";
import "package:lib_driver/driver_metadata.dart";

class CumTimetableContext extends TimetableContext {
  @override
  getTimetable() {
    return Future.value(Timetable(begin: 480, length: 540, lessons: []));
  }
}

class CumDriver extends DriverBase {
  @override
  get driverMetadata => DriverMetadata(
      driverName: "deezdriver", supportedFeatures: [ContextType.timetable]);

  @override
  getTimetableContext() {
    return CumTimetableContext();
  }
}

void main() async {
  var driver = CumDriver();

  // print driver metadata
  print("using driver: ${driver.driverMetadata.driverName}");
  print("driver features:");
  driver.driverMetadata.supportedFeatures
      .forEach((feature) => print("- $feature"));

  print("");

  // here comes the cool part that makes everything more readable and safer:
  var timetableCtx = driver.getTimetableContext();
  if (timetableCtx != null) {
    var tt = await timetableCtx.getTimetable();
    print("${tt.begin} ${tt.length} ${tt.lessons}");
  }

  var notifsCtx = driver.getNotificationsContext();
  if (notifsCtx != null) {
    // because notifs is not a supported feature notifsCtx is null and thus dis not runny
    var notifs = await notifsCtx.getNotifications();
    print(notifs);
  }
}
