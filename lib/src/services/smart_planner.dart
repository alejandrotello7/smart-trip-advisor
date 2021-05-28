import 'package:smart_trip_advisor/src/generated/activities.pb.dart';

import 'package:smart_trip_advisor/src/generated/planner.pb.dart';
import 'package:meta/meta.dart';
import 'package:weather/weather.dart';
import 'package:intl/intl.dart';
import './smartPlannerObjects/weather_helper.dart';
import 'dart:math';

class SmartPlanGenerator {
  List<Activity> activitiesList = [];
  var budget;
  var childrenCount;
  var adultsCount;
  List<Activity> dayPlanner = [];
  var flag = true;
  Activity temp;
  List<List<Activity>> smartPlannerList = [];

  List<String> interestsList = [];
  var budgetFlag = false;

  Future<SmartPlan> generatePlan(
      {@required SmartPlannerArguments arguments,
      List<Activity> activities}) async {
    activitiesList = activities;
    budget = arguments.budget;
    childrenCount = arguments.childrenCount;
    adultsCount = arguments.adultsCount;
    activities.shuffle();

    for (var interest in arguments.interests) {
      interestsList.add(interest);
    }
    if (!arguments.useWeatherForecast) {
      return generatePlanIgnoreWeather(arguments);
    }

    var smartPlan = SmartPlan();
    List<WeatherHelper> weatherPerDay = await getWeatherPerDay(arguments);
    if (weatherPerDay == null) {
      print("Ignoring Weather");
      return generatePlanIgnoreWeather(arguments);
    }
    // weatherPerDay >= 800 means a clear day , otherwise is a bad weather
    for (int i = 0; i < weatherPerDay.length; i++) {
      temp = activitiesList.removeAt(0);
      if (weatherPerDay[i].firstBlock >= 800) {
        initFilterLoop("outdoors");
      } else {
        initFilterLoop("indoors");
      }
      flag = true;

      temp = activitiesList.removeAt(0);
      if (weatherPerDay[i].secondBlock >= 800) {
        initFilterLoop("outdoors");
      } else {
        initFilterLoop("indoors");
      }
      flag = true;

      temp = activitiesList.removeAt(0);

      if (weatherPerDay[i].thirdBlock >= 800) {
        initFilterLoop("outdoors");
      } else {
        initFilterLoop("indoors");
      }
      flag = true;
      temp = activitiesList.removeAt(0);

      if (weatherPerDay[i].fourthBlock >= 800) {
        initFilterLoop("outdoors");
      } else {
        initFilterLoop("indoors");
      }
      flag = true;
      temp = activitiesList.removeAt(0);

      if (weatherPerDay[i].fifthBlock >= 800) {
        initFilterLoop("outdoors");
      } else {
        initFilterLoop("indoors");
      }
      flag = true;

      smartPlannerList.add(dayPlanner);
      dayPlanner = [];
    }

    for (int i = 0; i < weatherPerDay.length; i++) {
      // print("Day ${i}: ");
      // print("=========");
      for (var activity in smartPlannerList[i]) {
        // print(activity);
        smartPlan.activities.add(activity);
        // print("=========");
      }
    }
    // print("Budget restante ${budget}");
    // // print(weatherPerDay[2].firstBlock);
    // // print(weatherPerDay[2].secondBlock);
    // print("Activities length: ${activitiesList.length}");

    //Assuming activities list is already filter by location

    //Filtering weather
    // if (arguments.useWeatherForecast) {
    //   List<Weather> forecast = await getForecastWeather(arguments.cityName);
    //   for (var weather in forecast) {
    //     print(
    //         "Date: ${weather.date} has a pronosticated temperature of ${weather.temperature.celsius.toInt()}. Condition code: ${weather.weatherConditionCode}");
    //   }
    // }
    return smartPlan;
  }

  SmartPlan generatePlanIgnoreWeather(SmartPlannerArguments arguments) {
    List<String> randomTag = ["outdoors", "indoors"];
    var rng = new Random();
    var smartPlan = SmartPlan();

    for (int i = 0; i < arguments.durationDays; i++) {
      for (int z = 0; z < 5; z++) {
        temp = activitiesList.removeAt(0);
        initFilterLoop(randomTag[rng.nextInt(2)]);
        flag = true;
      }
      smartPlannerList.add(dayPlanner);
      dayPlanner = [];
    }
    for (int i = 0; i < arguments.durationDays; i++) {
      for (var activity in smartPlannerList[i]) {
        smartPlan.activities.add(activity);
      }
    }
    return smartPlan;
  }

  Future<List<WeatherHelper>> getWeatherPerDay(
      SmartPlannerArguments arguments) async {
    final DateTime currentDate = DateTime.now();
    final startDate = DateFormat('d/M/yyy').parse(arguments.startDate);
    final endDate = startDate.add(new Duration(days: arguments.durationDays));
    final diffBetweenStartDate = startDate.difference(currentDate).inDays;
    final diffBetweenEndDate = endDate.difference(currentDate).inDays;

    List<WeatherHelper> weatherPerDay = [];
    List<int> weatherCodes = [];
    if (diffBetweenStartDate > 4 || diffBetweenEndDate > 4) {
      //Generate random weather forecast.
      var rng = new Random();
      for (int x = 0; x < arguments.durationDays; x++) {
        for (int i = 0; i < 8; i++) {
          weatherCodes.add(rng.nextInt(1500));
        }
        weatherPerDay.add(WeatherHelper(weatherCodes));
        weatherCodes.clear();
      }
    } else {
      List<Weather> forecast = await getForecastWeather(arguments.cityName);
      if (forecast.isEmpty) {
        // No forecast available
        return null;
      }

      var tempDate = startDate.day;
      while (tempDate != endDate.day) {
        for (var weather in forecast) {
          if (weather.date.day == tempDate) {
            weatherCodes.add(weather.weatherConditionCode);
          }
        }
        weatherPerDay.add(WeatherHelper(weatherCodes));
        weatherCodes.clear();
        tempDate++;
      }
    }
    return weatherPerDay;
  }

  Future<List<Weather>> getForecastWeather(var cityName) {
    WeatherFactory wf = new WeatherFactory("b2d425db1ebb6ee833681f63120a15bf");
    return wf.fiveDayForecastByCityName(cityName);
  }

  Activity getIndoorOrOutdoor(Activity tempActivity, String tag) {
    Activity matchActivty;
    var tempFlag = true;
    interestsList.shuffle();

    for (var interest in interestsList) {
      for (int i = 0; i < activitiesList.length; i++) {
        if (tempActivity.tags.contains(tag) &&
            tempActivity.tags.contains(interest)) {
          matchActivty = tempActivity;
          tempFlag = false;
        } else {
          activitiesList.add(tempActivity);
          tempActivity = activitiesList.removeAt(0);
        }
      }
      if (!tempFlag) {
        break;
      }
    }

    if (matchActivty == null) {
      while (!tempActivity.tags.contains(tag)) {
        activitiesList.add(tempActivity);
        tempActivity = activitiesList.removeAt(0);
      }
    } else {
      tempActivity = matchActivty;
    }

    return tempActivity;
  }

  double getPricePerActivity(Activity tempActivity) {
    var cost = (childrenCount * tempActivity.price) +
        (adultsCount * tempActivity.price);

    return cost;
  }

  Activity budgetAvailability(Activity tempActivity, var cost) {
    if (cost <= budget) {
      dayPlanner.add(tempActivity);
      budget -= cost;
      budgetFlag = true;
    } else {
      activitiesList.add(tempActivity);
      tempActivity = activitiesList.removeAt(0);
      budgetFlag = false;
    }

    return tempActivity;
  }

  void initFilterLoop(String tag) {
    temp = getIndoorOrOutdoor(temp, tag);
    if (temp.price > 0) {
      while (!budgetFlag) {
        var cost = getPricePerActivity(temp);
        temp = budgetAvailability(temp, cost);
      }
      budgetFlag = false;
    } else {
      dayPlanner.add(temp);
    }
  }
}
