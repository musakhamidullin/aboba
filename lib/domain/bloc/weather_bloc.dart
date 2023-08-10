import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/weather_data.dart';
import '../../data/models/weather_data_forecast.dart';
import '../../data/repository/search_weather_repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

  WeatherBloc({
    required this.searchRepository,
  }) : super(const WeatherState()) {
    on<_FindPlace>(_findPlace);
    on<_OutPutToScreen>(_outPutToScreen);
  }

  final SearchRepository searchRepository;

  Future<void> _findPlace(_FindPlace event, Emitter<WeatherState> emit) async {
    emit(state.copyWith(status: WeatherStatus.loading));
    try {
      final weather = await searchRepository.getWeather(value: event.value);

      emit(state.copyWith(
        status: WeatherStatus.success,
        data: weather,
        name: event.value
      ));

    } catch (e) {
      emit(state.copyWith(status: WeatherStatus.failure));
    }
  }

  Future<void> _outPutToScreen(
      _OutPutToScreen event, Emitter<WeatherState> emit) async {
    emit(state.copyWith(name: event.name, status: WeatherStatus.searching));
  }
}
