import "calendar.dart";

abstract class NotificationsContextBase {
  Future<List<Notification>> getNotifications();
}

abstract class Notification {
  String id;
  DateTime sentDate;

  Notification({required this.id, required this.sentDate});
}

class CalendarNotification extends Notification {
  CalendarEvent event;

  CalendarNotification(
      {required super.id, required super.sentDate, required this.event});
}

class NewsNotification extends Notification {
  // TODO complete this when news is implemented

  NewsNotification({required super.id, required super.sentDate});
}
