class WeatherModel {
  final String cityName;
  final double temperature;
  final String description;

  WeatherModel(
      {required this.cityName,
      required this.temperature,
      required this.description});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['name'],
      temperature: json['main']['temp'],
      description: json['weather'][0]['description'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cityName': cityName,
      'temperature': temperature,
      'description': description,
    };
  }

  factory WeatherModel.fromMap(Map<String, dynamic> map) {
    return WeatherModel(
      cityName: map['cityName'],
      temperature: map['temperature'],
      description: map['description'],
    );
  }
}
