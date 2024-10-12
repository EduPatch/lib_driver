enum ContextType {
  timetable,
  notifications,
  calendar,
  attendence,
}

class CustomPage {
  String pageName;
  String fullUrl;

  CustomPage({required this.pageName, required this.fullUrl});
}

class DriverMetadata {
  String platformName;
  List<ContextType> supportedFeatures;
  List<CustomPage> customPages;

  DriverMetadata(
      {required this.platformName,
      required this.supportedFeatures,
      this.customPages = const []});
}
