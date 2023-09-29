import 'package:dio/dio.dart';
import 'package:test_3/models/weather_model.dart';

class WeatherService {
  final Dio dio;
final String baseUrl= 'http://api.weatherapi.com/v1/';
final dynamic apiKey ='880f51eb37a24f2982422355232209';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String location}) async {
    try {
      Response response = await Dio().get(
          '$baseUrl forecast.json?key=$apiKey&q=$location&days=7');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;

    } on DioException catch (e) {
      final String errorMessage = e.response!.data['error']['message'];
      throw Exception(errorMessage);
    }
    catch(e)
    {
      throw Exception(e.toString());
    }
  }
}
