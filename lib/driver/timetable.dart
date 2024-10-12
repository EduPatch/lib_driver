abstract class TimetableContextBase {
  /// `date` should be a type of DateTime that has the time 00:00, and is on the first day of the week (Monday) you want to get the timetable of.
  ///
  /// For example if you want to get the timetable of the week 41 (2024), you would pass the date `Mon Oct 07 2024 00:00:00` as a DateTime
  ///
  /// If you were to pass any other date the driver in question may throw an exeption
  Future<Timetable> getTimetable(DateTime date);
}

typedef Minutes = int;

class Timetable {
  Minutes beginMinutes;
  Minutes lengthMinutes;
  List<Lesson> lessons;

  Timetable(
      {required this.beginMinutes,
      required this.lengthMinutes,
      required this.lessons});
}

enum LessonColour {
  red,
  pink,
  purple,
  deepPurple,
  indigo,
  blue,
  lightBlue,
  cyan,
  teal,
  green,
  lightGreen,
  lime,
  yellow,
  amber,
  orange,
  deepOrange,
  brown,
  grey,
  blueGrey,
}

class Lesson {
  Minutes timeMinutes;
  Minutes lengthMinutes;
  int dayIndex;
  String subjectName;
  String? hallName;
  List<String>? teacherNames;
  LessonColour? lessonColour;

  Lesson(
      {required this.timeMinutes,
      required this.lengthMinutes,
      required this.dayIndex,
      required this.subjectName,
      this.hallName,
	  this.teacherNames,
      this.lessonColour});
}
