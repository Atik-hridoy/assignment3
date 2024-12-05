import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/weather_controller.dart';
import 'widgets/weather_display.dart';

class HomeScreen extends StatelessWidget {
  final WeatherController _controller = Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    final cityController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('Weather App')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: cityController,
              decoration: InputDecoration(
                labelText: 'Enter City Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _controller.fetchWeather(cityController.text);
              },
              child: Text('Fetch Weather'),
            ),
            SizedBox(height: 20),
            Obx(() {
              if (_controller.isLoading.value) {
                return CircularProgressIndicator();
              }
              if (_controller.weather.value == null) {
                return Text('No data available');
              }
              return WeatherDisplay(weather: _controller.weather.value!);
            }),
          ],
        ),
      ),
    );
  }
}
