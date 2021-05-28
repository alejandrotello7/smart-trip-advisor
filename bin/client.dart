import 'package:grpc/grpc.dart';
import 'package:smart_trip_advisor/src/generated/activities.pb.dart';
import 'package:smart_trip_advisor/src/generated/activities.pbgrpc.dart';
import 'package:smart_trip_advisor/src/generated/planner.pb.dart';
import 'package:smart_trip_advisor/src/generated/planner.pbgrpc.dart';

ActivitiesServiceClient activitiesStub;
SmartPlannerServiceClient plannerStub;

/** 
 *  selectedCity should be the city that the user selects to retrieve activities
 *  If there is a space between cities like "San Francisco" a "+" should be used
 *  to replace the space e.g. "San+Francisco"
 */
final String selectedCity = "Dresden"; //Change this string to user input
final String selectedCountry = "Germany"; //Change this string to user input

Future<void> main(List<String> args) async {
  /** Boilerplate */
  final channel = ClientChannel('127.0.0.1',
      port: 8080,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure()));

  plannerStub = SmartPlannerServiceClient(channel,
      options: CallOptions(timeout: Duration(seconds: 30)));
  // activitiesStub = ActivitiesServiceClient(channel,
  //     options: CallOptions(timeout: Duration(seconds: 30)));

  /** Tests */
  try {
    //await runGetActivitiesByCity();
    //await runGetCities();
    await runSmartPlan();
  } catch (e) {
    print('Caught error: $e');
  }
  await channel.shutdown();
}

/** Implementation for fetching activities*/
Future<void> runGetActivitiesByCity() async {
  final selectedLocation = Location()
    ..cityName = selectedCity
    ..countryName = selectedCountry;
  print("\n\n\n\n*********************************");
  print("Testing activities fetcher");
  print("*********************************");
  await for (var activity
      in activitiesStub.getActivitiesByLocation(selectedLocation)) {
    print(
        "Activity: ${activity.name} \nDescription: ${activity.description} \nPrice: ${activity.price} \nCity name: ${activity.cityName} \nCountry name: ${activity.countryName}");
    print("===============================");
  }
}

/** Implemention for fetching cities */
Future<void> runGetCities() async {
  print("\n\n\n\n*********************************");
  print("Testing city fetcher");
  print("*********************************");
  var request = Empty();
  await for (var city in activitiesStub.getCities(request)) {
    print(
        "City: ${city.cityName} \nCountry name: ${city.countryName} \nDescription: ${city.description} \nActivity count: ${city.activitiesCount}");
    print("===============================");
  }
}

/** Implementation for SmartPlan */

Future<void> runSmartPlan() async {
  var request = SmartPlannerArguments()
    ..cityName = "Dresden"
    ..countryName = "Germany"
    ..budget = 1480
    ..adultsCount = 2
    ..childrenCount = 2
    ..startDate = "24/02/2021"
    ..durationDays = 3
    ..useWeatherForecast = false
    ..interests.addAll(["walk", "castle", "family"]);

  var smartPlan = await plannerStub.generateSmartPlan(request);
  for (var activity in smartPlan.activities) {
    print(activity);
  }
  print(smartPlan.activities.length);
}
