import 'package:aboba/presentation/screens/weather_details.dart';
import 'package:aboba/presentation/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repository/search_weather_repository.dart';
import '../../domain/bloc/weather_bloc.dart';

class SearchWeatherPage extends StatefulWidget {
  const SearchWeatherPage({super.key});

  @override
  State<SearchWeatherPage> createState() => _SearchWeatherPageState();
}

class _SearchWeatherPageState extends State<SearchWeatherPage> {
  final TextEditingController _textController = TextEditingController();
  late final WeatherBloc _weatherBloc;

  @override
  void initState() {
    super.initState();

    _weatherBloc = WeatherBloc(searchRepository: SearchRepository());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<WeatherBloc, WeatherState>(
      bloc: _weatherBloc,
      listener: (context, state) {
        if (state.status == WeatherStatus.success) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WeatherDetailsScreen(
                  weatherDataModel: state.data,
                ),
              ));
        }

        if (state.status == WeatherStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Error!'),
          ));
        }
      },
      child: Scaffold(
          body: Padding(
        padding: ThemeApp.horizontalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textController,
              onChanged: (value) {},
            ),
            ThemeApp.paddingWidget,
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (_textController.text.isNotEmpty) {
                        _weatherBloc.add(WeatherEvent.findPlace(
                            value: _textController.text));

                        _textController.text == '';
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Error!'),
                        ));
                      }
                    },
                    child: const Text('Поиск')))
          ],
        ),
      )),
    );
  }
}
