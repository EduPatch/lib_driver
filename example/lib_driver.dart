import "package:lib_driver/lib_driver.dart";
import "package:lib_driver/timetable.dart";

class CumTimetableContext extends TimetableContext {
  @override
  getTimetable() {
    return Future.value(Timetable(begin: 480, length: 540, lessons: []));
  }
}

class CumDriver extends DriverBase {
  @override
  get driverName => "deezdriver";

  @override
  getTimetableContext() {
    return CumTimetableContext();
  }
}

void main() async {
  var driver = CumDriver();

  var timetableCtx = driver.getTimetableContext();
  if (timetableCtx != null) {
    var tt = await timetableCtx.getTimetable();
    print("${tt.begin} ${tt.length} ${tt.lessons}");
  }

  var notifsCtx = driver.getNotificationsContext();
  if (notifsCtx != null) {
    var notifs = await notifsCtx.getNotifications();
    print(notifs);
  }
}
