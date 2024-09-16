import "driver_metadata.dart";
import "timetable.dart";
import "notification.dart";
import "calendar.dart";
import "attendence.dart";

export "driver_metadata.dart";
export "timetable.dart";
export "notification.dart";
export "calendar.dart";
export "attendence.dart";

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
