part of 'get_weather_cubit.dart';

@immutable
abstract class GetWeatherState {}


class GetWeatherInitial extends GetWeatherState {}
class GetWeatherSuccsess extends GetWeatherState {
final WeatherModel weatherModel;

  GetWeatherSuccsess(this.weatherModel);

}
class GetWeatherFailure extends GetWeatherState {
  final String errMessage;

  GetWeatherFailure(this.errMessage);
}
