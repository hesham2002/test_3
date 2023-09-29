import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:test_3/models/weather_model.dart';
import '../../services/weather_service.dart';

part 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(GetWeatherInitial());

  getWeather({required String location}) async {
    try {
      WeatherModel weatherModel =
          await WeatherService(Dio()).getCurrentWeather(location: location);
      emit(GetWeatherSuccsess(weatherModel));
    } catch (e) {
      emit(GetWeatherFailure(e.toString()));
    }
  }
}
