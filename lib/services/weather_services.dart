import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'b84e1b02bd904506b89205423241904';

  WeatherService({required this.dio});

  Future<WeatherModel?> getCurrentWeather({required String cityName}) async {
    Response response =
        await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');

    if (response.statusCode == 200) {
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    } else {
      final String errorMessage = response.data['error']['message'];
      throw Exception(errorMessage);
    }
  }
}
