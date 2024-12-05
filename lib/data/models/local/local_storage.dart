import 'package:hive/hive.dart';
import 'package:weather_app/data/models/weather_model.dart';

class LocalStorage {
  final Box _box = Hive.box('weatherBox');

  void saveWeather(WeatherModel weather) {
    _box.put('weather', weather.toMap());
  }

  WeatherModel? getSavedWeather() {
    final data = _box.get('weather');
    if (data != null) {
      return WeatherModel.fromMap(Map<String, dynamic>.from(data));
    }
    return null;
  }
}
