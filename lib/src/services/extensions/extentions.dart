import 'package:smart_trip_advisor/src/generated/activities.pb.dart';
import 'package:smart_trip_advisor/src/generated/planner.pb.dart';

extension ActivityExtenstion on Activity {
  String get printablePrice {
    return this.price == 0 ? "Free" : "€" + this.price.toString();
  }
}

extension CityExtenstion on City {
  Location toLocation() {
    return Location(
      cityName: this.cityName,
      countryName: this.countryName,
    );
  }
}

extension SmartPlanExtension on SmartPlan {
  String get key => "${arguments.cityName}_${DateTime.now()}";
}

extension DateTimeExtension on DateTime {
  String get displayString {
    return "${this.day}/${this.month}/${this.year}";
  }
}

// parses strings produced from DateTimeExtension.displayString
// format: dd/mm/yyyy
DateTime parseDateString(String str) {
  var parts = str.split('/');
  int day = int.parse(parts[0]);
  int month = int.parse(parts[1]);
  int year = int.parse(parts[2]);

  return DateTime(year, month, day);
}
