

import 'package:dio/dio.dart';


import 'weather_data.dart';

class DioSearchApi {
  DioSearchApi() {
    _dio = Dio();
  }
  late final Dio _dio;

  Future<WeatherDataModel?> getPlace<T>(String value) async {
    final response = await _dio.get(
        'https://api.openweathermap.org/data/2.5/weather?q=$value&appid=b0f89ea3da6f0039c5d5b733904697fb&units=metric');

    if (response.statusCode != 200) throw Exception();

    return WeatherDataModel.fromJson(response.data);
  }
}
