import "driver_metadata.dart";
import "timetable.dart";
import "notifications.dart";
import "calendar.dart";
import "attendence.dart";

abstract class DriverBase {
  DriverMetadata get driverMetadata;

  TimetableContextBase? getTimetableContext() {
    return null;
  }

  NotificationsContextBase? getNotificationsContext() {
    return null;
  }

  CalendarContextBase? getCalendarContext() {
    return null;
  }

  AttendenceContextBase? getAttendenceContext() {
    return null;
  }
}
