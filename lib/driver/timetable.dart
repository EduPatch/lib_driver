abstract class TimetableContext {
  Future<Timetable> getTimetable();
}

typedef Minutes = int;

class Timetable {
  Minutes begin;
  Minutes length;
  List<Lesson> lessons;

  Timetable({required this.begin, required this.length, required this.lessons});
}

class Lesson {
  Minutes time;
  Minutes length;
  String subjectName;
  // TODO add other metadata such as lesson hall, teacher, and subject color info

  Lesson({required this.time, required this.length, required this.subjectName});
}
