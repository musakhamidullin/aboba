import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../data/models/weather_data.dart';

@RoutePage()
class WeatherDetailsScreen extends StatefulWidget {
  const WeatherDetailsScreen({super.key, required this.weatherDataModel});

  final WeatherDataModel? weatherDataModel;

  @override
  State<WeatherDetailsScreen> createState() => _WeatherDetailsScreenState();
}

class _WeatherDetailsScreenState extends State<WeatherDetailsScreen> {
  final _now = DateTime.now();
  late Size _size;

  double _opacity = 0;

  @override
  void initState() {
    super.initState();

    if (mounted) {
      Future.delayed(const Duration(milliseconds: 350)).then((value) {
        setState(() {
          _opacity = 1;
        });
      });
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _size = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.weatherDataModel!.name ?? ''),
      ),
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(milliseconds: 1000),
        child: Center(
          child: SizedBox(
            height: 300,
            width: _size.width - 32,
            child: Card(
                child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text:
                          '${DateFormat.MMMd().format(_now)}, ${DateFormat.Hm().format(_now)}',
                      style: const TextStyle(color: Colors.orange),
                    ),
                    TextSpan(
                      text:
                          '\n${widget.weatherDataModel!.name}, ${widget.weatherDataModel!.sys?.country ?? ''}',
                      style: const TextStyle(fontSize: 32),
                    ),
                  ])),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    '${widget.weatherDataModel!.main?.temp?.toStringAsFixed(0) ?? 0} °C',
                    style: const TextStyle(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Feels like ${widget.weatherDataModel!.main?.feelsLike?.toStringAsFixed(0) ?? 0} °C, ${widget.weatherDataModel!.weather?.first.description}, ${widget.weatherDataModel!.weather?.first.main}',
                      style:
                          const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 1,
                        height: 80,
                        decoration: const BoxDecoration(color: Colors.orange),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      SizedBox(
                        child: Text(
                          'Humidity ${(widget.weatherDataModel!.main?.humidity ?? 0 * 100).toStringAsFixed(0)}%\nPressure ${widget.weatherDataModel!.main?.pressure ?? 0}hPa\nWind speed ${widget.weatherDataModel!.wind?.speed ?? 0}m/s',
                          style: const TextStyle(fontSize: 18, height: 1.5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
