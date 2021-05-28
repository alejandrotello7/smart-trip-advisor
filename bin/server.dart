import 'dart:io';
import 'package:grpc/grpc.dart' as grpc;

import 'package:smart_trip_advisor/src/generated/planner.pbgrpc.dart';
import 'package:smart_trip_advisor/src/services/hiveAdapters/city_adapter.dart';
import 'package:smart_trip_advisor/src/services/smart_planner.dart';

import 'package:smart_trip_advisor/src/services/hiveAdapters/activity_adapter.dart';

import 'package:smart_trip_advisor/src/generated/activities.pb.dart';
import 'package:smart_trip_advisor/src/generated/activities.pbgrpc.dart';

import 'package:hive/hive.dart';
import 'services/database/activities_filler.dart';

class Database {
  Database();

  static Future init() async {
    ActivitiesFiller.fillActivities();
  }
}

class ActivitiesService extends ActivitiesServiceBase {
  Stream<Activity> getActivitiesByLocation(
      grpc.ServiceCall call, Location request) async* {
    var activitiesList = await ActivitiesFiller.getActivities(request.cityName);
    if (activitiesList != null) {
      for (var activity in activitiesList) {
        yield activity;
      }
    }
  }

  Stream<City> getCities(grpc.ServiceCall call, Empty request) async* {
    var cityBox = await Hive.openBox("cityBox");
    int cityListLength = cityBox.length;
    for (int i = 0; i < cityListLength; i++) {
      City city = cityBox.getAt(i);
      yield city;
    }
  }
}

class SmartPlannerService extends SmartPlannerServiceBase {
  @override
  Future<SmartPlan> generateSmartPlan(
      grpc.ServiceCall call, SmartPlannerArguments request) async {
    var activitiesList = await ActivitiesFiller.getActivities(request.cityName);
    var smartPlan = await SmartPlanGenerator()
        .generatePlan(arguments: request, activities: activitiesList);
    return smartPlan;
  }
}

Future<void> main(List<String> args) async {
  //Initialize Hive DB
  var path = Directory.current.path;
  Hive..init(path);
  Hive.registerAdapter(ActivityAdapter());
  Hive.registerAdapter(CityAdapter());
  Database.init();

  //Initiliaze server
  final server = grpc.Server([ActivitiesService(), SmartPlannerService()]);
  await server.serve(port: 8080);
  print('Server listening...');
}
