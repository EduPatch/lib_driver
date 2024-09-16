library lib_driver;

import "timetable.dart";
import "notification.dart";
import "attendence.dart";
import "calendar.dart";

abstract class DriverBase {
  String get driverName;

  Future<Timetable> getTimetable() {
    return Future.error(
        Exception("driver '$driverName' doesn't support timetables"));
  }

  Future<List<Notification>> getNotifications() {
    return Future.error(
        Exception("driver '$driverName' doesn't support notifications"));
  }

  Future<List<AttendenceEvent>> getCalendarEvent() {
    return Future.error(
        Exception("driver '$driverName' doesn't support attendence"));
  }

  Future<List<CalendarEvent>> getAttendenceEvents() {
    return Future.error(
        Exception("driver '$driverName' doesn't support calendar"));
  }
}
