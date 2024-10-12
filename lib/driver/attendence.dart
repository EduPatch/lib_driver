abstract class AttendenceContextBase {
  Future<List<AbsenceEvent>> getAbsenceEvents();
}

class AbsenceEvent {
  String id;
  DateTime date;
  Duration duration;
  bool absenceIsValid;
  String? reason;

  AbsenceEvent({required this.id, required this.date, required this.duration, required this.absenceIsValid, this.reason});
}
