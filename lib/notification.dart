abstract class NotificationLink {}

class CalendarLink extends NotificationLink {
  int eventId;
  CalendarLink({required this.eventId});
}

class AttendenceLink extends NotificationLink {
  int eventId;
  AttendenceLink({required this.eventId});
}

class Notification {
  String title;
  String source;
  NotificationLink link;

  Notification({required this.title, required this.source, required this.link});
}
