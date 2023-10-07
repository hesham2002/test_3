import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_3/models/weather_model.dart';

import 'package:test_3/services/weather_service.dart';
part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  WeatherService weatherService=WeatherService(Dio());

  WeatherModel? weatherModel ;

  void getCurrentWeather({required String location}) async {
    emit(WeatherLoading());
    try {
      weatherModel = await weatherService.getCurrentWeather(location: location);
      emit(WeatherSuccess());
    } on Exception catch (e) {
      emit(WeatherFailure());
    }
  }
}
