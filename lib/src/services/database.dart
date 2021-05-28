import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smart_trip_advisor/src/generated/activities.pb.dart';
import 'package:smart_trip_advisor/src/generated/planner.pb.dart';
import 'package:smart_trip_advisor/src/services/extensions/extentions.dart';
import 'package:smart_trip_advisor/src/services/hiveAdapters/plan_adapter.dart';

import 'hiveAdapters/activity_adapter.dart';
import 'hiveAdapters/city_adapter.dart';

class DataBase {
  static const CITIES_BOX_KEY = "cities_box";
  static const ACTIVITIES_BOX_KEY = "activities_box";
  static const PLANS_BOX_KEY = "plans_box";

  static const CITIES_KEY = "cities";

  static init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ActivityAdapter());
    Hive.registerAdapter(CityAdapter());
    Hive.registerAdapter(SmartPlanAdapter());

    await Hive.openBox<List>(CITIES_BOX_KEY);
    await Hive.openBox(ACTIVITIES_BOX_KEY);
    await Hive.openBox(PLANS_BOX_KEY);
  }

  static Box<List> citiesBox() {
    return Hive.box<List>(CITIES_BOX_KEY);
  }

  static Box activitiesBox() {
    return Hive.box(ACTIVITIES_BOX_KEY);
  }

  static ValueListenable plansBoxValueListenable() {
    return Hive.box(PLANS_BOX_KEY).listenable();
  }

  static Future<void> storeCities(List<City> cities) async {
    return citiesBox().put(CITIES_KEY, cities);
  }

  static List<City> loadCities() {
    return citiesBox().get(CITIES_KEY)?.cast<City>();
  }

  static Future<void> storeActivities(
      String cityName, List<Activity> activities) async {
    return store(ACTIVITIES_BOX_KEY, cityName, activities);
  }

  static List<Activity> loadActivities(String cityName) {
    return load(ACTIVITIES_BOX_KEY, cityName)?.cast<Activity>();
  }

  static Future<void> storePlan(SmartPlan plan) async {
    return store(PLANS_BOX_KEY, plan.key, plan);
  }

  static List<SmartPlan> loadPlans() {
    return loadAll(PLANS_BOX_KEY)?.cast<SmartPlan>();
  }

  static Future<void> store<E>(String boxKey, String key, E value) async {
    var box = Hive.box(boxKey);
    return box.put(key, value);
  }

  static E load<E>(String boxKey, String key) {
    var box = Hive.box(boxKey);
    return box.get(key);
  }

  static List<E> loadAll<E>(String boxKey) {
    var box = Hive.box(boxKey);
    return (box.values).toList();
  }

  static clear() async {
    await Hive.deleteFromDisk();
  }

  static close() {
    Hive.close();
  }
}
