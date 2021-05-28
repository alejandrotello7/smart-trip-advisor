import 'package:weather/weather.dart';
import 'package:grpc/grpc.dart';

class WeatherService {
  void getCurrentWeatherByLocation() async {
    WeatherFactory wf = new WeatherFactory(
        "b2d425db1ebb6ee833681f63120a15bf"); //Key created directly from Open Weather webpage.
    double lat = 55.0111;
    double lon = 15.0569;
    Weather w = await wf.currentWeatherByLocation(lat, lon);
    Weather f = await wf.currentWeatherByCityName("Dresden");
    print(
        "Current weather in ${w.areaName}, ${w.country} is ${w.temperature.celsius} ");
    print(
        "Current weather in ${f.areaName}, ${f.country} is ${f.temperature.celsius} ");
  }
}


/*
  Future<CurrentWeather> getCurrentWeather(
      grpc.ServiceCall call, Location request) async {
    List<CurrentWeather> currentWeatherList = readDatabaseMock();
    return currentWeatherList.firstWhere((f) => f.location == request,
        orElse: () => CurrentWeather()..location = request);
  }
  */