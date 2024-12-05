import 'package:flutter/material.dart';
import '../../data/models/weather_model.dart';

class WeatherDisplay extends StatelessWidget {
  final WeatherModel weather;

  WeatherDisplay({required this.weather});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(weather.cityName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('${weather.temperature} °C', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text(weather.description, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
