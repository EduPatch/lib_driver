abstract class TimetableContext {
  Future<Timetable> getTimetable();
}

typedef Minutes = int;

class Timetable {
  Minutes beginMinutes;
  Minutes lengthMinutes;
  List<Lesson> lessons;

  Timetable({required this.beginMinutes, required this.lengthMinutes, required this.lessons});
}

class Lesson {
  Minutes timeMinutes;
  Minutes lengthMinutes;
  int dayIndex;
  String subjectName;
  // TODO add other metadata such as lesson hall, teacher, and subject color info

  Lesson({required this.timeMinutes, required this.lengthMinutes, required this.dayIndex, required this.subjectName});
}
