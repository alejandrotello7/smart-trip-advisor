class WeatherHelper {
  List<int> weatherCodes;
  List<String> weatherPerBlock = [];
  var firstBlock;
  var secondBlock;
  var thirdBlock;
  var fourthBlock;
  var fifthBlock;

  WeatherHelper(weatherCodes) {
    this.weatherCodes = weatherCodes;
    setWeatherPerBlock();
  }

  void setWeatherPerBlock() {
    this.firstBlock = weatherCodes[2];
    this.secondBlock = weatherCodes[3];
    this.thirdBlock = weatherCodes[4];
    this.fourthBlock = weatherCodes[5];
    this.fifthBlock = weatherCodes[6];
  }
}
