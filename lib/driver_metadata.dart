enum ContextType {
  timetable,
  notifications,
  calendar,
  attendence,
}

class CustomPage {
  String title;
  String fullUrl;

  CustomPage({required this.title, required this.fullUrl});
}

class DriverMetadata {
  String driverName;
  List<ContextType> supportedFeatures;
  List<CustomPage> customPages;

  DriverMetadata(
      {required this.driverName,
      required this.supportedFeatures,
      this.customPages = const []});
}
