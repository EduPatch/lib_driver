library lib_driver;

import "timetable.dart";
import "notification.dart";
import "attendence.dart";

abstract class DriverBase {
  Future<Timetable?> getTimetable() {
    return Future.error(Exception("driver doesn't support timetables"));
  }

  Future<List<Notification>?> getNotifications() {
    return Future.error(Exception("driver doesn't support notifications"));
  }

  Future<List<Notification>?> getAttendence() {
    return Future.error(Exception("driver doesn't support attendence"));
  }
}
