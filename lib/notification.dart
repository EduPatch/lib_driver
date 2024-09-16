import "calendar.dart";

enum NotificationType { news, calendar, custom }

class Notification {
  String id;
  NotificationType type;

  Notification({required this.id, required this.type});
}

class CalendarNotification extends Notification {
  String eventId;
  CalendarEvent event;

  CalendarNotification(
      {required super.id,
      required super.type,
      required this.eventId,
      required this.event});
}
