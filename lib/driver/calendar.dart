abstract class CalendarContextBase {
  Future<List<CalendarEvent>> getCalendarEvents();
}

class CalendarEvent {
  String id;
  DateTime begin;
  DateTime end;
  String title;
  String? description;

  CalendarEvent(
      {required this.id,
      required this.begin,
      required this.end,
      required this.title,
      this.description});
}
