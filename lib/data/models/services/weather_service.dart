import 'package:http/http.dart' as http;
import 'package:weather_app/data/models/weather_model.dart';
import 'dart:convert';

class WeatherService {
  final String _apiKey = 'c766636192c7ed4db2d1d7946fb3940f';
  final String _baseUrl = 'https://api.openweathermap.org/data/2.5/weather';

  Future<WeatherModel> fetchWeather(String city) async {
    final response = await http
        .get(Uri.parse('$_baseUrl?q=$city&appid=$_apiKey&units=metric'));
    if (response.statusCode == 200) {
      return WeatherModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
