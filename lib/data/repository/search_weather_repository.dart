import 'package:flutter/material.dart';

import '../models/dio_search_api.dart';
import '../models/weather_data.dart';

class SearchRepository {
  Future<WeatherDataModel> getWeather({required String value}) async {

    final request = await DioSearchApi().getPlace<List<dynamic>>(value).onError((error, stackTrace){
      debugPrint(error.toString());
      return;
    });

    if(request == null) throw Exception();

    return request;
  }
}