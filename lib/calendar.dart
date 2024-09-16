class CalendarEvent {
  String id;
  String title;
  DateTime begin;
  DateTime end;
  // TODO prob add like description and other metadata

  CalendarEvent(
      {required this.id,
      required this.title,
      required this.begin,
      required this.end});
}
