library lib_driver;

import "driver_metadata.dart";
import "timetable.dart";
import "notification.dart";
import "calendar.dart";
import "attendence.dart";

abstract class DriverBase {
  DriverMetadata get driverMetadata;

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
