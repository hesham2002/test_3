class WeatherModel {
  final String location;
  final dynamic weatherConditionImage ;
  final String weatherCondition;
  final double temperture;
  final String lastUpdateTime;
  final double windSpeed ;
  final dynamic humidity;
  final double maxTemp;
  final double minTemp;

  WeatherModel({
    required this.location,
    required this.weatherCondition,
    required this.temperture,
    required this.lastUpdateTime,
    required this.windSpeed,
    required this.humidity,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherConditionImage,
  });

  factory WeatherModel.fromJson(jsonData) {
    return WeatherModel(
      location: jsonData['location']['name'],
      weatherCondition: jsonData['current']['condition']['text'],
      temperture: jsonData['current']['temp_c'],
      lastUpdateTime: jsonData['current']['last_updated'],
      windSpeed: jsonData['current']['wind_kph'],
      humidity: jsonData['current']['humidity'],
      maxTemp: jsonData['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: jsonData['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherConditionImage: jsonData['forecast']['forecastday'][0]['day']
          ['condition']['icon'],
    );
  }
}
