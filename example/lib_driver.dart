import "package:lib_driver/lib_driver.dart";
import "package:lib_driver/timetable.dart";

class CumDriver extends DriverBase {
  @override
  String get driverName => "deezdriver";

  @override
  Future<Timetable> getTimetable() {
    return Future.value(Timetable(begin: 480, length: 540, lessons: []));
  }
}

void main() async {
  var driver = CumDriver();
  var tt = await driver.getTimetable();
  print("${tt.begin} ${tt.length} ${tt.lessons}");

  var notifs = await driver.getNotifications();
  print(notifs);
}
