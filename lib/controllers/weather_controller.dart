import 'package:get/get.dart';
import 'package:weather_app/data/models/local/local_storage.dart';
import 'package:weather_app/data/models/services/weather_service.dart';
import '../data/models/weather_model.dart';

class WeatherController extends GetxController {
  final WeatherService _service = WeatherService();
  final LocalStorage _storage = LocalStorage();

  Rx<WeatherModel?> weather = Rx<WeatherModel?>(null);
  RxBool isLoading = false.obs;

  void fetchWeather(String city) async {
    isLoading.value = true;
    try {
      final fetchedWeather = await _service.fetchWeather(city);
      weather.value = fetchedWeather;
      _storage.saveWeather(fetchedWeather);
    } catch (e) {
      weather.value = _storage.getSavedWeather();
    } finally {
      isLoading.value = false;
    }
  }
}
