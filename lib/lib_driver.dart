library lib_driver;

import "timetable.dart";
import "notification.dart";
import "attendence.dart";
import "calendar.dart";

abstract class DriverBase {
  String get driverName;

  TimetableContext? getTimetableContext() {
    return null;
  }

  NotificationsContext? getNotificationsContext() {
    return null;
  }

  CalendarContext? getCalendarContext() {
    return null;
  }

  AttendenceContext? getAttendenceContext() {
    return null;
  }
}
